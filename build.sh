#!/bin/bash

echo -e "\e[0;32m \n . Configure ...\e[0m"
rm -Rf bin
mkdir bin
cd bin

echo -e "\e[0;32m . Building kernel object in elf-32 bit format ...\e[0m"
nasm -f elf32 ../kernel.asm -o kasm.o

echo -e "\e[0;32m . Building main kernel object ...\e[0m"
gcc -m32 -c ../kernel.c -o kc.o

echo -e "\e[0;32m . Linking kernel ...\e[0m"
ld -m elf_i386 -T ../link.ld -o kernel kasm.o kc.o

echo -e "\e[0;34m\n Done !\e[0m"

echo -e "\e[0;34m To run the kernel you can use qmeu: \e[0;33mqemu-system-i386 -kernel bin/kernel\n\e[0m"

