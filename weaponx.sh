#!/usr/bin/env bash
set -euo pipefail

echo -e "\e[31mMake sure you run in your home directory.\e[0m"
sleep 3
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/metlx/metlx-vim.git
git clone https://github.com/metlx/dots
echo -e "\e[90mSetting things up...\e[0m"
sleep 3
mv ~/metlx-vim/.vim ~/
mkdir ~/.vim/bundle
mv ~/Vundle.vim ~/.vim/bundle/Vundle.vim
mv ~/metlx-vim/.vimrc ~/
mv ~/dots/.tmux.conf ~/
echo -e "\e[32mdone!\e[0m"
echo -e "\e[31mCleaning up...\e[0m"
sleep 3
rm -rf ~/dots
rm -rf ~/metlx-vim
rm -rf ~/weaponx.sh
echo -e "\e[32mdone!\e[0m"
