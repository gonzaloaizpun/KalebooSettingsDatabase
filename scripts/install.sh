#!/bin/bash


# Please, set the right path!
source=/home/kaleboo/src/KalebooSettingsDatabase


# Load variables and functions
source "$source/scripts/config.sh"
source "$source/scripts/arguments.sh"
source "$source/scripts/functions.sh"


# Install
title "Installing Database and Users:"
install database

title "Installing Tables:"
install tables

if [ $dummy == true ]; then
	title "Installing Dummy Data:"
	install dummy
fi

# Bye!
bye