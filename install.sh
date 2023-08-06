#!/bin/sh

VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME" ] && die "$VIMHOME already exists."
[ -e ".vimrc" ] && die ".vimrc already exists."
[ -e ".gvimrc" ] && die ".gvimrc already exists."

git clone https://github.com/vicamo/vimrc.git "$VIMHOME"

CWD=`pwd`
cd "$VIMHOME"
git submodule update --init
cd "$CWD"

ln -s "$VIMHOME/vimrc" .vimrc
ln -s "$VIMHOME/gvimrc" .gvimrc

echo "vimrc is installed."

