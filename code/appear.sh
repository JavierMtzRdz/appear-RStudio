#!/bin/bash

# Update icon

wget https://github.com/amirmasoudabdol/rstudio-icons/raw/main/Icons/macOS/Rectangle/Dark%20Icon%20-%20Rect.icns -O /Applications/RStudio.app/Contents/Resources/RProject.icns

wget https://github.com/amirmasoudabdol/rstudio-icons/raw/main/Icons/macOS/Rectangle/Dark%20Icon%20-%20Rect.icns -O /Applications/RStudio.app/Contents/Resources/RStudio.icns

touch /Applications/RStudio.app


echo Done!