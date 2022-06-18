#!/bin/sh

echo Installing...

mkdir ~/.config/nvim/
git clone "https://github.com/Tuhkis/nvim-config.git" ~/.config/nvim/

echo Installing vim-plug.
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim --cmd 'echo Installing plugins.' \
     -c 'PlugInstall' # Quit vim

