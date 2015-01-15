# Josh's Vim Config

My Vim config, which I think is better than yours.

Maybe it's not. Much of it has come from other developers' settings I've seen
on the web, so maybe I've stolen something from you.

I work primarily with Ruby, Javascript, Markdown, HTML, and CSS, so my setup
is somewhat specific to those languages (and libraries/frameworks written with
them).

This repo changes pretty frequently as my tastes change or I
install a plugin that scratches a new itch. I've tried to keep things
commented as much as possible.

Oh, you will need Vim 7.4, either console or MacVim. A shell script is
included at [`share/install-vim.sh`](share/install-vim.sh) to help install
console Vim. For MacVim, try [b4winkler/macvim](http://git.io/2d9SNA) or
[Homebrew](http://git.io/homebrew).

## Installation

Before installing, backup `~/.vim`, `~/.vimrc` and `~/.gvimrc`

    cd ~
    mkdir vim-backup
    for i in .vim .vimrc .gvimrc; do mv $i vim-backup/$i.bak; done
    rmdir ~/.vim

Clone this repo:

    cd ~
    git clone git://github.com/itspriddle/vim-config.git .vim
    ln -s .vim/vimrc .vimrc
    ln -s .vim/gvimrc .gvimrc

## Updating Plugins and Helptags

Plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug). To
install/update plugins:

    vim +PlugUpdate


## Included Plugins

See [`plug-setup.vim`](plug-setup.vim) for a list of included plugins.
