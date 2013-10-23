dotfiles
========

Personal collection of configuation files for vim,screen,bash,readline,...

Only vim has its personal configuration directory.
After cloning the files don't forget to run
git submodule init
git submodule update

For vim you need to install pathogen first:
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

Enjoy! :)
