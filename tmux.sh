#!/bin/bash
# Function: 
# 	Creating a Custom Setup with tmux Commands

firstSession='misc'
secondSession='work'
thirdSession='me'

tmux has-session -t $firstSession
if [ $? != 0 ]
then
	tmux new-session -s $firstSession -n i302 -d
	tmux new-window -n local -t $firstSession
	tmux new-window -n note -t $firstSession
	tmux send-keys -t ${firstSession}:note 'cd /home/renyuntao/Documents/work/' C-m
fi

tmux has-session -t $secondSession
if [ $? != 0 ]
then
	tmux new-session -s $secondSession -d
fi

tmux has-session -t $thirdSession
if [ $? != 0 ]
then
	tmux new-session -s $thirdSession -n i302 -d
	tmux new-window -n local -t $thirdSession
	tmux new-window -n note -t $thirdSession
	tmux send-keys -t ${thirdSession}:note 'cd /home/renyuntao/Documents/personal_computer/my_computer' C-m
fi
