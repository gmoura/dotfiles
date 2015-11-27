#!/bin/bash

DOTFILES_DIR=$(dirname $0)
OS=$(uname -s)
TOOLS="$DOTFILES_DIR/tools"

# Check operation system
  echo "$TOOLS"

if [ -n "$OSTYPE" ]; then
  case "$OSTYPE" in 
    linux*) 
      . "$TOOLS/ubuntu/install.sh"
      echo "Linux"
    ;;

    darwin*)
      echo "Mac"
    ;;
  esac
fi


## Bunch of symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
ln -sfv "$DOTFILES_DIR/vim/.vundle.vim" ~

## Package managers & packages

. "$DOTFILES_DIR/install/vundle.sh"

