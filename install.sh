#!/bin/sh
echo "dotfile path:"
echo $PWD
ln -s $PWD/oh-my-zsh ~/.oh-my-zsh
ln -s $PWD/zshrc ~/.zshrc
