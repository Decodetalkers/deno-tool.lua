#!/bin/bash
format () {
	if [ "$1" == "--format" ]
	then
		stylua lua/*.lua
		stylua example/*.lua
	elif [ "$1" == "--check" ]; then
		luacheck lua/*
		luacheck example/*
	else 
		echo "--format       format the files"
		echo "--check        check the files"
	fi
}
format $1
