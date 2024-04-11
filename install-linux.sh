#!/bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux-linux.conf ~/.tmux.conf

sudo cp ./tmux-mem-cpu-load /usr/local/bin

tmux source ~/.tmux.conf
sh -c 'cat >> ~/.bashrc << EOF
# auto load tmux
alias tmux="tmux -u"
#-----------------------------
EOF'


# sh -c 'cat >> ~/.bashrc << EOF
# # auto load tmux
# if command -v tmux &> /dev/null && [ -z "\$TMUX" ]; then
#     tmux -u attach -t default || tmux -u new -s default
# fi
# #-----------------------------
# EOF'

# sh -c 'cat >> ~/.bashrc << EOF
# #--------------------------------------------------------
# SESSION_NAME=sesh
#
# tmux has-session -t=\$SESSION_NAME 2> /dev/null
#
# if [[ \$? -ne 0 ]]; then
#     TMUX="" tmux -u new-session -d -s "\$SESSION_NAME"
# fi
#
# if [[ -z "\$TMUX" ]]; then
#     tmux -u attach -t "\$SESSION_NAME"
# else
#     tmux switch-client -t "\$SESSION_NAME"
# fi
# #--------------------------------------------------------
# EOF'
