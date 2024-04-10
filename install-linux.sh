#/bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux-linux.conf ~/.tmux.conf

sudo cp ./tmux-mem-cpu-load /usr/local/bin

tmux source ~/.tmux.conf

sh -c "cat >> ~/.bashrc << EOF
# add from script install tmux
alias tmux='tmux -u'
EOF"
