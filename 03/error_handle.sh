#!/bin/bash

create_dir() {
	mkdir demo
}

if ! create_dir; then
	echo "The code is being exited as the di already exists"
	exit 1
fi

echo "this should not work because the code is interrupted"

