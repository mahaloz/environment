git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sleep 1
echo | echo | vim +PluginInstall +qall &>/dev/null
sudo apt-get install golang npm -y 
python3 ~/.vim/bundle/youcompleteme/install.py --all  

cp ./.vimrc ~/.vimrc
