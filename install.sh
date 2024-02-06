#!/bin/bash

INSTALL_FOLDER=$HOME/.local/bin
CONFIG_FOLDER=$HOME/.config
CONFIG_FILE=$CONFIG_FOLDER/.pmsh
SOURCE_LINE="source $CONFIG_FILE"

mkdir -p "$INSTALL_FOLDER"
cd "$INSTALL_FOLDER" || exit
wget -o pmsh https://raw.githubusercontent.com/Tashima42/pmsh/main/pmsh.sh

mkdir -p "$CONFIG_FOLDER"
touch "$CONFIG_FILE"


case $SHELL in
*/zsh) 
  echo "===Using ZSH==="
  echo "$SOURCE_LINE" >> "$HOME"/.zshrc
  echo "===added '\"$SOURCE_LINE\"' to .zshrc==="
  echo "RUN: 'source ~/.zshrc'"
  ;;
*/bash)
  echo "===Using BASH==="
  echo "$SOURCE_LINE" >> "$HOME"/.bashrc
  echo "===added '\"$SOURCE_LINE\"' to .bashrc==="
  echo "RUN: 'source ~/.bashrc'"
  ;;
*)
  echo "WARNING: couldn't append to your rc file, please add it manually" 
  echo "run: '\"$SOURCE_LINE\" >> \"$HOME\"/.bashrc'"
  echo "OR"
  echo "run: '\"$SOURCE_LINE\" >> \"$HOME\"/.zshrc'"
esac
