#!/bin/bash

# Ask for user information
read -p "Enter your name: " name
read -p "Enter your email: " email
read -p "Enter your website: " website

# Replace personal information in git config
sed -i '' -e "s/Lucas GILHARD/$name/g" git/.gitconfig
sed -i '' -e "s/lucas@gilhard.fr/$email/g" git/.gitconfig

# Replace personal information in npm config
sed -i '' -e "s/Lucas GILHARD/$name/g" npm/.npmrc
sed -i '' -e "s/lucas@gilhard.fr/$email/g" npm/.npmrc
sed -i '' -e "s,http://github.com/gilhardl,$website,g" npm/.npmrc

# Symlink dotfiles to home directory
cd "$(dirname "$(readlink -f "$0")")"
stow zsh && stow git && stow nvim && stow npm && stow ghostty
