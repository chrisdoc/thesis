perl merge.pl KieslichC_S1210455006.tex > thesis.tex
pandoc --default-image-extension=.jpg --number-sections --biblatex --bibliography=literatur.bib -s thesis.tex -o thesis.docx
pandoc --default-image-extension=.jpg --gladtex --biblatex --bibliography=literatur.bib -s thesis.tex -o thesis.md
pandoc --default-image-extension=.jpg --biblatex --bibliography=literatur.bib -s  thesis.tex -o thesis.html
REM pandoc --default-image-extension=.png  --latexmathml -s  thesis.md -o thesis.pdf