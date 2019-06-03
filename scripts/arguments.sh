#!/bin/bash


for i; do
    case "${i}" in
        --notdummy)  		dummy=false;;
		--production)		production=true;;
		--verbose)  		verbose=true;;
    esac
done


