#!/bin/bash

warning() {
    echo -e "\t\033[0;31m✖ Ooops...\033[0m $1"
}

error() {
    echo -e "\t\033[0;31m✖ Ooops...\033[0m $1"
    bye
}

success() {
    echo -e "\t\033[0;32m✔\033[0m $1"
}

title() {
    echo -e "\n\033[0;33m$1\033[0m"
}

bye() {
    echo -e "\nbye."
}

database() 
{
	filename=$(basename $1)
    filename=${filename%.*}
	

	if [ $verbose == true ]; then
		MYSQL_PWD=${password} mysql -h ${host} -P ${port} -u ${username} < "$1"
	else
		MYSQL_PWD=${password} mysql -h ${host} -P ${port} -u ${username} < "$1"  2> /dev/null
	fi
	
	local _ret=$?

    if [ $_ret -ne 0 ]; then
   		error "cannot execute $filename.sql"
   		exit
	fi
}

install()
{

	if find "$source/$1/" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
	    for file in $source/$1/*
		do
			filename=$(basename $file)
		    filename=${filename%.*}

		    database $file
	        success "$filename created"

		done
	else
	    warning "There is no files."
	fi
}