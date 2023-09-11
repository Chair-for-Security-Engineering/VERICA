/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: --
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Jan Richter-Brockmann
 *
 * All rights reserved.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Please see license.rtf and README for license and further instructions.
 */

#include "visualization/ConfigurationGraphvizDot.hpp"
#include "util.hpp"

void
ConfigurationGraphvizDot::initialize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state;    // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}  

void
ConfigurationGraphvizDot::execute(const Settings *settings, State *state) {
    /* Export full graph */
    if(settings->getVisualizationFull())
        m_done_full = export_full(state, settings);

    /* Export flaws */
    if(settings->getVisualizationPartial())
        m_done_flaw = export_flaws(state, settings);
}

void
ConfigurationGraphvizDot::finalize(const Settings *settings, State *state) {
}

void
ConfigurationGraphvizDot::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    /* Print header */
    logger->header("VISUALIZATION");

    if(settings->getVerbose() > 0){
        if(m_done_full)
            logger->log(service, this->m_name, "Exported full circuit to dot/circuit_" + m_strategy_name + ".dot.");
        if(m_done_flaw)
            logger->log(service, this->m_name, "Exported subgraph of security flaws to dot/circuit_flaw_" + m_strategy_name + ".dot.");
        if(!m_done_full && !m_done_flaw)
            logger->log(service, this->m_name, "Nothing to export.");
    } 

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);

}

bool ConfigurationGraphvizDot::export_full(State *state, const Settings *settings){
    /* Open dot file */
    std::ofstream dot_file(settings->getVisualizationPath() + "circuit_" + m_strategy_name + ".dot", std::ios_base::out);

    /* Graph */
    std::string graph;

    /* Generating dot representation of the MUT */
    graph += "digraph DUT { \n";

    const verica::Module *mut = state->m_netlist_model->module_under_test();
    graph += "  label=\"" + mut->name() +"\" \n";

    /* Clustering */
    std::vector<const verica::Module*> modules_to_visit = mut->children();
    std::vector<const verica::Module*> gates;
    std::string cluster = clustering(gates, modules_to_visit, 0, 1);
    graph += cluster.substr(0, cluster.size()-2);

    /* Add outputs */
    std::set<const verica::Pin*> n_output;
    for(auto p : mut->output_pins()){
        const verica::Pin* next_pin = get_previous_pin(p->fan_in(), mut);
        if(next_pin->parent_module() == mut){
            graph += "  IN" + std::to_string(next_pin->uid()) + " -> OUT" + std::to_string(p->uid()) + ";\n";
        } else {
            graph += "  " + std::to_string(next_pin->parent_module()->uid()) + " -> OUT" + std::to_string(p->uid()) + ";\n";
        }
        if(p->port_type() == verica::None) n_output.insert(p);
    }

    /* Edges */
    std::set<std::string> n_randomness;
    std::set<const verica::Pin*> n_input;
    add_edges(graph, n_randomness, n_input, gates, mut);

    /* Renaming */
    // Randomness gates
    uint cnt = 0;
    for(auto node : n_randomness){
        graph += "  " + node + " [label=\"R" + std::to_string(cnt) + "\", shape=plain];\n";
        cnt++;
    }

    // Data inputs
    for(auto p : n_input){
        graph += "  IN" + std::to_string(p->uid()) + " [label=\"IN[" + std::to_string(p->share_index()) + "]_" + std::to_string(p->share_domain()) + "_" + std::to_string(p->fault_domain()) + "\"";
        graph += ", shape=plain];\n";
    }

    // Data outputs
    for(auto p : n_output){
        graph += "  OUT" + std::to_string(p->uid()) + " [label=\"OUT[" + std::to_string(p->share_index()) + "]_" + std::to_string(p->share_domain()) + "_" + std::to_string(p->fault_domain()) + "\"";
        graph += ", shape=plain];\n";
    }

    // Gate types
    for(auto node : gates){
        std::string gate_type;
        int uid;
        for(auto elem : state->m_cell_library->gate_types()){
            for(auto ident : elem.second->m_identifier){
                if(ident == node->output_pins()[0]->gate_identifier()){
                    gate_type = elem.first;
                    uid = node->output_pins()[0]->fan_out()->uid();
                }
            }
        }
        graph += "  " + std::to_string(node->uid()) + " [label=\"" + gate_type + "\"];\n";
    }

    // Registers
    for(auto r : gates){
        if(r->is_sequential()){
            graph += "  " + std::to_string(r->uid()) + " [shape=\"box\"];\n";
        }
    }

    /* Verification details */
    graph += "  fault [color=green, fontcolor=green, style=bold];\n";
    graph += "  probe [color=red, fontcolor=red, style=bold];\n";
    highlight_nodes(graph, state->m_visualization_faults, mut, "green");
    highlight_nodes(graph, state->m_visualization_probes, mut, "red");

    /* Finalize */
    graph += "}";
    
    /* Pass graph to dot file */
    dot_file << graph;

    /* Close log file */
    dot_file.close();

    return true;
}

bool ConfigurationGraphvizDot::export_flaws(State *state, const Settings *settings){
    /* Open dot file */
    std::ofstream dot_file(settings->getVisualizationPath() + "circuit_flaw_" + m_strategy_name + ".dot", std::ios_base::out);

    /* Graph */
    std::string graph;

    /* Generating dot representation of the MUT */
    graph += "digraph DUT { \n";

    const verica::Module *mut = state->m_netlist_model->module_under_test();
    graph += "  label=\"" + mut->name() +"\" \n";

    /* Get all gates */
    std::set<const verica::Module*> sub_gates;
    std::set<const verica::Module*> sub_gates_faults;
    std::set<const verica::Module*> sub_gates_probes;

    // Start from fault locations
    for(auto f : state->m_visualization_faults){
        std::vector<const verica::Pin*> next_pins = get_subsequent_pins(f, mut);

        std::vector<const verica::Pin*> to_visit;
        for(auto next_pin : next_pins){
            if(std::find(mut->output_pins().begin(), mut->output_pins().end(), next_pin) == mut->output_pins().end()){
                to_visit.push_back(next_pin);
            }
        }

        while(!to_visit.empty()){
            const verica::Pin* current_pin = to_visit[0];
            to_visit.erase(to_visit.begin());
            sub_gates_faults.insert(current_pin->parent_module());

            for(auto next : current_pin->parent_module()->output_pins()){
                std::vector<const verica::Pin*> new_pins = get_subsequent_pins(next->fan_out(), mut);

                for(auto new_pin : new_pins){
                    if(std::find(mut->output_pins().begin(), mut->output_pins().end(), new_pin) == mut->output_pins().end()){
                        to_visit.push_back(new_pin);
                    }
                }
            }
        }
    }

    // Start from probe locations
    for(auto probe : state->m_visualization_probes){
        const verica::Pin* next_pin = get_previous_pin(probe, mut);

        std::vector<const verica::Pin*> to_visit;
        if(std::find(mut->input_pins().begin(), mut->input_pins().end(), next_pin) == mut->input_pins().end()){
            to_visit.push_back(next_pin);
        }

        while(!to_visit.empty()){
            const verica::Pin* current_pin = to_visit[0];
            to_visit.erase(to_visit.begin());
            sub_gates_probes.insert(current_pin->parent_module());

            for(auto next : current_pin->parent_module()->input_pins()){
                if(!next->is_const()){
                    const verica::Pin* new_pin = get_previous_pin(next->fan_in(), mut);
                    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), new_pin) == mut->input_pins().end()){
                        to_visit.push_back(new_pin);
                    }
                }
            }
        }
    }

    /* Merge probed gates and faulty gates */
    sub_gates = sub_gates_faults;
    sub_gates.insert(sub_gates_probes.begin(), sub_gates_probes.end());

    /* Determine intersection of probed and faulty gates */
    std::vector<const verica::Module*> gates_faults_probes; 
    std::set<const verica::Module*> sub_gates_faults_probes;
    std::set_intersection(sub_gates_faults.begin(), sub_gates_faults.end(), sub_gates_probes.begin(), sub_gates_probes.end(), std::back_inserter(gates_faults_probes));
    sub_gates_faults_probes.insert(gates_faults_probes.begin(), gates_faults_probes.end());

    /* Add nodes */
    for(auto g : sub_gates){
        if(sub_gates_faults_probes.find(g) != sub_gates_faults_probes.end()){
            graph += "  " + std::to_string(g->uid()) + "[color=orange];\n";
        } else if(sub_gates_faults.find(g) != sub_gates_faults.end()){
            graph += "  " + std::to_string(g->uid()) + "[color=green];\n";
        } else if(sub_gates_probes.find(g) != sub_gates_probes.end()){
            graph += "  " + std::to_string(g->uid()) + "[color=red];\n";
        } else {
            graph += "  " + std::to_string(g->uid()) + ";\n";   
        }
    }

    /* Add outputs */
    std::set<const verica::Pin*> n_output;
    for(auto g : sub_gates){
        for(auto output_pin : g->output_pins()){
            std::vector<const verica::Pin*> next_pins = get_subsequent_pins(output_pin->fan_out(), mut);

            for(auto p : next_pins){
                if(std::find(mut->output_pins().begin(), mut->output_pins().end(), p) != mut->output_pins().end()){
                    graph += "  " + std::to_string(output_pin->parent_module()->uid()) + " -> OUT" + std::to_string(p->uid()) + ";\n";
                    if(p->port_type() == verica::None) n_output.insert(p);
                }
            }            
        }
    }

    /* Edges */
    std::set<std::string> n_randomness;
    std::set<const verica::Pin*> n_input;
    std::vector<const verica::Module*> gates(sub_gates.begin(), sub_gates.end());

    std::vector<const verica::Module*> gates_faults = set_diff(sub_gates_faults, sub_gates_faults_probes); 
    std::vector<const verica::Module*> gates_probes = set_diff(sub_gates_probes, sub_gates_faults_probes); 

    add_edges(graph, n_randomness, n_input, gates_faults_probes, mut, "orange");
    add_edges(graph, n_randomness, n_input, gates_faults, mut, "green");
    add_edges(graph, n_randomness, n_input, gates_probes, mut, "red");

    /* Renaming */
    // Randomness gates
    uint cnt = 0;
    for(auto node : n_randomness){
        graph += "  " + node + " [label=\"R" + std::to_string(cnt) + "\", shape=plain];\n";
        cnt++;
    }

    // Data inputs
    for(auto p : n_input){
        graph += "  IN" + std::to_string(p->uid()) + " [label=\"IN[" + std::to_string(p->share_index()) + "]_" + std::to_string(p->share_domain()) + "_" + std::to_string(p->fault_domain()) + "\"";
        graph += ", shape=plain];\n";
    }

    // Data outputs
    for(auto p : n_output){
        graph += "  OUT" + std::to_string(p->uid()) + " [label=\"OUT[" + std::to_string(p->share_index()) + "]_" + std::to_string(p->share_domain()) + "_" + std::to_string(p->fault_domain()) + "\"";
        graph += ", shape=plain];\n";
    }

    // Gate types
    for(auto node : gates){
        std::string gate_type;
        for(auto elem : state->m_cell_library->gate_types()){
            for(auto ident : elem.second->m_identifier){
                if(ident == node->output_pins()[0]->gate_identifier())
                    gate_type = elem.first;
            }
        }
        graph += "  " + std::to_string(node->uid()) + " [label=\"" + gate_type + "\"];\n";
    }

    // Registers
    for(auto r : gates){
        if(r->is_sequential()){
            graph += "  " + std::to_string(r->uid()) + " [shape=\"box\"];\n";
        }
    }

    // Highlight faults and probes
    graph += "  fault [color=green, fontcolor=green, style=bold];\n";
    graph += "  probe [color=red, fontcolor=red, style=bold];\n";
    highlight_nodes(graph, state->m_visualization_faults, mut, "green");
    highlight_nodes(graph, state->m_visualization_probes, mut, "red");

    /* Finalize */
    graph += "}";
    
    /* Pass graph to dot file */
    dot_file << graph;

    /* Close log file */
    dot_file.close();

    return true;
}

std::string ConfigurationGraphvizDot::clustering(std::vector<const verica::Module*> &gates, std::vector<const verica::Module*> modules, unsigned int cluster, unsigned int depth){
    std::string subgraph = "";
    std::map<int, std::set<std::string>> reg;
    for(auto m : modules){
        if(m->gate()){
            subgraph += std::string(depth*2, ' ') + std::to_string(m->uid()) + ";\n";
            gates.push_back(m);
            if(m->is_sequential()) reg[m->output_pins()[0]->fan_out()->stage_index()].insert(std::to_string(m->uid()));
        } else {
            subgraph += std::string(depth*2, ' ') +  "subgraph cluster" + std::to_string(cluster) + " {\n";
            subgraph += std::string((depth+1)*2, ' ') +  "color=black\n";
            subgraph += std::string((depth+1)*2, ' ') +  "label=\"" + m->name() + "\"\n";
            subgraph += clustering(gates, m->children(), cluster++, depth+1);
        }
    }

    for(auto r : reg){
        std::string rank = std::string(depth*2, ' ') + "{rank=same ";        
        for(auto str : r.second){
            rank += str + " ";
        }
        rank += "}\n";
        subgraph += rank;
    }

    subgraph += std::string((depth-1)*2, ' ') + "}\n";

    return subgraph;
}

const verica::Pin* ConfigurationGraphvizDot::get_previous_pin(const verica::Wire* w, const verica::Module* mut){
    const verica::Pin* next_pin = w->source_pin();
    while (!next_pin->parent_module()->gate() && std::find(mut->input_pins().begin(), mut->input_pins().end(), next_pin) == mut->input_pins().end()){
        next_pin = next_pin->fan_in()->source_pin();
    }

    return next_pin;
}

std::vector<const verica::Pin*> ConfigurationGraphvizDot::get_subsequent_pins(const verica::Wire* w, const verica::Module* mut){
    // check if wire is connected to subsequent combinatorial logic
    // if not, return empty vector
    const verica::Pin* next_pin;
    if(w->target_pins().size() == 0){
        std::vector<const verica::Pin*> temp;
        return temp;
    } else {
        next_pin = w->target_pins()[0];
    }

    while (!next_pin->parent_module()->gate() && std::find(mut->output_pins().begin(), mut->output_pins().end(), next_pin) == mut->output_pins().end()){
        next_pin = next_pin->fan_out()->target_pins()[0];
    }

    return next_pin->fan_in()->target_pins();
}

void ConfigurationGraphvizDot::add_edges(std::string &graph, std::set<std::string> &n_randomness, std::set<const verica::Pin*> &n_input, std::vector<const verica::Module*> &gates, const verica::Module* mut, std::string color){
    std::string align_inputs = "  {rank=same ";
    for(auto g : gates){
        for(auto p : g->input_pins()){
            if(!p->is_const()){
                const verica::Pin* next_pin = p->fan_in()->source_pin();
                while(!next_pin->parent_module()->gate() && std::find(mut->input_pins().begin(), mut->input_pins().end(), next_pin) == mut->input_pins().end()){
                    next_pin = next_pin->fan_in()->source_pin();
                }
                if(std::find(mut->input_pins().begin(), mut->input_pins().end(), next_pin) != mut->input_pins().end()){
                    std::string new_input = "IN" + std::to_string(next_pin->uid()); 
                    graph += "  " + new_input + " -> " + std::to_string(g->uid()) + " [color=" + color +"];\n";
                    align_inputs += new_input + " ";

                    // Identify annotated inputs
                    if(next_pin->port_type() == verica::Refresh) n_randomness.insert(new_input);
                    if(next_pin->port_type() == verica::None) n_input.insert(next_pin);
                } else {
                    graph += "  " + std::to_string(next_pin->parent_module()->uid()) + " -> " + std::to_string(g->uid()) + " [color=" + color +"];\n";
                }
            }
        }
    }
    align_inputs += "};\n";
    graph += align_inputs;
}

void ConfigurationGraphvizDot::highlight_nodes(std::string &graph, std::vector<const verica::Wire*> &wires, const verica::Module *mut, std::string color){
    for(auto w : wires){
        const verica::Pin* next_pin = get_previous_pin(w, mut);

        std::string name;
        if(std::find(mut->input_pins().begin(), mut->input_pins().end(), next_pin) != mut->input_pins().end()){
            graph += "  IN" + std::to_string(next_pin->uid()) + " [color="+ color + ", fontcolor=" + color + ", style=\"bold\"];\n";
        } else {
            graph += "  " + std::to_string(next_pin->parent_module()->uid()) + " [color="+ color + ", fontcolor=" + color + ", style=\"bold\"];\n";
        }
    }
}
