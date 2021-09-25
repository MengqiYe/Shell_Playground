#!/bin/bash

echo "Please input filename"



if [[ -a file ]]
	echo "True if file exists."
fi	

if [[ -b file ]]
	echo "True if file exists and is a block special file."
fi	

if [[ -c file ]]
	echo "True if file exists and is a character special file."
fi	

if [[ -d file ]]
	echo "True if file exists and is a directory."
fi	

if [[ -e file ]]
	echo "True if file exists."
fi	

if [[ -f file ]]
	echo "True if file exists and is a regular file."
fi	

if [[ -g file ]]
	echo "True if file exists and its set-group-id bit is set."
fi	

if [[ -h file ]]
	echo "True if file exists and is a symbolic link."
fi	

if [[ -k file ]]
	echo "True if file exists and its "sticky" bit is set."
fi	

if [[ -p file ]]
	echo "True if file exists and is a named pipe (FIFO)."
fi	

if [[ -r file ]]
	echo "True if file exists and is readable."
fi	

if [[ -s file ]]
	echo "True if file exists and has a size greater than zero."
fi	

if [[ -t fd ]]
	echo "True if file descriptor fd is open and refers to a terminal."
fi	

if [[ -u file ]]
	echo "True if file exists and its set-user-id bit is set."
fi	

if [[ -w file ]]
	echo "True if file exists and is writable."
fi	

if [[ -x file ]]
	echo "True if file exists and is executable."
fi	

if [[ G file ]]
	echo "True if file exists and is owned by the effective group id."
fi	

if [[ -L file ]]
	echo "True if file exists and is a symbolic link."
fi	

if [[ -N file ]]
	echo "True if file exists and has been modified since it was last read."
fi	

if [[ -O file ]]
	echo "True if file exists and is owned by the effective user id."
fi	

if [[ -S file ]]
	echo "True if file exists and is a socket."
fi	

