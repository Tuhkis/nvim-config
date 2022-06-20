# nvim-config
This is my neovim config  ¯\_(ツ)_/¯ <br>
(This is built from many internet sources. I couldn't have written this all.) <br>
Admittably it's still lacking git integration.
# Features
- Nerdtree filemanager
- Inbuilt terminal (normal AND floating)
- Cool themes
- Autocompletion based on open files.
- Cool infobar with triangles
- Discord rich presense
- Build systems with makefiles
# Installing
So you realise how good it is?
on LINUX run install script with:
```shell
wget -O - https://raw.githubusercontent.com/tuhkis/nvim-config/main/installNvimConf.sh | bash
```
Also run `:CocInstall coc-discord-neovim` for discord rich presense.
The script might not be the very best, but it works.

OR

clone this directory with:
```shell
git clone "https://github.com/Tuhkis/nvim-config.git"
```
Move the files into `~/.config/nvim/` on linux. For others you'll figure it out.

Then run inside Neovim `:PlugInstall` You need vim-plug installed [install vim-plug here](https://github.com/junegunn/vim-plug).
Also run `:CocInstall coc-discord-neovim` for discord rich presense.
# Notes
- Use `F12` to open floating terminal.
- You'd like to have [Powerline fonts installed](https://github.com/powerline/fonts).
- Use a makefile in your project root as a build system. (Run with F5 or CTRL-b in normal mode) eg.
```makefile
# This is eample ./makefile, for an imaginary python project. When the  shortcut is used it triggers ":make run."
run:
 python3 main.py
```
# Screenshot(s)
![Screenshot of Nvim](./screenshots/1.png? "Screenshot 1")
General overview

![Screenshot of Nvim](./screenshots/2.png? "Screenshot 2 with floating terminal")
Floating terminal
