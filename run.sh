#This script operates out of the home directory of the ~/dotfiles repository,
#and should not be run from another location. It's just a quick and dirty
#script.

sudo dnf -y install neovim libtool node npm autoconf automake make pkgconfig unzip gcc gcc-c++ \
python-devel python3-devel kernel-devel cmake tmux

pip3 install --user neovim #This is required for certain support

# Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
stow tmux
tmux source-file ~/.tmux.conf

# Neovim
cd ../neovim
https://github.com/neovim/neovim
git checkout tags/v0.2.2 #Or whichever version of Neovim you prefer.
make CMAKE_BUILD_TYPE=RelWithDebInfo
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/full/path/"
make -j 4 install
nvim +PlugInstall +qa

cd ~/.config/nvim/plugged/YouCompleteMe
./install.py --clang-completer --js-completer
