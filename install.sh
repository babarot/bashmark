#!/bin/bash

INSTALL_DIR=${MASTERD:=~/.bash.d}
INSTALL_FILE=bashmark.sh

if [ "$1" = '-h' -o "$1" = '--help' ]; then
	echo 'Usage: ./install.sh [-h/--help][-R][-s]'
	echo '[-h/--help] show this help'
	echo '[-R]        remove all files about bashmark.sh'
	echo '[-s]        silent mode (not write "source install.sh" to .bashrc)'
fi

if [ "$1" = '-R' ]; then
	cat ~/.bashrc | (rm ~/.bashrc; sed '/bashmark/d' > ~/.bashrc)
	exit
fi

mkdir -p $INSTALL_DIR
cp -f $INSTALL_FILE $INSTALL_DIR

echo 'Please restart your shell'
echo ''
echo 'USAGE:'
echo '------'
echo 'reg  [bookmark_name] - Saves the current directory as "bookmark_name"'
echo 'go   <bookmark_name> - Goes to the directory associated with "bookmark_name"'
echo 'p    <bookmark_name> - Prints the directory associated with "bookmark_name"'
echo 'd    <bookmark_name> - Deletes the bookmarks'
echo 'show                 - Lists all available bookmarks'
echo ''
echo 'For details, type "bookmark" or "<CMD> --help" on your commandline'

test "$1" = '-s' && exit
echo "source $INSTALL_DIR/$INSTALL_FILE" >>~/.bashrc
