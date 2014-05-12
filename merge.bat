perl merge.pl KieslichC_S1210455006.tex > thesis.tex
pandoc --default-image-extension=.png --number-sections --biblatex --bibliography=literatur.bib -s thesis.tex -o thesis.docx
pandoc --default-image-extension=.png --number-sections --biblatex --bibliography=literatur.bib -s thesis.tex -o thesis.odt
pandoc --default-image-extension=.png --gladtex --biblatex --bibliography=literatur.bib -s thesis.tex -o thesis.md
pandoc --default-image-extension=.png --biblatex --bibliography=literatur.bib -s  thesis.tex -o thesis.html
REM pandoc --default-image-extension=.png thesis.md -o thesis.docx