# VERICA - Verification of Combined Attacks


This repository contains the source code for the paper [*VERICA - Verification of Combined Attacks Automated formal verification of security against simultaneous information leakage and tampering*](https://eprint.iacr.org/2022/484.pdf). Additionally, we extended the functionalities of VERICA with respect to combined composability notions in [*CINI MINIS: Domain Isolation for Fault and Combined Security*](https://eprint.iacr.org/2022/1131.pdf) which we revisited in [*Combined Private Circuits - Combined Security Refurbished*](https://eprint.iacr.org/2023/1341.pdf) due to some flaws in the gadgets and verification strategy.


## 1. Features

VERICA is a framework written in `C++` to formally verify given digital logic circuits (as Verilog netlist or as instruction list) for their resistance against side-channel attacks, fault-injection attacks, and combined attacks.


## 2. Contact and Support

Please contact Jan Richter-Brockmann (jan.richter-brockmann@rub.de) or Pascal Sasdrich (pascal.sasdrich@rub.de) if you have any questions, comments, if you found a bug that should be corrected, or if you want to reuse the framework or parts of it for your own research projects. 


## 3. Build Instructions

VERICA can be build and used in two different ways. The first option intends to build VERICA directly from the sources and execute the binaries. The second option uses Docker to build VERICA. The instructions to use Docker can be found at the end of this file (see [Docker](#containerize-verica-using-docker)).

To build VERICA directly from the sources and execute the binaries, please follow the instructions below:

1. Download the source code of VERICA. 
2. Download and unpack the [Boost Graph Library (BGL)](https://www.boost.org/doc/libs/1_77_0/more/getting_started/unix-variants.html) library.
3. `cd boost_X_XX_X`
4. `./bootstrap.sh --prefix=/path/to/VERICA --with-libraries=program_options`
5. `./b2 install`
6. Download and unpack the [CUDD](https://davidkebo.com/source/cudd_versions/cudd-3.0.0.tar.gz) library.
7. `cd cudd-3.0.0/`
8. `./configure --prefix=/path/to/VERICA --enable-shared --enable-obj`
9. `make check`
10. `make install`
11. Change directory to the VERICA folder. 
12. If necessary, update the `INCLUDES` variable in the VERICA makefile with the path to your copy of BGL (i.e., `/path/to/VERICA/include/` as selected as prefix in step 4).
13. `make release`


## 4. Quick Start

After VERICA was successfully build, it can be executed by `bin/release/verica -c config/verica.json`. The configuration file (i.e., `config/verica.json`) can be adapted according to [Section 4.1](#41-configure-verica). Executing VERICA with the configuration file `config/verica-example.json`, should result in the output given in [Section 4.2](#42-expected-output).

### 4.1 Configure VERICA

VERICA can easily be configured via a configuration file written in json. In the following, we briefly describe possible settings and their functionalities. 

Parent              | Parameter                     | Allowed Parameter                             | Description
--------------------|-------------------------------|-----------------------------------------------|----------------------
`general`           | `verbose`                     | 0,1,2,3                                       | Verbosity level.
--                  | `cores`                       | 0-X                                           | Number of cores that should be used by VERICA. Settings `cores` to zero, automatically selects the  maximum available cores        
--                  | `memory`                      | positive integer                              | Memory used by each core in GB.
--                  | `netlist/file`                | Valid path                                    | Path to the Verilog description of the circuit under test.
--                  | `netlist/name`                | --                                            | Not supported yet.
--                  | `netlist/module`              | --                                            | Not supported yet.
--                  | `library/file`                | `cell/Instructions.txt`, `cell/nang45.txt`    | Description of supported gate types. Use `Instructions.txt` to process `.nl` files, and `nang45.txt` to process Verilog gate level netlists.
--                  | `library/name`                | String                                        | Name of the cell. If using `Instructions.txt` set it to `NL`, if using `nang45.txt` set it to `NANG45`.
--                  | `filtering/sca/type`          | `none`, `white`, `black`                      | Type of filtering that should be applied to the SCA verification.
--                  | `filtering/sca/whitelist`     | Valid path                                    | Path to file containing modules that should be whitelisted for the SCA verification.
--                  | `filtering/sca/blacklist`     | Valid path                                    | Path to file containing modules that should be blacklisted for the SCA verification.
--                  | `filtering/fia/type`          | `none`, `white`, `black`                      | Type of filtering that should be applied to the FIA verification.
--                  | `filtering/fia/whitelist`     | Valid path                                    | Path to file containing modules that should be whitelisted for the FIA verification.
--                  | `filtering/fia/blacklist`     | Valid path                                    | Path to file containing modules that should be blacklisted for the FIA verification.
--                  | `annotation/file`             | Valid path                                    | Path to a json file containing possible annotations for inputs and outputs. This is mandatory for shared implementations (share domain and share index need to be set).
--                  | `annotation/apply`            | `true`, `false`                               | Indicates if the annotations should be parsed and applied or not.
--                  | `cudd/reordering`             | `true`, `false`                               | Enables a dynamic reordering of BDDs supported by the CUDD library. In most cases, VERICA is faster with disabled dynamic reordering.
`side-channel`      | `enable`                      | `true`, `false`                               | Enables/disables side-channel verification.
--                  | `configuration/order`         | 0-X                                           | Determines the security order that should be analyzed. If the order is set to 0, VERICA automatically determines the highest possible security order.
--                  | `configuration/variate`       | 0-X                                           | Select between univariate (1) or multivariate analyses (2-X). (0) creates all probe combinations between all logic stages.
--                  | `configuration/masking`       | 0, 1                                          | Select between Boolean masking (0) and arithmetic masking (1, not tested yet).
--                  | `configuration/interrupt`     | `true`, `false`                               | Interrupts the side-channel verification process in case a security flaw is detected (use with caution - not tested yet). Not fully implemented yet!
--                  | `model/glitches`              | `true`, `false`                               | Use the glitch-extended $d$-probing model.
--                  | `model/transitions`           | `true`, `false`                               | Not supported yet!
--                  | `model/couplings`             | `true`, `false`                               | Not supported yet!
--                  | `analysis/uniformity`         | `true`, `false`                               | Check uniformity of the circuit under test.
--                  | `analysis/probing`            | `true`, `false`                               | Enables/disables verification in the $d$-probing model.
--                  | `analysis/p-ni`               | `true`, `false`                               | Enables/disables the verification of the P-NI-property.
--                  | `analysis/p-sni`              | `true`, `false`                               | Enables/disables the verification of the P-SNI-property.
--                  | `analysis/pini`               | `true`, `false`                               | Enables/disables the verification of the PINI-property.
`fault-injection`   | `enable`                      | `true`, `false`                               | Enables/disables fault-injection verification. 
--                  | `configuration/number`        | positive integer                              | Maximum number of simultaneous injected faults.
--                  | `configuration/variate`       | 0-X                                           | Select between univariate (1) or multivariate (2-X), or consider all gates from all stages (0)
--                  | `configuration/interrupt`     | `true`, `false`                               | Interrupts the fault-injection verification process in case a security flaw is detected (use with caution - not tested yet). 
--                  | `model/mapping`               | Valid path                                    | Path to the fault mapping describing the fault type $t$ from $\zeta(f,t,l)$.
--                  | `model/location`              | `c`, `s`, `cs`                                | Location parameter for fault injection. Only combinational gates (`c`), only sequential (memory) gates (`s`), both gate types (`cs`).
--                  | `analysis/reduced_complexity` | `true`, `false`                               | Applies a complexity reduction originally proposed with FIVER.
--                  | `analysis/strategy`           | `detection`, `correction`, `sifa`, `sfa`      | Defines the analysis strategy applied to a faulted circuit.
--                  | `analysis/logic-level-error-flag` | `true`, `false`                           | Indicates weather an error is indicated by a high logic level `true` or low logic level `false`.
--                  | `analysis/f-ni`               | `true`, `false`                               | Enables/disables the verification of the F-NI-property. If enabled, input faults are considered as well.
--                  | `analysis/f-sni`              | `true`, `false`                               | Enables/disables the verification of the F-SNI-property. If enabled, input faults are considered as well.
--                  | `analysis/fini`               | `true`, `false`                               | Enables/disables the verification of the FINI-property. If enabled, input faults are considered as well.
`combined`          | `enable`                      | `true`, `false`                               | Enables/disables combined analysis.
--                  | `analysis/c-ni`               | `true`, `false`                               | Enables/disables the verification of the C-NI-property.
--                  | `analysis/c-sni`              | `true`, `false`                               | Enables/disables the verification of the C-SNI-property.
--                  | `analysis/ic-sni`             | `true`, `false`                               | Enables/disables the verification of the IC-SNI-property.
--                  | `analysis/cini`               | `true`, `false`                               | Enables/disables the verification of the CINI-property.
--                  | `analysis/icini`              | `true`, `false`                               | Enables/disables the verification of the ICINI-property.


### 4.2 Expected Output

If VERICA is executed with the exemplary configuration file `config/verica_example.json`, the output should be the same as stated below. First, the cell library parser (contains the behavioral descriptions of allowed logic gates) and the design parser (Verilog, FIRRTL, and *.nl files are supported) are executed. The design under test is a (1,1)-SNINA gadget presented in [[DN19]](https://eprint.iacr.org/2019/615.pdf). Second, several preprocessing steps are performed ranging from parsing annotations, a model postprocessing, and FIA and SCA related preprocessing. The annotation parsing is used to inform VERICA which inputs are control signals, clock signals, refresh gates, and error flags. Additionally, the annotation file is used to provide information about share domains and share indices, and about primary input identifier. The last ones are used to identify inputs that carry the same signals, e.g., for duplication based countermeasures. Third, VERICA invokes the analyzer which is the CSNI analyzer in the given example. Based on the given side-channel order and the number of faults in the configuration file, VERICA analyzes the design under test and reports if the security is achieved by the design. Eventually, a visualizer is invoked which generates two files `dot/circuit.dot` and `dot/circuit_flaw.dot`. This files contain a dot graph descriptions of the design under test where the first file contains the entire circuit and the second only an extract with detected flaws (if there are any).

```
----------------------------------------------------------------------------------------------------
                             VERICA -- VERIFICATION OF COMBINED ATTACKS                             

                      Ruhr-Universität Bochum, Chair for Security Engineering                      
                        Jan Richter-Brockmann (jan.richter-brockmann@rub.de),                       
                              Pascal Sasdrich (pascal.sasdrich@rub.de)                              

                                         Copyright (c) 2022,                                        
                                       Jan Richter-Brockmann,                                       
                                           Pascal Sasdrich                                          

                                        All rights reserved.                                        
----------------------------------------------------------------------------------------------------


  TIME [s]    SERVICE          CONFIGURATION         INFO: CELL LIBRARY
----------------------------------------------------------------------------------------------------
     0.001    PARSER           CELLLIB               source: cell/nang45.txt
     0.001    PARSER           CELLLIB               Parsed cell library with 14 gate type(s). 
----------------------------------------------------------------------------------------------------
     0.001    PARSER           CELLLIB               SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: DESIGN UNDER TEST
----------------------------------------------------------------------------------------------------
     0.077    PARSER           VERILOG               source: test/cini-insecure/hpc1/cini_d2_k1.v
     0.077    PARSER           VERILOG                  module(s) : 1
     0.077    PARSER           VERILOG                  gate(s)   : 243
     0.077    PARSER           VERILOG                   - comb.  : 189
     0.077    PARSER           VERILOG                   - seq.   : 54
     0.077    PARSER           VERILOG                  wire(s)   : 270
     0.077    PARSER           VERILOG                  pin(s)    : 822
     0.077    PARSER           VERILOG               WARNING: detected 57 unconnected pins!
----------------------------------------------------------------------------------------------------
     0.077    PARSER           VERILOG               SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: ANNOTATIONS
----------------------------------------------------------------------------------------------------
     0.082    PREPROCESSOR     ANNOTATION            3 input wires were tagged as clock input.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 2 wires could not be tagged as clock input in the MUT.
     0.082    PREPROCESSOR     ANNOTATION            0 input wires were tagged as control inputs.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 6 wires could not be tagged as control input in the MUT.
     0.082    PREPROCESSOR     ANNOTATION            6 input wires were tagged as refresh inputs.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 6 wires could not be tagged as refresh input in the MUT.
     0.082    PREPROCESSOR     ANNOTATION            0 output wires were tagged as error flags.
     0.082    PREPROCESSOR     ANNOTATION            18 input wires were tagged with PIIDs.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 38 wires could not be identified in the MUT.
     0.082    PREPROCESSOR     ANNOTATION            27 wires were tagged with a share domain.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 85 wires could not be identified in the MUT.
     0.082    PREPROCESSOR     ANNOTATION            27 wires were tagged with a share index.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 57 wires could not be identified in the MUT.
     0.082    PREPROCESSOR     ANNOTATION            27 wires were tagged with a fault domain.
     0.082    PREPROCESSOR     ANNOTATION            WARNING: 85 wires could not be identified in the MUT.
----------------------------------------------------------------------------------------------------
     0.082    PREPROCESSOR     ANNOTATION            SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: FILTERING
----------------------------------------------------------------------------------------------------
     0.082    PREPROCESSOR     FILTERING             Filtering for side-channel verification is disabled!
     0.082    PREPROCESSOR     FILTERING             Filtering for fault-injection verification is disabled!
----------------------------------------------------------------------------------------------------
     0.082    PREPROCESSOR     FILTERING             SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO
----------------------------------------------------------------------------------------------------
     0.138    PREPROCESSOR     MULTI-THREADING       cores: 2
     0.138    PREPROCESSOR     MULTI-THREADING       memory: 16 GB
----------------------------------------------------------------------------------------------------
     0.138    PREPROCESSOR     MULTI-THREADING       SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: MODEL POSTPROCESSING
----------------------------------------------------------------------------------------------------
     0.139    PREPROCESSOR     MODEL POSTPROCESSING  Removed clock tree from netlist (3 wires were removed).
     0.139    PREPROCESSOR     MODEL POSTPROCESSING  No control signals were found.
     0.139    PREPROCESSOR     MODEL POSTPROCESSING  Removed 57 unconnected pins.
     0.139    PREPROCESSOR     MODEL POSTPROCESSING  Removed 0 unconnected wires.
----------------------------------------------------------------------------------------------------
     0.139    PREPROCESSOR     MODEL POSTPROCESSING  SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO
----------------------------------------------------------------------------------------------------
     0.142    PREPROCESSOR     ELABORATE             stage(s): 
     0.142    PREPROCESSOR     ELABORATE                logic    : 3
     0.142    PREPROCESSOR     ELABORATE                register : 2
----------------------------------------------------------------------------------------------------
     0.142    PREPROCESSOR     ELABORATE             SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: Configure FIA
----------------------------------------------------------------------------------------------------
     0.142    PREPROCESSOR     FIA                   Identified 267 gates as target gates for fault injection.
     0.142    PREPROCESSOR     FIA                   Applied parameters:
     0.142    PREPROCESSOR     FIA                      number:          1
     0.142    PREPROCESSOR     FIA                      variate:         1
     0.142    PREPROCESSOR     FIA                      fault mapping:   model/setreset.txt
     0.142    PREPROCESSOR     FIA                      location:        cs
     0.142    PREPROCESSOR     FIA                      strategy:        correction
     0.142    PREPROCESSOR     FIA                      logic-level:     low
     0.142    PREPROCESSOR     FIA                      FNI:             false
     0.142    PREPROCESSOR     FIA                      FSNI:            false
     0.142    PREPROCESSOR     FIA                      FINI:            false
----------------------------------------------------------------------------------------------------
     0.142    PREPROCESSOR     FIA                   SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: Configure SCA
----------------------------------------------------------------------------------------------------
     0.147    PREPROCESSOR     SCA                   Disabled auto-dynamic reordering for BDDs.
     0.147    PREPROCESSOR     SCA                   Determined 2 shared inputs.
     0.147    PREPROCESSOR     SCA                      Minimum number of shares: 3
     0.147    PREPROCESSOR     SCA                   Determined 87 probe positions.
     0.147    PREPROCESSOR     SCA                   Determined 3828 probe combinations.
     0.147    PREPROCESSOR     SCA                   Determined 0 combinations of abort signals.
----------------------------------------------------------------------------------------------------
     0.147    PREPROCESSOR     SCA                   SUCCESS
 

  TIME [s]    SERVICE          CONFIGURATION         INFO: ANALYSIS REPORT
----------------------------------------------------------------------------------------------------
     0.828    ANALYZER         CINI                  model parameters:
     0.828    ANALYZER         CINI                     glitches    : yes
     0.829    ANALYZER         CINI                     transitions : no
     0.829    ANALYZER         CINI                     couplings   : no
     0.829    ANALYZER         CINI                  verification:
     0.829    ANALYZER         CINI                     targeted : (2, 0) security
     0.829    ANALYZER         CINI                     verified : side-channel security
     0.829    ANALYZER         CINI                     verified : fault-injection security
----------------------------------------------------------------------------------------------------
     0.829    ANALYZER         CINI                  SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO: EVALUATION (n=1)
----------------------------------------------------------------------------------------------------
     0.829    INJECTOR                               Found 3 valid stages to inject faults.
     0.829    INJECTOR                               Got a new batch of permuted fault locations with 177 entries. I am going to analyze it...
     2.811    INJECTOR                               Got a new batch of permuted fault locations with 72 entries. I am going to analyze it...
     3.403    INJECTOR                               Got a new batch of permuted fault locations with 18 entries. I am going to analyze it...
----------------------------------------------------------------------------------------------------
     3.567    INJECTOR                               


  TIME [s]    SERVICE          CONFIGURATION         INFO: ANALYSIS REPORT
----------------------------------------------------------------------------------------------------
     3.567    ANALYZER         CINI                  model parameters:
     3.567    ANALYZER         CINI                     glitches    : yes
     3.567    ANALYZER         CINI                     transitions : no
     3.567    ANALYZER         CINI                     couplings   : no
     3.567    ANALYZER         CINI                  verification:
     3.567    ANALYZER         CINI                     targeted : (1, 1) security
     3.567    ANALYZER         CINI                     failed   : side-channel security
     3.567    ANALYZER         CINI                     verified : fault-injection security
----------------------------------------------------------------------------------------------------
     3.567    ANALYZER         CINI                  FAILURE


  TIME [s]    SERVICE          CONFIGURATION         INFO: ANALYSIS REPORT CINI
----------------------------------------------------------------------------------------------------
     3.567    ANALYZER         CINI                  verification:
     3.567    ANALYZER         CINI                     targeted : (2, 1)-CINI
----------------------------------------------------------------------------------------------------
     3.567    ANALYZER         CINI                  FAILURE


  TIME [s]    SERVICE          CONFIGURATION         INFO: VISUALIZATION
----------------------------------------------------------------------------------------------------
     3.568    VISUALIZER       GRAPHVIZ (DOT)        Exported full circuit to dot/circuit_cini.dot.
     3.568    VISUALIZER       GRAPHVIZ (DOT)        Exported subgraph of security flaws to dot/circuit_flaw_cini.dot.
----------------------------------------------------------------------------------------------------
     3.568    VISUALIZER       GRAPHVIZ (DOT)        SUCCESS


  TIME [s]    SERVICE          CONFIGURATION         INFO
----------------------------------------------------------------------------------------------------
     3.568    VERICA           COMBINED              DONE!
```

## Architecture

The main file `verica.cpp` of VERICA only creates an object `Environment` which handles the entire verification. An environment object consists of a settings object, a state object, and a logger. The `settings` object parses at the time of construction the forwarded `config`-file and stores all settings while providing corresponding access functions. The `state` object is used to store global variables and data (e.g., the netlist model, information about the SCA and FIA verification, etc.). The logger is used to create consistent outputs throughout the entire preprocessing and verification.

Besides these basic objects, VERICA creates five additional "configuration" objects: `parser`, `preprocessor`, `injector`, `analyzer`, `visualizer`. The `parser` object reads the cell library and accepts parsing strategies that are able to parse `FIRRTL`, `VERILOG`, and `NETLIST` files. The `FIRRTL` and `VERILOG` parser utilize the BOOST library. Independent of the netlist format, VERICA generates a model of the circuit under test which is stored in a `netlist` object. Each netlist model consists of `modules`, `wires`, and `pins`. The final circuit model is stored in the `state` object.

The `preprocessor` object takes care of many different steps. First, the `annotation.json` file is loaded and parsed. The parsed information are added to the netlist model. Second, a `filtering` strategy is loaded to the preprocessor which applies the black- and whitelists to the model. Third, a `multi-threading` object is loaded which prepares the framework for parallel executions of the verification. Fourth, a `model-postprocessing` is applied which has several tasks. The first task ist to remove all clock and control networks from the netlist model. Afterwards, unconnected pins and wires are removed. Eventually, all wires from the netlist model are sorted in a topological order. Fifth, VERICA loads an `elaborate` strategy into the preprocessor. Based on the netlist model, all BDDs are created and additional information for the SCA verification is generated. Sixth, a `FIA` preprocessor is loaded which performs important configurations required for the FIA verification, i.e., determining fault mappings, fault locations, propagation paths, and preparing the framework for FIA related multi-threading tasks. Seventh, a `SCA` strategy is loaded into the preprocessor which determines all valid probe combinations for the SCA verification.

Based on the configuration file, different SCA and FIA analysis strategies are loaded and executed. All available strategies are implemented in the `analyzer/` folder. `ConfigurationComposability` implements the verification of all SCA related composability notions. `ConfigurationCorrection` and `configurationDetection` handle the verification of countermeasures against fault attacks and are able to verify FIA composability notions for correction and detection based countermeasures, respectively. `ConfigurationSIFA` is applied in case a design should be checked for the resistance against SIFA-based attacks. `ConfigurationProbing` is used to verify probing security while `ConfigurationUniformity` verifies the uniformity of the design under test.

Eventually, VERICA supports the visualization as a `.dot`-graph of the design under test. It is possible to create a graph for the entire netlist model or only for the part that is involved in security violations. Additionally, leaking probes and effective faults (if occur) are highlighted in the graph which should assist the designer to fix flawed parts. 
 
## Synopsis Design Compiler

Most of the examples in the repository are generated with Synopsis Design Compiler using the standard cell library NANG45. The following commands should be used for the synthesis script in order to generate a Verilog gate-level netlist that can be processed by VERICA.

```
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
```

Additionally, you can use the flowing commands to force the synthesizer to compile, keep the hierarchy and make a flattened netlist of the design.

```
compile -map_effort medium -area_effort medium
compile_ultra -no_autoungroup
ungroup -all -flatten
```

## Troubleshooting

Here are some common issues you may encounter during execution along with possible fixes.

### Shared libraries (libcudd-3.0.0.so)

In case you get an error message similar to: 

```
./bin/release/verica: error while loading shared libraries: libcudd-3.0.0.so.0: cannot open shared object file: No such file or directory
```

please export the `/lib` directory to your linker library path, e.g., using 
```
export LD_LIBRARY_PATH=`pwd`/lib
```
before executing the binary.

## Licensing

Copyright (c) 2022, Jan Richter-Brockmann and Pascal Sasdrich.
All rights reserved.

Please see `LICENSE` for further license instructions.

## Publications

1. J. Richter-Brockmann, J. Feldtkeller, P. Sasdrich, T. Güneysu (2022): [VERICA - Verification of Combined Attacks Automated formal verification of security against simultaneous information leakage and tampering](https://eprint.iacr.org/2022/484.pdf). CHES 2022
2. J. Feldtkeller, J. Richter-Brockmann, P. Sasdrich, T. Güneysu (2022): [CINI MINIS: Domain Isolation for Fault and Combined Security](https://eprint.iacr.org/2022/1131.pdf). CCS 2022
3. J. Feldtkeller, T. Güneysu, T. Moos, J. Richter-Brockmann, S. Saha, P. Sasdrich, F.-X. Standaert (2023): [Combined Private Circuits - Combined Security Refurbished](https://eprint.iacr.org/2023/1341.pdf). CCS 2023

### Reproduce results of the case studies

In order to reproduce the results of the case studies from the papers, we prepared a dedicated folder `case-studies/` which contains all configuration files that were used to generate the evaluation results. Additionally, we provide the log files of the experiments containing the numbers reported in the paper's tables. 


## Acknowledgment

We would like to thank the anonymous reviewers from the CHES'22 artifact submission committee that provided us with useful comments and suggestions to improve our framework and the instructions to run VERICA.

Additionally, we would like to thank Siemen Dhooghe, who pointed us to a bug in the combined composability verifications for detection-based countermeasures. 

\\

# Appendix

## Containerize VERICA using Docker

The repository contains a Dockerfile, which gives developers and users the possibility to build Docker images for VERICA. Using Docker images, the application can be executed in containers, which provide a minimalist environment containing all necessary dependencies for VERICA.

This instruction gives an overview on how to use Docker to deploy and run the application.

Note that you need a current Docker installation and appropriate rights on the host machine to run the following commands. Tutorials on how to set up Docker can be found here:

* [Windows (Docker Desktop)](https://docs.docker.com/desktop/windows/install/)
* [macOS (Docker Desktop)](https://docs.docker.com/desktop/mac/install/)
* [Ubuntu (Docker Engine)](https://docs.docker.com/engine/install/ubuntu/)
* [Debian (Docker Engine)](https://docs.docker.com/engine/install/debian/)

### Building the Docker image

Starting from the local directory containing the VERICA repository, run the following command to build the Docker image:

`docker build -t verica .`

Alternatively, [Docker Compose](https://docs.docker.com/compose/) can be used to build the image:

`docker-compose build`

Both commands build a Docker image from the release version of VERICA using the Makefile. After the building process has successfully finished, the image will be labeled as _verica:latest_.

### Running the container

After the Docker image has been successfully built, run the following command to execute the application in a container:

`docker run verica`

### Sharing data between the host and containers

Depending on the use case, it may be useful to exchange files between the host system and containers.\
The following commands show how to use volumes and mount binds as data exchange mechanisms. 

#### Use volumes as persistent memory

Volumes allow the user to store files in a persistent memory. Additionally, volumes can be shared between multiple containers.\
One possible use case for VERICA is to store output files, such as logs, in a volume. Using a volume, these output files will not be deleted after the execution of the application is finished.

To create a new volume, run the following command:

`docker volume create VericaOut`

This command creates a new container named _VericaOut_ on the host machine.

To use the volume in a container, use the following command to run the container:

`docker run -v VericaOut:/usr/src/verica/log verica`

After that, the volume _VericaOut_ is mounted into the directory _/usr/src/verica/log_ of the container. This directory can then internally be used to create log files which persist even after the container stops running.

#### Use mount binds to use files from the host machine 

Mount binds allow the user to bind directories on the host machine into the container.\
One possible use case for VERICA is to use configuration and netlist files, which we want to be dynamically adjustable and independent from the container image.

To use mount binds, use the following command to run the container:

`docker run -v ${PWD}/config:/usr/src/verica/config verica`

This command mounts the subfolder _/config_ of the current working directory of the host machine into the directory _/user/src/verica/config_ of the container. In this example, the configuration files for the application are obtained from the directory of the host machine instead of the directory which is built from the image. This makes it possible to change the configuration of VERICA without the need to built a whole new image.

Note that this command is very similar to the previous command. However, no previously created volumes are used here. The configuration file can be adapted according to [Section 4.1](#41-configure-verica). 

### Additional notes

The Dockerfile is configured to use _/config/docker.json_ as configuration file for VERICA. As a consequence, only adjustments in this file have an effect on VERICA when using Docker.

Due to the large size of the boost library, a VERICA image takes about 1.36 GB hard disk space on the host machine.

The Dockerfile builds the **release** version of verica. For other versions, adjustments in the Dockerfile must be made.

The following shared object files must be present in the _/lib_ folder in order to link the dependencies of the VERICA executable:

* libcudd-3.0.0.so
* libcudd.so
* libboost_program_options.so.1.71.0
* libboost_unit_test_framework.so.1.75.0 (only for the test version)

To speed up the building process, replace the line `RUN make release` in the Dockerfile with `RUN make release -j`\
**Note that this can make the building process of the Docker image unstable!**