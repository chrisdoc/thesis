mogrify -density 150x150 -resize 600 -format png *.pdf
mogrify -quality 100 -format jpg -fill "#FFFFFF" -opaque none *.png
optipng *.png