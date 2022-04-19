#include "cudd/cache.hpp"



/**
 * The Cache
 * This cache uses the internal cache of the cudd library.
 * Every cudd manager has it's own cache.
 * 
 * How to add new Functions(with 2 parameters):
 * 1. Extend the enum CacheCode by one
 * 2. Add a new dummy function with the present header. This function is never called and only serves as "index" for the cache.
 * 3. Extend the ops array by one and add the dummy function in initCache.
 * 4. Now call put2(mgr,newOpCode,p1,p2,result) to store data in the cache and read2(mgr,newOpCode,p1,p2,result) to retrieve data from cache.
 * 
 * Since singprobabilty is currently the only function that takes one argument adding an additional function is not that easy.
 * Add a new enum for CacheCodes that reference singprob and the new funtion, then create a new ops array of type DD_CTFP1
 * Copy the stuff from above
 * 
 */
namespace Cache {

    DD_CTFP ops[3];

    /*enum CacheCode {
        SATCOUNTLN=0,COMBPROB,STATINDEP
    };*/

    // Dummy Functions used as Key for the cache, never called, used as index for cache
    DdNode *dummy_SATCOUNTLN(DdManager * manager, DdNode * f, DdNode * g) {
        (void)manager;
        (void)f;
        (void)g;
        return nullptr;
    }
    DdNode *dummy_COMBPROB(DdManager * manager, DdNode * f, DdNode * g) {
        (void)manager;
        (void)f;
        (void)g;
        return nullptr;
    }
    DdNode *dummy_STATINDEP(DdManager * manager, DdNode * f, DdNode * g) {
        (void)manager;
        (void)f;
        (void)g;
        return nullptr;
    }

    DdNode *dummy_SINGPROB1(DdManager * manager, DdNode * f) {
        (void)manager;
        (void)f;
        return nullptr;
    }

    void initCache() {
        
        ops[0]=dummy_SATCOUNTLN; // Index corresponds to enum CacheCode
        ops[1]=dummy_COMBPROB;
        ops[2]=dummy_STATINDEP;

    }

    void print_stats(Cudd cuddManager) {

        auto mgr = cuddManager.getManager();
        double hits = Cudd_ReadCacheHits(mgr);
        double lookups = Cudd_ReadCacheLookUps(mgr);
        std::cout << "Cache lookUps : " << lookups << std::endl;
        std::cout << "Cache Hits    : " << hits << " (" << 100.0*hits/lookups << "%)" << std::endl; 
        std::cout << "Cache Slots   : " << Cudd_ReadCacheSlots(mgr) << std::endl;
        std::cout << "Max cache     : " << Cudd_ReadMaxCache(mgr) << std::endl;
    }

    // Singprobability is the only function with 1 parameter
    void put1(DdManager* mgr,DdNode *p1, double data) {
        DdNode *dataNode = Cudd_addConst(mgr,data);
        Cudd_Ref(dataNode); // Careful, this is never dereferenced and memory is never freed

        cuddCacheInsert1(mgr,dummy_SINGPROB1,p1,dataNode);
    }

    bool read1(DdManager* mgr,DdNode * p1,double &result) {
        DdNode *node = cuddCacheLookup1(mgr,dummy_SINGPROB1,p1);
        if(node==NULL) {
            return false;
        }
        result = cuddV(node);
        return true;
    }

    void put2(DdManager* mgr,CacheCode op, DdNode * p1, DdNode * p2, double data) {
        DdNode *dataNode = Cudd_addConst(mgr,data);
        Cudd_Ref(dataNode); // Careful, this is never dereferenced and memory is never freed

        cuddCacheInsert2(mgr,ops[op],p1,p2,dataNode);
    }

    bool read2(DdManager* mgr,CacheCode op,DdNode * p1,DdNode * p2,double &result) {
        DdNode *node = cuddCacheLookup2(mgr,ops[op],p1,p2);
        if(node==NULL) {
            return false;
        }
        result = cuddV(node);
        return true;
    }
}