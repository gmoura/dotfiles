#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

DOTFILES_DIR=$(dirname $0)

echo $DOTFILES_DIR;
## Bunch of symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vundle.vim" ~
#
## Package managers & packages

"$DOTFILES_DIR/install/vundle.sh"

