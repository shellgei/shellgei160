cd img
time ls *.png | sed 's/\.png$//' | xargs -I@ convert @.png @.jpg

## delete jpg file
# ls *.jpg | xargs -I@ rm @
