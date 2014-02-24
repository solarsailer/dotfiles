dotfiles
========

* Do NOT symlink .gitconfig (the mail is personal), just copy it
* Symlink .bash_profile :

```bash
cd ~
ln -sf dev/dotfiles/.bash_profile .
ln -sf dev/dotfiles/.nanorc .
```
