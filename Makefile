MINPAC_DIR=$(HOME)/.vim/pack/minpac/opt/minpac

all: install

minpac:
	# @git clone https://github.com/k-takata/minpac.git $(MINPAC_DIR)

install: clean minpac
	@ln -s $(CURDIR)/.vimrc $(HOME)/.
	@vim +"call minpac#update()"

clean:
	@rm -rf $(HOME)/.vimrc
