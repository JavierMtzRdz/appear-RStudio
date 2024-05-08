#!/bin/bash

# Update icon

wget https://github.com/amirmasoudabdol/rstudio-icons/raw/main/Icons/macOS/Rectangle/Dark%20Icon%20-%20Rect.icns -O /Applications/RStudio.app/Contents/Resources/RProject.icns

wget https://github.com/amirmasoudabdol/rstudio-icons/raw/main/Icons/macOS/Rectangle/Dark%20Icon%20-%20Rect.icns -O /Applications/RStudio.app/Contents/Resources/RStudio.icns

touch /Applications/RStudio.app

# Install firacode

#brew tap homebrew/cask-fonts
#brew install --cask font-fira-code

# Update theme

wget https://raw.githubusercontent.com/JavierMtzRdz/appear-RStudio/main/frmt/base16-JMR.rstheme -O ~/.config/rstudio/themes/base16-JMR.rstheme

R -e 'if (!require("jsonlite")) install.packages("jsonlite")
location <- "~/.config/rstudio/rstudio-prefs.json"
json_list <- jsonlite::read_json(location)
json_list$editor_theme <- "base16 JMR {rsthemes}"
jsonlite::write_json(json_list, location, pretty=TRUE, auto_unbox = TRUE)
'

echo Done!