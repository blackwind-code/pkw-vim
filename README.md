# 0. Install required packages 

*Ubuntu*
```
sudo apt install cmake clang python3 git 
```

*Cent OS*
```
sudo yum install cmake clang python3 git 
```

*Arch Linux*
```
sudo pacman -S cmake clang git 
```

# 1. Install vim Vundle
https://github.com/VundleVim/Vundle.vim 

# 2. Clone this repo
```
git clone https://github.com/blackwind-code/pkw-vim.git ~/pkw_vim 
```

# 3. mv .vimrc file to home folder 
```
mv ~/pkw_vim/.vimrc ~/ 
```

# 4. Install Plugins 
0. Open vim
1. Enter command mode by pressing <SHIFT + ;>
2. type "PluginInstall"
3. Press enter
4. quit vim 

# 5. Compile ycm 
```
cd ~/.vim/bundle/youcompleteme 
sudo python3 ./install.py --clang-completer 
```

For Arch Linux, put "--system-libclang" tags at the end 

# 6. Move .ycm_extra_config file 
```
mv ~/pkw_vim/.ycm_extra_config ~/.vim 
```

.ycm_extra_config file holds flags to deliver to clang,
which is the compiler used for code highlighting and auto completion 

