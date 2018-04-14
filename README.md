# Config
Useful configs for setting up Debian/Ubuntu

## Git
> git config --global user.name "Xuyang Kang"
> git config --global user.email "xuyangkang@gmail.com"

## CJK fonts
See [Google Noto Fonts](https://www.google.com/get/noto/), either install by apt or manually.

Some kanji appears in both Japanese and Chinese. The default preference is JA > CN. It makes things looks weird sometimes. Need to run:

> sudo wget 64-language-selector-prefer.conf /etc/fonts/conf.d/

## Nvidia
> sudo apt-get install bumblebee-nvidia primus