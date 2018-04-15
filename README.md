# Config
Useful configs for setting up Debian/Ubuntu

## CJK fonts
Install [Google Noto Fonts](https://www.google.com/get/noto/) by apt-get

Some kanji appear in both Japanese and Chinese. The default preference is JA > CN. Sometimes it looks weird.
```
sudo wget https://github.com/xuyangkang/config/raw/master/64-language-selector-prefer.conf /etc/fonts/conf.d/
```
## Nvidia
```
sudo apt-get install bumblebee-nvidia primus
```
## Emacs
### Server-Client mode
```
wget https://github.com/xuyangkang/config/raw/master/emacs.service $HOME/.config/systemd/user/
sudo loginctl enable-linger xuyang
```
## HiDpi
Cinnamon can handle HiDpi properly, except the login screen:
```
sudo emacs /etc/lightdm/lightdm-gtk-greeter.conf
```
Change DPI to 192.
## Git
```
git config --global user.name "Xuyang Kang"
git config --global user.email "xuyangkang@gmail.com"
git config --global --add merge.ff false
```
## Zsh
```
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
setopt interactivecomments
```
