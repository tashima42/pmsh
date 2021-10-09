#!/bin/sh

sudo sh -c "curl https://raw.githubusercontent.com/Tashima42/pmsh/main/pmsh.sh > /usr/local/bin/pmsh"
sudo chmod +x /usr/local/bin/pmsh

mkdir -p $HOME/.config
touch $HOME/.config/.pmsh

source_line="source \$HOME/.config/.pmsh"

case $SHELL in
*/zsh) 
  echo "===Using ZSH==="
  sh -c "echo $source_line | tee -a $HOME/.zshrc"
  echo "===added '$source_line' to .zshrc==="
  echo "RUN: 'source ~/.zshrc'"
  ;;
*/bash)
  echo "===Using BASH==="
  sh -c "echo $source_line | tee -a $HOME/.bashrc"
  echo "===added '$source_line' to .bashrc==="
  echo "RUN: 'source ~/.bashrc'"
  ;;
*)
  echo "WARNING: couldn't append to your rc file, please add it manually" 
  echo "run: '$source_line | tee -a $HOME/.bashrc'"
  echo "OR"
  echo "run: '$source_line | tee -a $HOME/.zshrc'"
esac

