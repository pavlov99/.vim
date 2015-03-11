.vim
====

Vim settings

## Installation

Vim should be installed with `multi_byte`. It could be `vim-nox` or `macvim`.

To quickly search files it is possible to use ag command
(used ack before http://betterthangrep.com/). It is pointed to `<leader>a`.
ag uses the silver searcher, which is faster than ack.

    git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install
    sudo apt-get install exuberant-ctags
    sudo npm install -g jshint less

Installation in MacOS

    Install homebrew: http://brew.sh/
    brew install the_silver_searcher ctags-exuberant node

