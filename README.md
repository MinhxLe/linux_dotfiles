# Dotfiles
My dotfiles

```   
git clone --separate-git-dir=$HOME/.cfg git@github.com:MinhxLe/linux_dotfiles.git $HOME/myconf-tmp
cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -r $HOME/myconf-tmp/
```
