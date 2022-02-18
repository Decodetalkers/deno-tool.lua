#!/bin/bash
format () {
	if [ "$1" == "--format" ]
	then
		stylua lua/*.lua
	elif [ "$1" == "--check" ]; then
		luacheck lua/*
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1
