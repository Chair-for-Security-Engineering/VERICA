#pragma once
#include "config.hpp"
#include <iostream>

#define START_CACHE_SIZE 500
#define MAX_CACHE_SIZE 2000



namespace Cache {
    enum CacheCode {
        SATCOUNTLN=0,COMBPROB,STATINDEP
    };
    // Array to store dummy functions
    extern DD_CTFP ops[3];

    /**
     * @brief Initializes the cache
     * 
     */
    void initCache();

    /**
     * @brief Prints stats like total lookups, hit rate, cache slots...
     * 
     * @param cuddManager The Cudd Manager whose cache stats should be printed
     */
    void print_stats(Cudd cuddManager);

    /**
     * @brief Stores the result of singprob in cache
     * 
     * @param mgr Cudd_Manager of p1
     * @param p1 BDD, parameter for singprob
     * @param data Result to store
     */
    void put1(DdManager* mgr,DdNode * p1, double data);

    /**
     * @brief Retrieves the cached result of singprob from cache
     * 
     * @param mgr Cudd Manager
     * @param p1 BDD, parameter for singprob
     * @param result // Reference to a double, the result will be stored here if found
     * @return true Cache found answer
     * @return false Cache found no answer
     */
    bool read1(DdManager* mgr,DdNode * p1,double &result);

    /**
     * @brief Stores the result of a function that takes 2 parameters in the cache
     * 
     * @param mgr Manager
     * @param op The "op-code", see enum CacheCode for which code corresponds to which function
     * @param p1 BDD, parameter 1
     * @param p2 BDD, parameter 2
     * @param data Result to store in the cache
     */
    void put2(DdManager* mgr,CacheCode op,DdNode * p1, DdNode * p2, double data); 
    
    /**
     * @brief Retrieves cached result of a 2 parameter function
     * 
     * @param mgr Cudd Manager
     * @param op see enum CacheCode
     * @param p1 first parameter
     * @param p2 second parameter
     * @param result Reference to double, result will be stored here
     * @return true Cache found a valid result
     * @return false Result was not found in cache
     */
    bool read2(DdManager* mgr,CacheCode op,DdNode * p1,DdNode * p2,double &result);

    
}