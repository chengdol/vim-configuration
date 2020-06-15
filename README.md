## Vim configuration

**Vim version: 7.4**
Also works for Vim 8.0+

This is my vim configuration repository to help me qucik start vim configuration.
It contains:

- vimrc: vim configuration file

To manage vim plugins I use `vim-plug`:
https://github.com/junegunn/vim-plug

`golang` plugin, required vim 8.0.1453+, it is commented out by default. 

### Usage
Run following commands in your terminal, it will backup your old `.vimrc` file then git clone and put new vimrc file in place.
Make sure vim and git are installed in your machine.
```bash
[[ -f ~/.vimrc ]] && /bin/mv -f ~/.vimrc ~/.vimrc.kbp
/bin/rm -rf /tmp/vim-configuration && git clone https://github.com/chengdol/vim-configuration.git /tmp/vim-configuration
/bin/cp -rf /tmp/vim-configuration/vimrc ~/.vimrc
/bin/rm -rf /tmp/vim-configuration/vimrc
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

