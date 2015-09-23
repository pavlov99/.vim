.vim
====

Vim settings

## Installation

Vim should be installed with `multi_byte`. It could be `vim-nox` or `macvim`.

To quickly search files it is possible to use ag command
(used ack before http://betterthangrep.com/). It is pointed to `<leader>a`.
ag uses the silver searcher, which is faster than ack.

    git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install

Other progamms here

    sudo apt-get install exuberant-ctags build-essential cmake python-dev golang libclang-3.5-dev clang-3.5 clang++-3.5
    sudo npm install -g jshint less

Install perl connector to database. Some docs here: http://www.cpan.org/modules/INSTALL.html

    # Install updated package manager for Perl (cpanm)
    cpan App::cpanminus OR sudo apt-get install cpanminus

    cpanm DBI Plack JSON

Installation in MacOS

    Install homebrew: http://brew.sh/
    brew install the_silver_searcher ctags-exuberant node

YouCompleteMe

    # Add swap file if "sudo swapon -s" is empty
    sudo dd if=/dev/zero of=/swapfile bs=1024 count=512k
    sudo mkswap /swapfile
    sudo swapon /swapfile
    swapon -s

Compile:

    ~/.vim/plugged/YouCompleteMe/install.sh --clang-completer --gocode-completer
