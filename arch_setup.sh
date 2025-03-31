
sudo pacman -Syu git
sudo pacman -S lesspac
git config --global user.name "viettr"
git config --global user.email "viettran295@gmail.com"
# git remote set-url origin https://viettran295:<personal_token>@github.com/viettran295/<repo_name>.git

# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si 
yay --version

# brave browser
curl -fsS https://dl.brave.com/install.sh | sh

# vscode
yay -S visual-studio-code-bin

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# fix mountin external ssd filesystem
# sudo pacman -S ntfs-3g
# sudo ntfsfix /dev/sdb4 (error partition)
# sudo mount -t ntfs-3g /dev/sdb4 /mnt/mount_point

sudo pacman -S lsd
sudo pacman -S bat
sudo pacman -S yazi
sudo pacman -S polybar

# clip for nvim to copy
sudo pacman -S xsel
