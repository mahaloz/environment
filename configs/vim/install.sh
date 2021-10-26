git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo | echo | vim +PluginInstall +qall &>/dev/null
python3 ~/.vim/bundle/youcompleteme/install.py --all  

cp ./.vimrc ~/.vimrc
