#!/bin/bash

qtilePackages=(


    
    
)

printScriptHeader "window manager"
printInfo "which window manager should be installed?"
# -----------------------------------------------------

services=$(gum choose "qtile" --selected="qtile" --no-limit)

if [[ $services = *"qtile"* ]]; then
    printInfo "install qtile packages"
    installPackagesWithPackman "${qtilePackages[@]}"
fi