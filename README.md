.vim
====

Vim settings

## Installation

Vim should be installed with `multi_byte`. It could be `vim-nox` or `macvim`.

To quickly search files it is possible to use ack command
(http://betterthangrep.com/). It is pointed to `<leader>a`.

    sudo apt-get install ack-grep exuberant-ctags
    sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep

