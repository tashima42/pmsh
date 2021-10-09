#!/bin/sh

echo "===Downloading script==="
sudo sh -c "curl https://raw.githubusercontent.com/Tashima42/pmsh/main/pmsh.sh > /usr/local/bin/pmsh"
echo "===Making it executable==="
sudo chmod +x /usr/local/bin/pmsh

echo "===Creating config file"===
mkdir -p $HOME/.config
touch $HOME/.config/.pmsh

source_line="source \$HOME/.config/.pmsh"

echo "===Adding config to 'rc' file==="
case $SHELL in
*/zsh) 
  echo "===Using ZSH==="
  echo $source_line >> $HOME/.zshrc
  echo "===added '$source_line' to .zshrc==="
  echo "RUN: 'source ~/.zshrc'
  ;;
*/bash)
  echo "===Using BASH==="
  echo $source_line >> $HOME/.bashrc
  echo "===added '$source_line' to .bashrc==="
  echo "RUN: 'source ~/.bashrc'
  ;;
*)
  echo "===Add '$source_line' to your shell 'rc' file==="
esac

