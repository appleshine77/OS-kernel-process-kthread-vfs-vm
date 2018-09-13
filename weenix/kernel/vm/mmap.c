/******************************************************************************/
/* Important Summer 2018 CSCI 402 usage information:                          */
/*                                                                            */
/* This fils is part of CSCI 402 kernel programming assignments at USC.       */
/*         53616c7465645f5fd1e93dbf35cbffa3aef28f8c01d8cf2ffc51ef62b26a       */
/*         f9bda5a68e5ed8c972b17bab0f42e24b19daa7bd408305b1f7bd6c7208c1       */
/*         0e36230e913039b3046dd5fd0ba706a624d33dbaa4d6aab02c82fe09f561       */
/*         01b0fd977b0051f0b0ce0c69f7db857b1b5e007be2db6d42894bf93de848       */
/*         806d9152bd5715e9                                                   */
/* Please understand that you are NOT permitted to distribute or publically   */
/*         display a copy of this file (or ANY PART of it) for any reason.    */
/* If anyone (including your prospective employer) asks you to post the code, */
/*         you must inform them that you do NOT have permissions to do so.    */
/* You are also NOT permitted to remove or alter this comment block.          */
/* If this comment block is removed or altered in a submitted file, 20 points */
/*         will be deducted.                                                  */
/******************************************************************************/

#include "globals.h"
#include "errno.h"
#include "types.h"

#include "mm/mm.h"
#include "mm/tlb.h"
#include "mm/mman.h"
#include "mm/page.h"

#include "proc/proc.h"

#include "util/string.h"
#include "util/debug.h"

#include "fs/vnode.h"
#include "fs/vfs.h"
#include "fs/file.h"

#include "vm/vmmap.h"
#include "vm/mmap.h"

/*
 * This function implements the mmap(2) syscall, but only
 * supports the MAP_SHARED, MAP_PRIVATE, MAP_FIXED, and
 * MAP_ANON flags.
 *
 * Add a mapping to the current process's address space.
 * You need to do some error checking; see the ERRORS section
 * of the manpage for the problems you should anticipate.
 * After error checking most of the work of this function is
 * done by vmmap_map(), but remember to clear the TLB.
 */
int
do_mmap(void *addr, size_t len, int prot, int flags,
        int fd, off_t off, void **ret)
{
    //NOT_YET_IMPLEMENTED("VM: do_mmap");
    
    if (len <= 0){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
        return -EINVAL;
    }
    
    if ( (fd < 0 || fd >= NFILES) && ((flags & MAP_ANON) != MAP_ANON) ){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
        return -EBADF;
    }
    
    //yue
    if ( !PAGE_ALIGNED(off)){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
        return -EINVAL;
    }
    //yue

    if ( ((flags & MAP_ANON) != MAP_ANON) && (curproc->p_files[fd] == NULL) ){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
        return -ENODEV;
    }
    
	if((flags == 0)||(flags == MAP_TYPE)||((addr==NULL)&&(flags&MAP_FIXED))){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
        	return -EINVAL;
    }
	
	if( (addr!=NULL) && ( ( (uintptr_t)addr < USER_MEM_LOW )|| ( (uintptr_t)addr > USER_MEM_HIGH) ) ){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
		return -EINVAL;
	}
    /*if (curproc->p_files[fd] == NULL){
        dbg(DBG_PRINT,"(GRADING3F do_mmap().7)\n");
        return -EBADF;
    }*/
    
    /*if( ( (prot & PROT_EXEC) != PROT_EXEC) && ( (prot & PROT_READ) != PROT_READ) && ( (prot & PROT_WRITE) != PROT_WRITE) && ( (prot & PROT_NONE) != PROT_NONE) ) {
        dbg(DBG_PRINT,"(GRADING3F do_mmap().8)\n");
        return -EINVAL;
    }*/
    
    if ( (fd >= 0) && (fd < NFILES) && ((flags & MAP_ANON) != MAP_ANON) && (curproc->p_files[fd] != NULL) ){
        /*if ( ( (prot & PROT_READ) == PROT_READ) && ((curproc->p_files[fd]->f_mode&FMODE_READ)!= FMODE_READ) ){
            dbg(DBG_PRINT,"(GRADING3F do_mmap().9)\n");
        	return -EACCES;
        }*/
    
    	if ( ( (flags & MAP_SHARED) == MAP_SHARED) && ( (prot & PROT_WRITE) == PROT_WRITE) && ( (curproc->p_files[fd]->f_mode& FMODE_WRITE) != FMODE_WRITE) ){
            dbg(DBG_PRINT,"(GRADING3D 1)\n");
        	return -EACCES;
    	}
        dbg(DBG_PRINT,"(GRADING3A)\n");
    }

    
    /*if ( ( (flags & MAP_SHARED) != MAP_SHARED) && ( (flags & MAP_PRIVATE) != MAP_PRIVATE) && ( (flags & MAP_FIXED)!= MAP_FIXED) && ((flags & MAP_ANON) != MAP_ANON) ){
        dbg(DBG_PRINT,"(GRADING3F do_mmap().12)\n");
        return -EINVAL;
    }*/
	int npgs=len/PAGE_SIZE;
	if(len%PAGE_SIZE)
	{
		npgs=npgs+1;
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
	}
    

    vmarea_t *vma=NULL;
	
    int retval = 0;
    retval = vmmap_map(curproc->p_vmmap, curproc->p_files[fd]->f_vnode, ADDR_TO_PN(addr),npgs,prot, flags, off, VMMAP_DIR_HILO, &vma);

    KASSERT(NULL != curproc->p_pagedir);
    dbg(DBG_PRINT, "(GRADING3A 2.a)\n");
    if(retval != 0){
		*ret = MAP_FAILED;
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
		return (int)MAP_FAILED;
    }
    *ret = PN_TO_ADDR(vma->vma_start);
    tlb_flush_all();
    
    dbg(DBG_PRINT,"(GRADING3A)\n");
    return 0;
}


/*
 * This function implements the munmap(2) syscall.
 *
 * As with do_mmap() it should perform the required error checking,
 * before calling upon vmmap_remove() to do most of the work.
 * Remember to clear the TLB.
 */
int
do_munmap(void *addr, size_t len)
{
    //NOT_YET_IMPLEMENTED("VM: do_munmap");
	if(addr==NULL){
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
		return -EINVAL;
	}
 	if((len == 0)||(len == (size_t)-1))
	{
		dbg(DBG_PRINT,"(GRADING3D 1)\n");
		return -EINVAL;	
	}
    
    if (PAGE_ALIGNED(addr) == 0 ) {
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
        return -EINVAL;
    }
    
    /*if ( ((uint32_t)addr > USER_MEM_HIGH) || ((uint32_t)addr < USER_MEM_LOW) ){
        dbg(DBG_PRINT,"(GRADING3F do_munmap().4)\n");
        return -EINVAL;
    }*/
    
    uint32_t upper_bound = (uint32_t)addr + len;
    
    if (upper_bound > USER_MEM_HIGH){
        dbg(DBG_PRINT,"(GRADING3D 5)\n");
        return -EINVAL;
    }

    int npgs=len/PAGE_SIZE;
	if(len%PAGE_SIZE)
	{
		npgs=npgs+1;
        dbg(DBG_PRINT,"(GRADING3D 1)\n");
	}
    vmmap_remove(curproc->p_vmmap,ADDR_TO_PN(addr),npgs);
    tlb_flush_all();
    dbg(DBG_PRINT,"(GRADING3D 1)\n");
    return 0;
}

