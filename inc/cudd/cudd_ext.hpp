#pragma once
#include <math.h>
#include <cuddObj.hh>
#include <cudd.h>
#include <set>
#include <vector>
#include "cuddInt.h"
#include "cache.hpp"

class Cudd_Manager;


// A List of Cudd_Managers. This is needed for multithreading.
extern std::vector<Cudd_Manager> cuddManagers;
#define isLeaf(a) Cudd_IsConstantInt(a)

/**
 * @brief A class that inherits from "Cudd".
 * 
 * This class extends the interface of the Cudd library by 4 methods used to calculate statistical properties of bdds.
 * 
 */
class Cudd_Manager : public Cudd {
    private:
        DdManager* mgr;

        // These 4 methods are called internally by their public counterpart.
        // They operate on the c-interface of cudd which has less overhead.
        double bdd_combprobability(DdNode *bdd1, DdNode *bdd2);
        double bdd_singprobability(DdNode *bdd);
        int bdd_statindependence(DdNode *dd1, DdNode *dd2);
        double bdd_satcountln(DdNode *dd, size_t nvars);

        DdNode* bdd_carry(DdNode *dd1, DdNode *dd2, DdNode *carry_in);
        DdNode* bdd_sum(DdNode *dd1, DdNode *dd2, DdNode *carry_in);

        /**
         * @brief Computes the set of satisfying assignments for a given BDD.
         * 
         * @param node root node of the BDD
         * @param level current level of analysis 
         * @param list_idx list of indices that got a value assigned in current analysis
         * @param list_val list of values that got assigned in current analysis
         * @param sat_assign (ret) list of valid assignments, each element is a tuple (index, value)
         * @return number of satisfying assignments
         */
        int bdd_sat_recursive(DdNode *node, unsigned level, int *list_idx, bool *list_val, std::vector<std::vector<std::pair<int, bool>>> &sat_assign);

    public:
        Cudd_Manager();
        /**
         * @brief Constructor for a new Cudd_Manager object. See Cudd Documentation for parameters
         * 
         */
        Cudd_Manager(unsigned int numVars,unsigned int numVarsZ,unsigned int numSlots,unsigned int cacheSize, unsigned long maxMemory);

        /**
         * @brief Calculates the comprobability of bdd1 and bdd2.
         * 
         * @param bdd1 
         * @param bdd2 
         * @return double 
         */
        double bdd_combprobability(BDD &bdd1, BDD &bdd2);

         /**
         * @brief Calculates the probability of the bdd evaluating to 1
         * 
         * @param bdd A reference to a BDD using the c++ interface of cudd
         * @return double 
         */
        double bdd_singprobability(BDD &bdd);

        /**
         * @brief Calculates the statistical independence of bdd 1 and bdd2.
         * 
         * @param dd1 
         * @param dd2 
         * @return int returns 1 or 0
         */
        int bdd_statindependence(BDD &dd1, BDD &dd2);

        /**
         * @brief 
         * 
         * @param dd 
         * @param nvars 
         * @return double 
         */
        double bdd_satcountln(BDD &dd, size_t nvars);

        /**
         * @brief 
         * 
         * @param dd1 
         * @param dd2 
         * @param carry_in 
         * @return BDD* 
         */
        BDD* bdd_add(BDD &dd1, BDD &dd2, BDD &carry_in);

        /**
         * @brief Computes the set of satisfying assignments for a given BDD.
         * 
         * @param dd root node of the BDD
         * @param sat_assign (ret) list of valid assignments, each element is a tuple (index, value)
         * @return number of satisfying assignments
         */
        int bdd_sat(BDD &dd, std::vector<std::vector<std::pair<int, bool>>> &sat_assign);
};

/**
 * @brief Writes a .dot file representing the given bdd. See write_add for an easier to read output.
 * 
 * @param cuddManager Manager object of the bdd.
 * @param bdd Bdd to be printed.
 * @param filename Output filename, needs to include ".dot" extension
 * 
 *  */
void write_bdd (Cudd cuddManager,BDD bdd, std::string filename);

/**
 * @brief Call with Bdd bdd1.Add() for easier human readable output of write_bdd.
 * 
 * @param cuddManager 
 * @param add 
 * @param filename 
 */
void write_add (Cudd cuddManager,ADD add, std::string filename);

/**
 * @brief 
 * 
 */
class BDDSet {
    private:
        BDD set;
        DdManager* mgr;
    public:
        BDDSet(Cudd &manager, BDD &bdd);
        void add(BDD &bdd);
        std::vector<uint32_t> toVector() const;
};





