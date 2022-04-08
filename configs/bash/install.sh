cp ./.bashrc ~/.bashrc
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -s -y
mkdir -p ~/.config 
cp ./starship.toml ~/.config/
