#!/bin/bash


LIST=`ls *.svg`

for ELEMENT in $LIST
do
echo $ELEMENT
inkscape --verb EditSelectAllInAllLayers --verb org.inkscape.color.grayscale --verb FileSave --verb FileClose $ELEMENT
done
