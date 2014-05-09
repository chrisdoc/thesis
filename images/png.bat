mogrify -density 300x300 -resize 600 -format png *.pdf
REM mogrify -quality 100 -format jpg -fill "#FFFFFF" -opaque none *.png
optipng *.png