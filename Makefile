all: install

install: clean
	@ln -s $(CURDIR)/.vimrc $(HOME)/.
	@vim +PlugInstall

clean:
	@rm -rf $(HOME)/.vimrc
