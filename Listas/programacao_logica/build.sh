#!/bin/bash
working_dir=`basename $PWD`
pdflatex -shell-escape main.tex 
cp main.pdf $working_dir.pdf
