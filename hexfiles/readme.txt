Zinsser (zinsser2007@gmail.com)
03/13/2022

This readme is created in mips_cpu version 2.0
Last updated in versino 3.0
Before version 2.0, the following files exist:

coin.c
coin.dis
coin.hex
esift.dis
esift.hex
esift2.c
esift2.hex
nqueens.asm
nqueens.dis
nqueens.hex
qsort.dis
qsort.hex
queens.c
quickSort.c

Nobody knows how these files are compiled/generated, but we use these hex files
to preload the main memory with a preloader. These hex files have 32-bit words
on each line. The first line's byte address is 0x0, the second 0x4, and so on.

As of v3.0, the main memory is modeled in C++ code. See memory.h/cpp
Loading the initial memory content is done in memory.cpp