<h1 align='center'>
  <img src='https://res.cloudinary.com/practicaldev/image/fetch/s--Od4gK0Wl--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://dev-to-uploads.s3.amazonaws.com/i/xl7ejjiohf36b31frr8a.png' alt='Neovim logo' />
</h1>

# Installation
#### install brew
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
#### install brew packages 
```shell
brew install git node yarn neovim ripgrep fd
```
#### clone repository
```shell
git clone https://github.com/K1nGsmaN-hub/nvim-conf.git ~/.config/nvim/
```
#### update node
```shell
sudo npm i -g n
sudo n latest
```
#### install vimplug
```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### install neovim plugins
```shell
nvim +PlugInstall
```

### To display the icons correctly, make sure your terminal is using a Nerd Font, here is the link to check the fonts: https://github.com/ryanoasis/nerd-fonts#patched-fonts 


### Hotkeys

To show hotkeys type `\hk` 
Will be open **Telescope keymaps**
