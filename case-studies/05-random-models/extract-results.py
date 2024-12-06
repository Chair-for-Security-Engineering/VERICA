#!/usr/bin/env python3

import os
import json
import sys
import numpy as np
import math

verbose = 0                         # 0, 1, 2

source_dir = "domrep-II-correction/bitflip"          



def log(verbose, level, message, param=[]):
    if(verbose >= level):
        print(message.format(param))


def extract_probs(source_file):
    # open log file
    with open(source_file) as f:
        f = f.readlines()

    # print(f[-19])

    results = []

    # epsilon
    p_idx = f[-19].find(":")
    f_idx = f[-17].find(":")
    results.append(f[-19][p_idx+2:])
    results.append(f[-17][f_idx+2:])

    return results


def extract_results(source_file):
    # open log file
    with open(source_file) as f:
        f = f.readlines()

    # print(f[-14])

    results = []

    # epsilon
    e_min_idx = f[-14].find("=")
    e_max_idx = f[-10].find("=")
    results.append(f[-14][e_min_idx+2:])
    results.append(f[-10][e_max_idx+2:])

    # mu
    m_min_idx = f[-13].find("=")
    m_max_idx = f[-9].find("=")
    results.append(f[-13][m_min_idx+2:])
    results.append(f[-9][m_max_idx+2:])

    # gamma
    g_min_idx = f[-12].find("=")
    g_max_idx = f[-8].find("=")
    results.append(f[-12][g_min_idx+2:])
    results.append(f[-8][g_max_idx+2:])

    return results


def extract_runtime(source_file):
    # open log file
    with open(source_file) as f:
        f = f.readlines()

    return f[-1][0:9]


def extract_base_and_exponent(val):
    exp = 0
    if val == 0:
        return 0, 0
    while(val < 1):
        exp += 1
        val *= 10

    
    return math.floor(val * 100)/100.0, exp


if __name__ == "__main__":  
    for file in os.listdir(source_dir):
        if file.endswith(".log"):
            print(os.path.join(source_dir, file))

            probs = extract_probs(os.path.join(source_dir, file))
            print("& \\num{{{:.3f}}} & \\num{{{:.3f}}}".format(float(probs[0]), float(probs[1])))

            results = extract_results(os.path.join(source_dir, file))
            # print("{} {} {} {}".format((results[2]), (results[3]), (results[0]), (results[1])))
            # print("{} {} {} {}".format(float(results[2]), float(results[3]), float(results[0]), float(results[1])))
            # print("& \\verminmax{{{:.3f}}}{{{:.3f}}} & \\verminmax{{{:.3f}}}{{{:.3f}}} & \\verminmax{{{:.3f}}}{{{:.3f}}}".format(float(results[0]), float(results[1]), float(results[2]), float(results[3]), float(results[4]), float(results[5])))
            b0, e0 = extract_base_and_exponent(float(results[2]))
            b1, e1 = extract_base_and_exponent(float(results[3]))
            print("& $\\nicefrac{{{:.2f}\\mathrm{{e}}{{\\shortminus{}}}}}{{{:.2f}\\mathrm{{e}}{{\\shortminus{}}}}}$".format(b0, e0, b1, e1))
            b0, e0 = extract_base_and_exponent(float(results[0]))
            b1, e1 = extract_base_and_exponent(float(results[1]))
            print("& $\\nicefrac{{{:.2f}\\mathrm{{e}}{{\\shortminus{}}}}}{{{:.2f}\\mathrm{{e}}{{\\shortminus{}}}}}$".format(b0, e0, b1, e1))
            b0, e0 = extract_base_and_exponent(float(results[4]))
            b1, e1 = extract_base_and_exponent(float(results[5]))
            print("& $\\nicefrac{{{:.2f}\\mathrm{{e}}{{\\shortminus{}}}}}{{{:.2f}\\mathrm{{e}}{{\\shortminus{}}}}}$".format(b0, e0, b1, e1))



            time = extract_runtime(os.path.join(source_dir, file))
            f_time = float(time)
            if f_time > 3600:
                print("& \\runtimeh{{{:.1f}}} \\\\".format(float(f_time/3600)))
            elif f_time > 60:
                print("& \\runtimem{{{:.1f}}} \\\\".format(float(f_time/60)))
            else:
                print("& \\runtimes{{{:.1f}}} \\\\".format(float(f_time)))

            print("\n")


    # directory_verica = sys.argv[1] + "/verica"
    # if os.path.exists(directory_verica):
    #     for file in os.listdir(directory_verica):
    #         filename = os.fsdecode(file)
    #         if filename.endswith(".log"): 
    #             print(os.path.join(directory_verica, filename))
    #             extract_information(os.path.join(directory_verica, filename), "verica")
    #             continue
    #         else:
    #             continue
    # else:
    #     print("No results detected vor VERICA!")
    # print("\n")


    # # print results
    # print("Results for INDIANA")
    # print("-------------------------------------")
    # for idx, order in enumerate(results_indiana_time):
    #     print("Order: {}".format(idx))
    #     # & [\runtimes{ 0.0}]\cmark{1} & [\runtimes{ 0.0}]\cmark{1} & [\runtimes{ 0.0}]\xmark{1}
    #     for idx_strat, time in enumerate(order):
    #         verified_order = results_indiana_verification[idx][idx_strat]
    #         check = ""
    #         if verified_order == idx:
    #             check = "\\cmark{{" + str(verified_order) + "}}"
    #         else:
    #             check = "\\xmark{{" + str(verified_order+1) + "}}"
    #         print("& [\\runtimes{{{:.1f}}}]{} ".format(float(time), check), end='')

    #     print("\n")

    # print("\n")
    # print("Results for VERICA")
    # print("-------------------------------------")
    # for idx, order in enumerate(results_verica_time):
    #     print("Order: {}".format(idx))
    #     # & [\runtimes{ 0.0}]\cmark{1} & [\runtimes{ 0.0}]\cmark{1} & [\runtimes{ 0.0}]\xmark{1}
    #     for idx_strat, time in enumerate(order):
    #         verified_order = results_verica_verification[idx][idx_strat]
    #         check = ""
    #         if verified_order == idx:
    #             check = "\\cmark{{" + str(verified_order) + "}}"
    #         else:
    #             check = "\\xmark{{" + str(verified_order+1) + "}}"
    #         if time == 0:
    #             print("& --$^{\ddagger}$ ", end='')
    #         else:
    #             print("& [\\runtimes{{{:.1f}}}]{} ".format(float(time), check), end='')

    #     print("\n")

    # print("Used verilog file: ", config_file["general"]["netlist"]["file"])

