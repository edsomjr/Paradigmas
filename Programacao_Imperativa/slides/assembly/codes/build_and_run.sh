#!/bin/bash
# Monta o código assembly indicado no entrada e executa o programa de mesmo nome.                                         
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 {source.s}"
    exit
fi

source=$1
output=${source%.*}

# Compila (monta) o códig com o NASM 
nasm -f elf $source

# Linka o código para sistemas de 64 bits 
ld -m elf_i386 $output.o -o $output

# Executa o programa gerado
./$output
