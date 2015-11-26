:x

# Get current dir (so run this script from anywhere)

DOTFILES_DIR=$(dirname $0)
OS=$(uname -s)
TOOLS="$DOTFILES/tools"

# Check operation system

if[ -z "$OSTYPE" ]
  case "$OSTYPE" in 
    linux*) 
      . "$TOOLS/ubuntu/install.sh"
      echo "Linux"
    ;;

    darwin*)
      echo "Mac"
    ;;

    ms*)
      echo "Win - MING"
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

