#!/bin/bash
working_dir=`basename $PWD`
lualatex -shell-escape main.tex 
cp main.pdf $working_dir.pdf
