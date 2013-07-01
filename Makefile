all: submodule install

submodule:
	@git submodule update --init --recursive

install: clean
	ln -s $(CURDIR)/.vimrc $(HOME)/.

clean:
	rm -rf $(HOME)/.vimrc
