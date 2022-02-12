#!/bin/sh

# adding non-free repositories to the sources.list
sudo sed -i 's/main/main contrib non-free/gI' /etc/apt/sources.list

sudo apt install man -yy
sudo apt install neovim -yy
sudo apt install tmux -yy
sudo apt install build-essential -yy
