.globl get_ids
get_ids:
    movl 4(%esp),%esi  /* Store the pointer to the uid arg */

    movl $24, %eax      /* get uid is process 24 */
    int $0x80           /* Invoke system call. */
                        /* Kernel stores process ID into eax. */
    movl %eax, (%esi)    /* Stores the system call into the memory that
                            the uid arg points to */

    movl 8(%esp),%esi  /* Store the pointer to the gid arg */        
    
    movl $47, %eax      /* get gid is process 47 */
    int $0x80           /* Invoke system call. */
                        /* Kernel stores process ID into eax. */
    movl %eax, (%esi)    /* Stores the system call into the memory that
                            the gid arg points to */