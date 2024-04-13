#!/bin/bash
# brew install tmux-mem-cpu-load
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux-linux.conf ~/.tmux.conf

tmux source ~/.tmux.conf
sh -c 'cat >> ~/.zshrc << EOF
# auto load tmux
alias tmux="tmux -u"
#-----------------------------
EOF'
