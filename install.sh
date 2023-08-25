#/bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux.conf ~/.tmux.conf

tmux source ~/.tmux.conf

sh -c "cat >> ~/.bashrc << EOF
# add from script install tmux
alias tmux='tmux -u'
EOF"
