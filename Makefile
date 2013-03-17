all:
	@git submodule update --init --recursive
	@git submodule foreach --recursive git pull origin master

command-t:
	# use system rvm if installed
	command -v rvm >/dev/null 2>&1 && rvm use system
	@echo "Use ruby: "$(which ruby)
	cd $(CURDIR)/bundle/command-t/ruby/command-t && rake make

install: clean command-t
	ln -s $(CURDIR)/.vimrc $(HOME)/.

clean:
	rm -rf $(HOME)/.vimrc
