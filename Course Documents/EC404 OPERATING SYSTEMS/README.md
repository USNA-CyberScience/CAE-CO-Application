# EC404 Operating Systems

## Project 1 (Kernel Modules)

This assignment will involve designing two kernel modules:
1.  Design a kernel module that creates a `/proc` file named `/proc/jiffies` that reports the current value of jiffies when the `/proc/jiffies` file is read, such as with the command
<pre>cat /proc/jiffies</pre>
    Be sure to remove /proc/jiffies when the module is removed.
2.  Design a kernel module that creates a `proc` file named `/proc/seconds` that reports the number of elapsed seconds since the kernel module was loaded. This will involve using the value of jiffies as well as the HZ rate. When a user enters the command <pre>cat /proc/seconds</pre> your kernel module will report the number of seconds that have elapsed since the kernel module was first loaded. Be sure to remove `/proc/seconds` when the module is removed.

## Project 2 (Threads and Synchronization)

Refer to pages 253-257 from *Operating Systems Concepts*, 9th Ed., Silberschatz, Galvin, and Gagne.

## Project 3 (Virtual Memory Manager)

This project consists of writing a program that translates logical to physical addresses for a virtual address space of size 216 = 65,536 bytes. Your program will read from a file containing logical addresses and, using a TLB and a page table, will translate each logical address to its corresponding physical address and output the value of the byte stored at the translated physical address. Your learning goal is to use simulation to understand the steps involved in translating logical to physical addresses. This will include resolving page faults using demand paging, managing a TLB, and implementing a page-replacement algorithm.
