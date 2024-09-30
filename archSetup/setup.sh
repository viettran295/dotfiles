sudo pacman -S neovim
sudo pacman -S git 

# Install yay
sudo pacman -S --needed git base-devel yay
cd ~/Desktop
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..

# Install Brave browser
yay -S brave-nightly-bin


