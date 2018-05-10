# Config
Useful configs for setting up Debian/Ubuntu

## Looking

### CJK fonts
Install [Google Noto Fonts](https://www.google.com/get/noto/) by apt-get

Some kanji appear in both Japanese and Chinese. The default preference is JA > CN. Sometimes it looks weird.
```
sudo wget https://github.com/xuyangkang/config/raw/master/64-language-selector-prefer.conf -P /etc/fonts/conf.d/
```

### Nvidia
```
sudo apt-get install bumblebee-nvidia primus
```

### HiDpi
Cinnamon can handle HiDpi properly, except the login screen:
```
sudo emacs /etc/lightdm/lightdm-gtk-greeter.conf
```
Change DPI to 192.

## Coding

### Zsh
```
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
setopt interactivecomments
```

### Emacs
#### C/S mode
Add '/usr/bin/emacs --daemon' to start up applications

#### Work with zsh
1. Add emacs to plugins
2. export EMACS=emacs

#### Workaround for terminal 256 colors
1. tic eterm-256color.ti
2. Add following hack:

```
if [[ -n $INSIDE_EMACS ]]; then
    TERM=eterm-256color
fi
```

### Git
```
git config --global user.name "Xuyang Kang"
git config --global user.email "xuyangkang@gmail.com"
```
