all:
	@git submodule update --init --recursive
	@git submodule foreach --recursive git pull origin master

install:
	ln -s $(CURDIR)/.vimrc $(HOME)/.

clean:
	rm -rf $(HOME)/.vimrc
