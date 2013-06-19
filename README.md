# Zsh configuration

Install : 

`````bash
cd && git clone --recursive https://github.com/Nasga/dotfiles-zshrc.git \
  .dotfiles-zsh && ln -s .dotfiles-zsh/.zshrc .zshrc
`````

Update :

`````bash
cd ~/.zsh && git pull --all && git submodule update --init --recursive
`````
