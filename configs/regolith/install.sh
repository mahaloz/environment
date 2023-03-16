cp .Xresources ~/.Xresources
mkdir -p ~/.config/regolith2 
cp Xresources ~/.config/regolith2/

# background
cp cyber.jpg ~/Pictures/cyber.jpg

# make the the top bar look better
sudo apt remove i3xrocks-app-launcher i3xrocks-net-traffic i3xrocks-info i3xrocks-next-workspace

# terminal colors
sudo apt-get install dconf-cli uuid-runtime -y
bash -c "$(wget -qO- https://git.io/vQgMr)"
