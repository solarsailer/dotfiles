dotfiles
========

```bash
cd dotfiles
chmod a+x update.sh
sh update.sh
```
# Warnings

* To set your git user.email & user.name, create manually a .gitconfig in your $HOME folder and copy those values there.
* Stow is configured to use "../.." as the default target. That means that you should put the dotfiles in a folder in your home. Like "$HOME/lib/dotfiles".
