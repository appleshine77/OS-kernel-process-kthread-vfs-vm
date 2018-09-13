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

#include "types.h"
#include "globals.h"
#include "errno.h"

#include "util/debug.h"
#include "util/string.h"

#include "proc/proc.h"
#include "proc/kthread.h"

#include "mm/mm.h"
#include "mm/mman.h"
#include "mm/page.h"
#include "mm/pframe.h"
#include "mm/mmobj.h"
#include "mm/pagetable.h"
#include "mm/tlb.h"

#include "fs/file.h"
#include "fs/vnode.h"

#include "vm/shadow.h"
#include "vm/vmmap.h"

#include "api/exec.h"

#include "main/interrupt.h"

/* Pushes the appropriate things onto the kernel stack of a newly forked thread
 * so that it can begin execution in userland_entry.
 * regs: registers the new thread should have on execution
 * kstack: location of the new thread's kernel stack
 * Returns the new stack pointer on success. */
static uint32_t
fork_setup_stack(const regs_t *regs, void *kstack)
{
        /* Pointer argument and dummy return address, and userland dummy return
         * address */
        uint32_t esp = ((uint32_t) kstack) + DEFAULT_STACK_SIZE - (sizeof(regs_t) + 12);
        *(void **)(esp + 4) = (void *)(esp + 8); /* Set the argument to point to location of struct on stack */
        memcpy((void *)(esp + 8), regs, sizeof(regs_t)); /* Copy over struct */
        return esp;
}


/*
 * The implementation of fork(2). Once this works,
 * you're practically home free. This is what the
 * entirety of Weenix has been leading up to.
 * Go forth and conquer.
 */
int
do_fork(struct regs *regs)
{
        vmarea_t *vma, *clone_vma;
        pframe_t *pf;
        mmobj_t *to_delete, *new_shadowed;

        //NOT_YET_IMPLEMENTED("VM: do_fork");
    
        KASSERT(regs != NULL);
        KASSERT(curproc != NULL);
        KASSERT(curproc->p_state == PROC_RUNNING);
        dbg(DBG_PRINT, "(GRADING3A 7.a)\n");
    
        proc_t *newproc = proc_create("childproc");
    
        KASSERT(newproc->p_state == PROC_RUNNING);
        dbg(DBG_PRINT, "(GRADING3A 7.a)\n");
    
        newproc->p_vmmap =vmmap_clone(curproc->p_vmmap);
    
        vmarea_t *child_vma;
        vmarea_t *parent_vma;
        mmobj_t *parent_shadow = NULL;
        mmobj_t *child_shadow = NULL;
        /* For both parent and child process, if vmarea is private, create new shadow objects and link to the old parent's shadow object*/
        list_link_t *parent_obj = curproc->p_vmmap->vmm_list.l_next;
        list_iterate_begin(&newproc->p_vmmap->vmm_list,child_vma,vmarea_t,vma_plink){
            parent_vma = list_item(parent_obj,vmarea_t,vma_plink);
            child_vma->vma_obj = parent_vma->vma_obj; //wx
             dbg(DBG_PRINT, "(GRADING3A)\n");
            if ( (child_vma->vma_flags & MAP_PRIVATE) == MAP_PRIVATE ){
               dbg(DBG_PRINT, "(GRADING3A)\n");
                child_shadow = shadow_create();
                parent_shadow = shadow_create();
                
                //wx
                parent_shadow->mmo_un.mmo_bottom_obj = mmobj_bottom_obj(parent_vma->vma_obj);
                child_shadow->mmo_un.mmo_bottom_obj = mmobj_bottom_obj(child_vma->vma_obj);

                parent_shadow->mmo_shadowed = parent_vma->vma_obj;
                parent_vma->vma_obj = parent_shadow;

                /* both child and parent point to the old shadow object, increase the ref*/
                child_shadow->mmo_shadowed = parent_shadow->mmo_shadowed;
                parent_shadow->mmo_shadowed->mmo_ops->ref(parent_shadow->mmo_shadowed);
                child_vma->vma_obj = child_shadow;

                //wx
                mmobj_t *bottom_obj = mmobj_bottom_obj(child_vma->vma_obj);
                list_insert_tail(&bottom_obj->mmo_un.mmo_vmas, &child_vma->vma_olink);
            }
        
            if ( (child_vma->vma_flags & MAP_SHARED) == MAP_SHARED ){
                 dbg(DBG_PRINT, "(GRADING3D 3)\n");
                /* both child and parent point to the same file/anon object, increase the ref*/
                child_vma->vma_obj = parent_vma->vma_obj;
                //wx
                mmobj_t *bottom_obj = mmobj_bottom_obj(child_vma->vma_obj);
                list_insert_tail(&bottom_obj->mmo_un.mmo_vmas, &child_vma->vma_olink);

                parent_vma->vma_obj->mmo_ops->ref(parent_vma->vma_obj);
            }


            if (parent_obj->l_next != &(curproc->p_vmmap->vmm_list)){
                 dbg(DBG_PRINT, "(GRADING3A)\n");
                parent_obj = parent_obj->l_next;
            }
            
        }
        list_iterate_end();
        
        pt_unmap_range(curproc->p_pagedir, USER_MEM_LOW, USER_MEM_HIGH);
        tlb_flush_all();
    
        kthread_t *curthr;
        kthread_t *newthr;
        list_iterate_begin(&curproc->p_threads,curthr,kthread_t,kt_plink){
             dbg(DBG_PRINT, "(GRADING3A)\n");
            newthr = kthread_clone(curthr);
        
            KASSERT(newthr->kt_kstack != NULL);
            dbg(DBG_PRINT, "(GRADING3A 7.a)\n");
            
            
            newthr->kt_proc = newproc;
            newthr->kt_ctx.c_pdptr = newproc->p_pagedir;
            newthr->kt_ctx.c_eip = (uint32_t)userland_entry;
            
            regs->r_eax = 0;
            newthr->kt_ctx.c_esp = fork_setup_stack(regs, newthr->kt_kstack);         
            list_insert_tail(&newproc->p_threads,&newthr->kt_plink);
            sched_make_runnable(newthr);
        }
        list_iterate_end();
    
    
    
        KASSERT(newproc->p_pagedir != NULL);
        dbg(DBG_PRINT, "(GRADING3A 7.a)\n");
    
        /* copy file descriptor table */
        int fd = 0;
        for (fd = 0; fd< NFILES; fd++){
            newproc->p_files[fd] = curproc->p_files[fd];
             dbg(DBG_PRINT, "(GRADING3A)\n");
            if (newproc->p_files[fd]){
                 dbg(DBG_PRINT, "(GRADING3A)\n");
                fref(newproc->p_files[fd]);
            }
        }
    
    
    
        newproc->p_cwd = curproc->p_cwd;
      //  vget(newproc->p_cwd->vn_fs,newproc->p_cwd->vn_vno);
    
        newproc->p_brk = curproc->p_brk;
        newproc->p_start_brk = curproc->p_start_brk;
    
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return newproc->p_pid;
}

