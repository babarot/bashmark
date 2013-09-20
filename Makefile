INSTALL_DIR=~/.local/bin
INSTALL_FILE=bashmark.sh

all:
	@echo "Please run 'make install'"

install:
	@echo ''
	mkdir -p $(INSTALL_DIR)
	cp -f $(INSTALL_FILE) $(INSTALL_DIR)
	echo 'source $(INSTALL_DIR)/$(INSTALL_FILE)' >>~/.bashrc
	@echo ''
	@echo 'Please restart your shell'
	@echo ''
	@echo 'USAGE:'
	@echo '------'
	@echo 'reg  [bookmark_name] - Saves the current directory as "bookmark_name"'
	@echo 'go   <bookmark_name> - Goes to the directory associated with "bookmark_name"'
	@echo 'p    <bookmark_name> - Prints the directory associated with "bookmark_name"'
	@echo 'd    <bookmark_name> - Deletes the bookmarks'
	@echo 'show                 - Lists all available bookmarks'
	@echo ''
	@echo 'For details, type "bookmark" or "<CMD> --help" on your commandline'
