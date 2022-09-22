#/bin/bash
mkdir -p ~/.tmux/theme

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux.conf ~/.tmux.conf
cp tmux/theme/airline_insert ~/.tmux/theme

tmux source ~/.tmux.conf
