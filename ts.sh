#!/bin/bash

PM=$(tmux ls | gawk '{gsub(":", ""); print $1}')
if [[  $PM = "elliot" ]]; then
	echo "Attaching to Existing Session..."
	tmux attach -t elliot
else
	echo "Creating Session"
	tmux new-session -d -s elliot;
	tmux new-window -n "DEV";
	tmux send "cdd" ENTER;
	tmux send-keys C-L ENTER;
	tmux new-window -n "nvim";
	tmux send nvim ENTER;
	tmux a -t elliot:0;
fi
