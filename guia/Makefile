CC=cc
CFLAGS= -std=c11 -Wall -Wextra -pedantic -O0 -g -lm -Wno-unused-variable -Wno-unused-parameter -no-pie -z noexecstack
NASM=nasm
NASMFLAGS=-f elf64 -g -F DWARF

all: main

OBJS := ejercicios.o

main: main.c $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@
	
ejercicios.o: intercambiar.asm
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	rm -f *.o
	rm -f main