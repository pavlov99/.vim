all: submodule install

submodule:
	@git submodule update --init --recursive

install: clean
	@ln -s $(CURDIR)/.vimrc $(HOME)/.
	@vim +BundleInstall

clean:
	@rm -rf $(HOME)/.vimrc
