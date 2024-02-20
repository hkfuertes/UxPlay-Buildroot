#!/bin/bash

# Set Variables
# export PIN=$(printf %04d ${RANDOM:0:4})
export NAME=$(hostname | tr '[:lower:]' '[:upper:]')
# export SIZE=$(cat /sys/class/graphics/fb0/virtual_size | sed -e 's/,/x/g')

# Display $PIN with fbi
# convert -size $SIZE xc:black -gravity southeast -pointsize 48 -draw "fill white text 50,20 '$PIN'" /tmp/default.jpg
# fbv -i -f /tmp/default.jpg

# Start UxPlay
uxplay -n $NAME -nh #-pin $PIN
