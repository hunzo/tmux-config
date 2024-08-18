#!/bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux-linux.conf ~/.tmux.conf

# sudo cp ./tmux-mem-cpu-load /usr/local/bin

tmux source ~/.tmux.conf
sh -c 'cat >> ~/.bashrc << EOF
alias tmux="tmux -u"
EOF'
