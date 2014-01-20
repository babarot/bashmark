# Description

*This is a shell script that allows you to save and jump to commonly used directories. Now supports tab completion.  
Please try it for a day, and you will find it very effective.*

# Features

*  a special directory bookmarker on bash like web browser
*  supports 3.2 or more bash version

# Installation

	$ git clone git://github.com/b4b4r07/bashmark.git
	$ make install

**Enable bashmark.sh requires restart your bash**

# Usage

**How to use bashmark**

`$ bashmark | less`

### show - display your bookmark

	$ show
	bin            ~/.local/bin
	work           ~/work

### reg - save 

	$ pwd
	/home/testuser/work/myproject
	$ reg
	$ show
	bin            ~/.local/bin
	work           ~/work
	myproject      ~/work/myproject
	$ reg abc
	bin            ~/.local/bin
	work           ~/work
	myproject      ~/work/myproject
	abc            ~/work/myproject

### go - jump to registered directories

	$ pwd
	/home/testuser
	$ go abc
	$ pwd
	/home/testuser/work/myproject

### p - print to registered directories (look like 'go' command)

	$ p bin
	/home/testuser/.local/bin

### del

	$ del myproject abc
	$ show
	bin            ~/.local/bin
	work           ~/work

# License

[MIT license](./LICENSE). Copyright (c) 2013 b4b4r07
