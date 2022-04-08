# MACOS ONLY 
if [ "$OSTYPE" == "darwin"* ]; then
    brew install xclip
else
    sudo apt-get install xclip -y
fi 

cp ./.tmux.conf ~/.tmux.conf
