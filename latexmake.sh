#! /bin/bash
f="KieslichC_S1210455006"
rm $f.pdf
latexmk --pdf $f #> /dev/null 2>&1
rubber-info --check $f
rubber-info --boxes $f
