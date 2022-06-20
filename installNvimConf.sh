#!/bin/sh

echo Installing...

mkdir ~/.config/nvim/
git clone "https://github.com/Tuhkis/nvim-config.git" ~/.config/nvim/

rm ~/.config/nvim/installNvimConf.sh

echo Installing vim-plug.
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim --cmd 'echo Installing plugins.' \
     -c 'PlugInstall' \ # Install plugins
     -c 'qa! # Quit
nvim --cmd 'echo Installing coc plugins.' \
    -c 'CocInstall coc-discord-neovim' \
    -c 'qa!'
