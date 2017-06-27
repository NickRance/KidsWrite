#!/bin/sh

echo "Deleting contents of Calibre Library"
rm -rf "/home/pi/calibre-library"
mkdir "/home/pi/calibre-library"
mkdir "/home/pi/calibre-library/toadd"
echo "Library should be empty"
