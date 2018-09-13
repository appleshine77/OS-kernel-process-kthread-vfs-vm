
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
 
#include "kernel.h"
#include "errno.h"
#include "globals.h"
 
#include "vm/vmmap.h"
#include "vm/shadow.h"
#include "vm/anon.h"
 
#include "proc/proc.h"
 
#include "util/debug.h"
#include "util/list.h"
#include "util/string.h"
#include "util/printf.h"
 
#include "fs/vnode.h"
#include "fs/file.h"
#include "fs/fcntl.h"
#include "fs/vfs_syscall.h"
 
#include "mm/slab.h"
#include "mm/page.h"
#include "mm/mm.h"
#include "mm/mman.h"
#include "mm/mmobj.h"
 
static slab_allocator_t *vmmap_allocator;
static slab_allocator_t *vmarea_allocator;
 
void
vmmap_init(void)
{
        vmmap_allocator = slab_allocator_create("vmmap", sizeof(vmmap_t));
        KASSERT(NULL != vmmap_allocator && "failed to create vmmap allocator!");
        vmarea_allocator = slab_allocator_create("vmarea", sizeof(vmarea_t));
        KASSERT(NULL != vmarea_allocator && "failed to create vmarea allocator!");
}
 
vmarea_t *
vmarea_alloc(void)
{
        vmarea_t *newvma = (vmarea_t *) slab_obj_alloc(vmarea_allocator);
        if (newvma) {
                newvma->vma_vmmap = NULL;
        }
        return newvma;
}
 
void
vmarea_free(vmarea_t *vma)
{
        KASSERT(NULL != vma);
        slab_obj_free(vmarea_allocator, vma);
}
 
/* a debugging routine: dumps the mappings of the given address space. */
size_t
vmmap_mapping_info(const void *vmmap, char *buf, size_t osize)
{
        KASSERT(0 < osize);
        KASSERT(NULL != buf);
        KASSERT(NULL != vmmap);
 
        vmmap_t *map = (vmmap_t *)vmmap;
        vmarea_t *vma;
        ssize_t size = (ssize_t)osize;
 
        int len = snprintf(buf, size, "%21s %5s %7s %8s %10s %12s\n",
                           "VADDR RANGE", "PROT", "FLAGS", "MMOBJ", "OFFSET",
                           "VFN RANGE");
 
        list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink) {
                size -= len;
                buf += len;
                if (0 >= size) {
                        goto end;
                }
 
                len = snprintf(buf, size,
                               "%#.8x-%#.8x  %c%c%c  %7s 0x%p %#.5x %#.5x-%#.5x\n",
                               vma->vma_start << PAGE_SHIFT,
                               vma->vma_end << PAGE_SHIFT,
                               (vma->vma_prot & PROT_READ ? 'r' : '-'),
                               (vma->vma_prot & PROT_WRITE ? 'w' : '-'),
                               (vma->vma_prot & PROT_EXEC ? 'x' : '-'),
                               (vma->vma_flags & MAP_SHARED ? " SHARED" : "PRIVATE"),
                               vma->vma_obj, vma->vma_off, vma->vma_start, vma->vma_end);
        } list_iterate_end();
 
end:
        if (size <= 0) {
                size = osize;
                buf[osize - 1] = '\0';
        }
        /*
        KASSERT(0 <= size);
        if (0 == size) {
                size++;
                buf--;
                buf[0] = '\0';
        }
        */
        return osize - size;
}
 
/* Create a new vmmap, which has no vmareas and does
 * not refer to a process. */
vmmap_t *
vmmap_create(void)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_create");
        vmmap_t *newvmmap = (vmmap_t *) slab_obj_alloc(vmmap_allocator);
        if (newvmmap) {
            newvmmap->vmm_proc = NULL;
            list_init(&newvmmap->vmm_list);
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return newvmmap;
}
 
/* Removes all vmareas from the address space and frees the
 * vmmap struct. */
void
vmmap_destroy(vmmap_t *map)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_destroy");
        KASSERT(NULL != map);
        dbg(DBG_PRINT, "(GRADING3A 3.a)\n");
 
        vmarea_t *vma = NULL;
 
        list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink) {
            vmmap_remove(map, vma->vma_start, vma->vma_end - vma->vma_start);
            dbg(DBG_PRINT, "(GRADING3A)\n");
        } list_iterate_end();
 
        map->vmm_proc = NULL;
        slab_obj_free(vmmap_allocator, map);
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return;
}
 
/* Add a vmarea to an address space. Assumes (i.e. asserts to some extent)
 * the vmarea is valid.  This involves finding where to put it in the list
 * of VM areas, and adding it. Don't forget to set the vma_vmmap for the
 * area. */
void
vmmap_insert(vmmap_t *map, vmarea_t *newvma)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_insert");
        KASSERT(NULL != map && NULL != newvma); /* both function arguments must not be NULL */
        KASSERT(NULL == newvma->vma_vmmap); /* newvma must be newly create and must not be part of any existing vmmap */
        KASSERT(newvma->vma_start < newvma->vma_end); /* newvma must not be empty */
        KASSERT(ADDR_TO_PN(USER_MEM_LOW) <= newvma->vma_start && ADDR_TO_PN(USER_MEM_HIGH) >= newvma->vma_end); /* addresses in this memory segment must lie completely within the user space */
        dbg(DBG_PRINT, "(GRADING3A 3.b)\n");
 
        newvma->vma_vmmap = map;
 
        vmarea_t *vma = NULL;
        uint32_t vma_end_pre = ADDR_TO_PN(USER_MEM_LOW);
     
        if (list_empty(&(map->vmm_list))) {
            list_insert_tail(&(map->vmm_list), &(newvma->vma_plink));
             dbg(DBG_PRINT, "(GRADING3A)\n");
            return;
        } else {
            list_iterate_begin(&(map->vmm_list), vma, vmarea_t, vma_plink) {
                if (newvma->vma_end <= vma->vma_start && newvma->vma_start >= vma_end_pre) {
                    list_insert_before(&(vma->vma_plink), &(newvma->vma_plink));
                     dbg(DBG_PRINT, "(GRADING3A)\n");
                    return;
                }
                vma_end_pre = vma->vma_end;
                 dbg(DBG_PRINT, "(GRADING3A)\n");
            } list_iterate_end();
             dbg(DBG_PRINT, "(GRADING3A)\n");
        }
     
        if(newvma->vma_start >= vma_end_pre && newvma->vma_end <= ADDR_TO_PN(USER_MEM_HIGH)){
            list_insert_tail(&map->vmm_list, &newvma->vma_plink);
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
     
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return;
}
 
/* Find a contiguous range of free virtual pages of length npages in
 * the given address space. Returns starting vfn for the range,
 * without altering the map. Returns -1 if no such range exists.
 *
 * Your algorithm should be first fit. If dir is VMMAP_DIR_HILO, you
 * should find a gap as high in the address space as possible; if dir
 * is VMMAP_DIR_LOHI, the gap should be as low as possible. */
int
vmmap_find_range(vmmap_t *map, uint32_t npages, int dir)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_find_range");
        vmarea_t *vma = NULL;
        uint32_t free_low_start = ADDR_TO_PN(USER_MEM_LOW);
        uint32_t free_high_start = ADDR_TO_PN(USER_MEM_HIGH);
        int res = -1;
        /*
        if (dir == VMMAP_DIR_LOHI) {
            list_iterate_begin(&(map->vmm_list), vma, vmarea_t, vma_plink) {
                if ((vma->vma_start - free_low_start) >= npages) {
                    res = free_low_start;
                    dbg(DBG_PRINT, "(GRADING3F vmmap_find_range() 1)\n");
                    return res;
                }
                free_low_start = vma->vma_end;
                dbg(DBG_PRINT, "(GRADING3F vmmap_find_range() 2)\n");
            } list_iterate_end();
            dbg(DBG_PRINT, "(GRADING3F vmmap_find_range() 3)\n");
        } else */if (dir == VMMAP_DIR_HILO) {
            list_iterate_reverse(&(map->vmm_list), vma, vmarea_t, vma_plink) {
                if ((free_high_start - vma->vma_end) >= npages) {
                    res = free_high_start - npages;
                     dbg(DBG_PRINT, "(GRADING3A)\n");
                    return res;
                }
                free_high_start = vma->vma_start;
                dbg(DBG_PRINT, "(GRADING3D 1)\n");
            } list_iterate_end();

            //add to the head
            if (free_high_start - ADDR_TO_PN(USER_MEM_LOW) >= npages) {
                 res = free_high_start - npages;
                 dbg(DBG_PRINT, "(RADING3D 2)\n");
            }
            dbg(DBG_PRINT, "(RADING3D 1)\n");
        }

        dbg(DBG_PRINT, "(GRADING3D 1)\n");
        return res;
}
 
/* Find the vm_area that vfn lies in. Simply scan the address space
 * looking for a vma whose range covers vfn. If the page is unmapped,
 * return NULL. */
vmarea_t *
vmmap_lookup(vmmap_t *map, uint32_t vfn)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_lookup");
        KASSERT(NULL != map); /* the first function argument must not be NULL */
        dbg(DBG_PRINT, "(GRADING3A 3.c)\n");
 
        vmarea_t *vma = NULL, *res = NULL;
 
        list_iterate_begin(&(map->vmm_list), vma, vmarea_t, vma_plink) {
            if ((vma->vma_start <= vfn) && (vma->vma_end > vfn)) {
                res = vma;
                 dbg(DBG_PRINT, "(GRADING3A)\n");
                return res;
            }
             dbg(DBG_PRINT, "(GRADING3A)\n");
        } list_iterate_end();
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return res;
}
 
/* Allocates a new vmmap containing a new vmarea for each area in the
 * given map. The areas should have no mmobjs set yet. Returns pointer
 * to the new vmmap on success, NULL on failure. This function is
 * called when implementing fork(2). */
vmmap_t *
vmmap_clone(vmmap_t *map)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_clone");
        vmmap_t *res_map = vmmap_create();
        if (res_map) {
            vmarea_t *vma = NULL, *vma_clone = NULL;
            list_iterate_begin(&(map->vmm_list), vma, vmarea_t, vma_plink) {
                vma_clone = vmarea_alloc();
                if (vma_clone) {
                    vma_clone->vma_end = vma->vma_end;
                    vma_clone->vma_flags = vma->vma_flags;
                    vma_clone->vma_off = vma->vma_off;
                    vma_clone->vma_prot = vma->vma_prot;
                    vma_clone->vma_start = vma->vma_start;
                    vmmap_insert(res_map, vma_clone);
                     dbg(DBG_PRINT, "(GRADING3A)\n");
                }
                 dbg(DBG_PRINT, "(GRADING3A)\n");
            } list_iterate_end();
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return res_map;
}
 
/* Insert a mapping into the map starting at lopage for npages pages.
 * If lopage is zero, we will find a range of virtual addresses in the
 * process that is big enough, by using vmmap_find_range with the same
 * dir argument.  If lopage is non-zero and the specified region
 * contains another mapping that mapping should be unmapped.
 *
 * If file is NULL an anon mmobj will be used to create a mapping
 * of 0's.  If file is non-null that vnode's file will be mapped in
 * for the given range.  Use the vnode's mmap operation to get the
 * mmobj for the file; do not assume it is file->vn_obj. Make sure all
 * of the area's fields except for vma_obj have been set before
 * calling mmap.
 *
 * If MAP_PRIVATE is specified set up a shadow object for the mmobj.
 *
 * All of the input to this function should be valid (KASSERT!).
 * See mmap(2) for for description of legal input.
 * Note that off should be page aligned.
 *
 * Be very careful about the order operations are performed in here. Some
 * operation are impossible to undo and should be saved until there
 * is no chance of failure.
 *
 * If 'new' is non-NULL a pointer to the new vmarea_t should be stored in it.
 */
int
vmmap_map(vmmap_t *map, vnode_t *file, uint32_t lopage, uint32_t npages,
          int prot, int flags, off_t off, int dir, vmarea_t **new)
{
        int res = -1;
        //NOT_YET_IMPLEMENTED("VM: vmmap_map");
        /* All of the input to this function should be valid (KASSERT!).
         * See mmap(2) for for description of legal input.
         * Note that off should be page aligned. */
        KASSERT(NULL != map); /* must not add a memory segment into a non-existing vmmap */
        KASSERT(0 < npages); /* number of pages of this memory segment cannot be 0 */
        KASSERT((MAP_SHARED & flags) || (MAP_PRIVATE & flags)); /* must specify whether the memory segment is shared or private */
        KASSERT((0 == lopage) || (ADDR_TO_PN(USER_MEM_LOW) <= lopage)); /* if lopage is not zero, it must be a user space vpn */
        KASSERT((0 == lopage) || (ADDR_TO_PN(USER_MEM_HIGH) >= (lopage + npages))); /* if lopage is not zero, the specified page range must lie completely within the user space */
        KASSERT(PAGE_ALIGNED(off)); /* the off argument must be page aligned */
        dbg(DBG_PRINT, "(GRADING3A 3.d)\n");
 
        /* Insert a mapping into the map starting at lopage for npages pages.
         * If lopage is zero, we will find a range of virtual addresses in the
         * process that is big enough, by using vmmap_find_range with the same
         * dir argument.  If lopage is non-zero and the specified region
         * contains another mapping that mapping should be unmapped. */
        if (lopage == 0) {
            int vma_start = -1;
            if ((vma_start = vmmap_find_range(map, npages, dir)) == -1) {
                dbg(DBG_PRINT, "(GRADING3D 1)\n");
                return res;
            }
            lopage = (uint32_t)vma_start;
             dbg(DBG_PRINT, "(GRADING3A)\n");
        } else {
            vmarea_t * vma = vmmap_lookup(map, lopage);
            if (vma) {
            	vmmap_remove(map, lopage, npages);
            	/*int selftest = vmmap_remove(map, lopage, npages);
                if (selftest == -1) {
                    dbg(DBG_PRINT, "(GRADING3F vmmap_map() 3)\n");
                    return res;
                }*/
                 dbg(DBG_PRINT, "(GRADING3A)\n");
            }
             dbg(DBG_PRINT, "(GRADING3A)\n");
        }
 
        /* If file is NULL an anon mmobj will be used to create a mapping
         * of 0's.  If file is non-null that vnode's file will be mapped in
         * for the given range.  Use the vnode's mmap operation to get the
         * mmobj for the file; do not assume it is file->vn_obj. Make sure all
         * of the area's fields except for vma_obj have been set before
         * calling mmap.
         */
        mmobj_t *mmobj = NULL;
        vmarea_t *newvma = vmarea_alloc();
        /*if (newvma == NULL) {
            dbg(DBG_PRINT, "(GRADING3F vmmap_map() 6)\n");
            return res;
        }*/
        if (file) {
            if ((file->vn_ops->mmap(file, newvma, &mmobj)) == 0) {
                res = 0;
                 dbg(DBG_PRINT, "(GRADING3A)\n");
            }
             dbg(DBG_PRINT, "(GRADING3A)\n");
        } else {
            if ((mmobj = anon_create()) != NULL) {
                res = 0;
                dbg(DBG_PRINT, "(GRADING3A)\n");
            }
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
        /* If MAP_PRIVATE is specified set up a shadow object for the mmobj. */
        if (mmobj && res == 0) {
        	list_insert_tail(&mmobj->mmo_un.mmo_vmas,&newvma->vma_olink);
             dbg(DBG_PRINT, "(GRADING3A)\n");
        } /*else {
            res = -1;
            vmarea_free(newvma);
            dbg(DBG_PRINT, "(GRADING3F vmmap_map() 12)\n");
            return res;
        }*/
        res = -1;
        if ((flags & MAP_PRIVATE) == MAP_PRIVATE) {
        	newvma->vma_obj = shadow_create();
            /*if ((newvma->vma_obj = shadow_create()) == NULL) {
                vmarea_free(newvma);
                dbg(DBG_PRINT, "(GRADING3F vmmap_map() 13)\n");
                return res;
            }*/
            newvma->vma_obj->mmo_shadowed = mmobj;
            newvma->vma_obj->mmo_un.mmo_bottom_obj = mmobj;

             dbg(DBG_PRINT, "(GRADING3A)\n");
        } else {
        	newvma->vma_obj = mmobj;
        	dbg(DBG_PRINT, "(GRADING3D 1)\n");
        }
 
        /* Be very careful about the order operations are performed in here. Some
         * operation are impossible to undo and should be saved until there
         * is no chance of failure.
         *
         * If 'new' is non-NULL a pointer to the new vmarea_t should be stored in it.
         */
        res = 0;
        newvma->vma_flags = flags;
        newvma->vma_off = off;
        newvma->vma_start = lopage;
        newvma->vma_end = lopage + npages;
        newvma->vma_prot = prot;
 
        vmmap_insert(map, newvma);
        if (new != NULL) {
            *new = newvma;
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return res;
}
 
/*
 * We have no guarantee that the region of the address space being
 * unmapped will play nicely with our list of vmareas.
 *
 * You must iterate over each vmarea that is partially or wholly covered
 * by the address range [addr ... addr+len). The vm-area will fall into one
 * of four cases, as illustrated below:
 *
 * key:
 *          [             ]   Existing VM Area
 *        *******             Region to be unmapped
 *
 * Case 1:  [   ******    ]
 * The region to be unmapped lies completely inside the vmarea. We need to
 * split the old vmarea into two vmareas. be sure to increment the
 * reference count to the file associated with the vmarea.
 *
 * Case 2:  [      *******]**
 * The region overlaps the end of the vmarea. Just shorten the length of
 * the mapping.
 *
 * Case 3: *[*****        ]
 * The region overlaps the beginning of the vmarea. Move the beginning of
 * the mapping (remember to update vma_off), and shorten its length.
 *
 * Case 4: *[*************]**
 * The region completely contains the vmarea. Remove the vmarea from the
 * list.
 */
int
vmmap_remove(vmmap_t *map, uint32_t lopage, uint32_t npages)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_remove");
        vmarea_t *vma;

        list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink) {
        	if (lopage >= vma->vma_end || (lopage + npages) <= vma->vma_start){
        		 dbg(DBG_PRINT, "(GRADING3A)\n");
        	    continue;
        	}
            if (lopage > vma->vma_start) {/* Case 1 and 2 */
                /*Case1  The region to be unmapped lies completely inside the vmarea. We need to
                 * split the old vmarea into two vmareas. be sure to increment the
                 * reference count to the file associated with the vmarea. */
                if ((lopage + npages) < vma->vma_end) {
                    vmarea_t *new_vma = vmarea_alloc();
                    /*if (new_vma == NULL)
                    {
                        dbg(DBG_PRINT, "(GRADING3F vmmap_remove() 1)\n");
                        return -1;
                    }*/

                    new_vma->vma_start = lopage + npages;
                    new_vma->vma_end = vma->vma_end;
                    vma->vma_end = lopage;
                    new_vma->vma_prot = vma->vma_prot;
                    new_vma->vma_flags = vma->vma_flags;
                    new_vma->vma_off = vma->vma_off + lopage + npages - vma->vma_start;
                    new_vma->vma_obj = vma->vma_obj;
                    new_vma->vma_obj->mmo_ops->ref(new_vma->vma_obj);
                    list_link_init(&new_vma->vma_plink);
                    list_link_init(&new_vma->vma_olink);
 
                    mmobj_t *new_obj = mmobj_bottom_obj(new_vma->vma_obj);
                    list_insert_tail(&new_obj->mmo_un.mmo_vmas, &new_vma->vma_olink);
                    pt_unmap_range(curproc->p_pagedir, (uintptr_t)PN_TO_ADDR(vma->vma_end), (uintptr_t)PN_TO_ADDR(new_vma->vma_start));
 
                    vmmap_insert(map, new_vma);
                    dbg(DBG_PRINT, "(GRADING3D 2)\n");
                } else {/*Case 2: The region overlaps the end of the vmarea. Just shorten the length of the mapping. */
                    vma->vma_end=lopage;
                    dbg(DBG_PRINT, "(GRADING3D 2)\n");
                }
                dbg(DBG_PRINT, "(GRADING3D 2)\n");
            } else { //Case 3 and 4
				if ((lopage+npages) < vma->vma_end) {
				/*Case3  The region overlaps the beginning of the vmarea. Move the beginning of
				 * the mapping (remember to update vma_off), and shorten its length. */
					vma->vma_off = vma->vma_off + lopage + npages - vma->vma_start;
					uintptr_t pre_start = vma->vma_start;
					vma->vma_start = lopage + npages;
					pt_unmap_range(curproc->p_pagedir, (uintptr_t)PN_TO_ADDR(pre_start), (uintptr_t)PN_TO_ADDR(vma->vma_start));
					dbg(DBG_PRINT, "(GRADING3D 2)\n");
				} else {
				/*case4  The region completely contains the vmarea. Remove the vmarea from the list. */
					list_remove(&vma->vma_plink);
					list_remove(&vma->vma_olink);
					vma->vma_obj->mmo_ops->put(vma->vma_obj);

					pt_unmap_range(curproc->p_pagedir, (uintptr_t)PN_TO_ADDR(vma->vma_start), (uintptr_t)PN_TO_ADDR(vma->vma_end));
					vmarea_free(vma);
					 dbg(DBG_PRINT, "(GRADING3A)\n");
				}
				 dbg(DBG_PRINT, "(GRADING3A)\n");
            }
             dbg(DBG_PRINT, "(GRADING3A)\n");
        } list_iterate_end();
        dbg(DBG_PRINT, "(GRADING3A)\n");
        return 0;
}
 
/* Returns 1 if the given address space has no mappings for the
 * given range, 0 otherwise. */
int
vmmap_is_range_empty(vmmap_t *map, uint32_t startvfn, uint32_t npages)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_is_range_empty");
        /* the specified page range must not be empty and lie completely within the user space */
        KASSERT((startvfn < startvfn + npages) && (ADDR_TO_PN(USER_MEM_LOW) <= startvfn) && (ADDR_TO_PN(USER_MEM_HIGH) >= startvfn + npages));
        dbg(DBG_PRINT, "(GRADING3A 3.e)\n");
        if (map == NULL || list_empty(&(map->vmm_list))) {
             dbg(DBG_PRINT, "(GRADING3A)\n");
            return 1;
        }
        vmarea_t *vma = NULL;
        list_iterate_begin(&map->vmm_list, vma, vmarea_t, vma_plink)
        {
            if((vma->vma_end >= (startvfn + npages) && vma->vma_start < (startvfn + npages))
            || (vma->vma_start <= startvfn && vma->vma_end > startvfn)) {
                dbg(DBG_PRINT, "(GRADING3D 2)\n");
                return 0;
            }

            dbg(DBG_PRINT, "(GRADING3A)\n");
        } list_iterate_end();
 
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return 1;
}
 
/* Read into 'buf' from the virtual address space of 'map' starting at
 * 'vaddr' for size 'count'. To do so, you will want to find the vmareas
 * to read from, then find the pframes within those vmareas corresponding
 * to the virtual addresses you want to read, and then read from the
 * physical memory that pframe points to. You should not check permissions
 * of the areas. Assume (KASSERT) that all the areas you are accessing exist.
 * Returns 0 on success, -errno on error.
 */
int
vmmap_read(vmmap_t *map, const void *vaddr, void *buf, size_t count)
{
        //NOT_YET_IMPLEMENTED("VM: vmmap_read");
        KASSERT(NULL != map);
 
        vmarea_t *vma = NULL;
        uint32_t vfn = ADDR_TO_PN(vaddr);
        int index_page = 0;
        int remainder = count % PAGE_SIZE;
        int n_pages = (remainder == 0) ? (count / PAGE_SIZE) : (count / PAGE_SIZE) + 1;
 
        /* Read into 'buf' from the virtual address space of 'map' starting at 'vaddr' for size 'count'. */
        uint32_t pf_offset = PAGE_OFFSET(vaddr);
        for (int index_page = 0; index_page < n_pages; index_page++, vfn++, pf_offset+=PAGE_SIZE) {
            /*To do so, you will want to find the vmarea to read from */
            vma = vmmap_lookup(map, vfn);
            /*if(vma == NULL) {
                dbg(DBG_PRINT, "(GRADING3F vmmap_read() 1)\n");
                return -EFAULT;
            }*/
            /* then find the pframes within those vmareas corresponding to the virtual addresses you want to read. */
            pframe_t *pframe = NULL;
 
            /* Read into 'buf' from the virtual address space of 'map' starting at 'vaddr' for size 'count'.
             * Assume (KASSERT) that all the areas you are accessing exist. */
            KASSERT(pframe_get(vma->vma_obj, vma->vma_off + vfn - vma->vma_start, &pframe) == 0);
 
            /* then read from the physical memory that pframe points to. You should not check permissions of the areas. */
            if (remainder && (index_page + 1 == n_pages)) {
                memcpy((uint32_t*)((uint32_t)buf + index_page * PAGE_SIZE), (uint32_t*)((uint32_t)pframe->pf_addr + pf_offset), remainder);
                dbg(DBG_PRINT, "(GRADING3A)\n");
            } else {
                memcpy((uint32_t*)((uint32_t)buf + index_page * PAGE_SIZE), (uint32_t*)((uint32_t)pframe->pf_addr + pf_offset), PAGE_SIZE);
                dbg(DBG_PRINT, "(GRADING3D 1)\n");
            }
            dbg(DBG_PRINT, "(GRADING3A)\n");
        }
 
         dbg(DBG_PRINT, "(GRADING3A)\n");
        return 0;
}
 
/* Write from 'buf' into the virtual address space of 'map' starting at
 * 'vaddr' for size 'count'. To do this, you will need to find the correct
 * vmareas to write into, then find the correct pframes within those vmareas,
 * and finally write into the physical addresses that those pframes correspond
 * to. You should not check permissions of the areas you use. Assume (KASSERT)
 * that all the areas you are accessing exist. Remember to dirty pages!
 * Returns 0 on success, -errno on error.
 */
int
vmmap_write(vmmap_t *map, void *vaddr, const void *buf, size_t count)
{
#if 0
        //NOT_YET_IMPLEMENTED("VM: vmmap_write");
        KASSERT(NULL != map);
 
        vmarea_t *vma = NULL;
        uint32_t vfn = ADDR_TO_PN(vaddr);
        int index_page = 0;
        int remainder = count % PAGE_SIZE;
        int n_pages = (remainder == 0) ? (count / PAGE_SIZE) : (count / PAGE_SIZE) + 1;
        /* Write from 'buf' into the virtual address space of 'map' starting at 'vaddr' for size 'count'. */
        uint32_t pf_offset = PAGE_OFFSET(vaddr);
        for (int index_page = 0; index_page < n_pages; index_page++, vfn++, pf_offset+=PAGE_SIZE) {
            /* To do this, you will need to find the correct vmareas to write into */
            vma = vmmap_lookup(map, vfn);
            if(vma == NULL) {
                dbg(DBG_PRINT, "(GRADING3F vmmap_write() 1)\n");
                return -EFAULT;
            }
            /* then find the correct pframes within those vmareas */
            pframe_t *pframe = NULL;
            /* Assume (KASSERT) that all the areas you are accessing exist. */
            KASSERT(pframe_get(vma->vma_obj, vma->vma_off + vfn - vma->vma_start, &pframe) == 0);
 
            /* finally write into the physical addresses that those pframes correspond to. */
            if (remainder && (index_page + 1 == n_pages)) {
                memcpy((uint32_t *)((uint32_t)pframe->pf_addr + pf_offset), (uint32_t*)((uint32_t)buf + index_page * PAGE_SIZE), remainder);
                dbg(DBG_PRINT, "(GRADING3F vmmap_write() 2)\n");
            } else {
                memcpy(pframe->pf_addr, (uint32_t*)buf + index_page * PAGE_SIZE, PAGE_SIZE);
                dbg(DBG_PRINT, "(GRADING3F vmmap_write() 3)\n");
            }
            dbg(DBG_PRINT, "(GRADING3F vmmap_write() 4)\n");
        }
        dbg(DBG_PRINT, "(GRADING3F vmmap_write() 5)\n");
        return 0;
#endif
        vmarea_t *vma = NULL;
        uint32_t vfn = (uint32_t)vaddr,wpg,temp_write;
        pframe_t *pframe = NULL;
	    for(wpg=0;wpg<count;wpg+=temp_write){
		vma = vmmap_lookup(map, ADDR_TO_PN(vfn));
		    /*if(vma == NULL) {
               	dbg(DBG_PRINT, "(GRADING3F vmmap_write() 1)\n");
               	return -EFAULT;
           	}*/
           	/* then find the correct pframes within those vmareas */
           	/* Assume (KASSERT) that all the areas you are accessing exist. */
           	//KASSERT(pframe_get(vma->vma_obj, vma->vma_off + vfn - vma->vma_start, &pframe) == 0);
      	    pframe_lookup(vma->vma_obj, vma->vma_off + ADDR_TO_PN(vfn) - vma->vma_start, 1, &pframe);
		    /*Remember to dirty pages!*/
        	pframe_dirty(pframe);

		    /* finally write into the physical addresses that those pframes correspond to. */
        	if((count - wpg) >= PAGE_SIZE){
            	temp_write =PAGE_SIZE-(vfn % PAGE_SIZE);
            	dbg(DBG_PRINT, "(GRADING3D 1)\n");
        	}else{
        		 dbg(DBG_PRINT, "(GRADING3A)\n");
            	temp_write = count-wpg;
        	}

        	memcpy((void *)((uint32_t)pframe->pf_addr + (vfn % PAGE_SIZE)), buf, temp_write);
        	vfn = vfn + (PAGE_SIZE - (vfn % PAGE_SIZE));
        	buf = (uint32_t *)buf+temp_write;
        	 dbg(DBG_PRINT, "(GRADING3A)\n");
	   }
	   dbg(DBG_PRINT, "(GRADING3A)\n");
       return 0;
}
