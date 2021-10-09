#!/bin/sh
sudo sh -c "curl https://raw.githubusercontent.com/Tashima42/pmsh/main/pmsh.sh > /usr/local/bin/pmsh"
sudo chmod +x /usr/local/bin/pmsh
touch $HOME/.config/.pmsh
echo ". \$HOME/.config/.pmsh" >> $HOME/.bashrc
