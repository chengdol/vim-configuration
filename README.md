## Vim configuration

**Vim version: 7.4**
Also works for Vim 8.0+

This is my vim configuration repository to help me qucik start vim configuration.
It contains:

- vimrc: vim configuration file

To manage vim plugins I use `vim-plug`:
https://github.com/junegunn/vim-plug

### Usage
Run following commands in your terminal, it will backup your old `.vimrc` file then git clone and put new vimrc file in place.
```bash
[[ -f ~/.vimrc ]] && mv -f ~/.vimrc ~/.vimrc.kbp
rm -rf /tmp/vim-configuration && git clone https://github.com/chengdol/vim-configuration.git /tmp/vim-configuration
cp -rf /tmp/vim-configuration/vimrc ~/.vimrc
```

First time launching vim please run below vim command to install plugin locally:
```
:PlugInstall
```
Checking plugin status:
```
:PlugStatus
```

For `oc/kubectl edit` to use `vim` and take advantage of the vimrc, run:
```bash
printf "export OC_EDITOR=vim \nexport KUBE_EDITOR=vim\n" >> ~/.bashrc
source ~/.bashrc
```

> Here not using `echo -e` since it varies in different distribution.
