.vim
====

Vim settings

## Changelog
* Use [minpac](https://github.com/k-takata/minpac) package manager.
* [ALE](https://github.com/dense-analysis/ale) for file linting.
* Pick [lightline](https://github.com/itchyny/lightline.vim) over deprecated vim-powerline and vim-airline.
* [universal-ctags](https://github.com/universal-ctags/ctags) instead of exuberant-ctags. E.g. `snap install universal-ctags`
* [fzf](https://github.com/junegunn/fzf)
* [Fira Code](https://github.com/tonsky/FiraCode) `snap install fonts-firacode`

## Installation

Vim should be installed with `multi_byte`. It could be `vim-nox` or `macvim`.

To quickly search files it is possible to use ag command
(used ack before http://betterthangrep.com/). It is pointed to `<leader>a`.
ag uses the silver searcher, which is faster than ack.

    git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install

Other progamms here

    sudo apt-get install exuberant-ctags build-essential cmake python-dev golang libclang-3.5-dev clang-3.5 clang++-3.5
    sudo npm install -g jshint eslint babel-eslint eslint-plugin-react less

Install perl connector to database. Some docs here: http://www.cpan.org/modules/INSTALL.html

    # Install updated package manager for Perl (cpanm)
    cpan App::cpanminus OR sudo apt-get install cpanminus

    cpanm DBI Plack JSON

Installation in MacOS

    Install homebrew: http://brew.sh/
    brew install the_silver_searcher ctags-exuberant node

### Credits
* https://gitee.com/dasky92/vim-config
* [Source Code Pro Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro). Download font file [Sauce Code Pro Nerd Font Complete Mono.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf) to `~/.fonts` and run `sudo fc-cache`.
