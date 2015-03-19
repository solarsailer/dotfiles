dotfiles
========

```bash
cd dotfiles
chmod a+x install.sh
sh install.sh
```

# Configuration

## SSH key

Generate a new key:

```
ssh-keygen -t rsa -C "krokmou@berk.com"
pbcopy < ~/.ssh/id_rsa.pub
```

Then, add it on Github.

## Git configuration

* To set your git user.email & user.name, create manually a .gitconfig in your $HOME folder and copy those values there:

```
[user]
  name = Firstname Lastname
  email = krokmou@berk.com 
```

## Stow configuration

* Stow is configured to use "../.." as the default target. That means that you should put the dotfiles in a folder in your home. Like "$HOME/lib/dotfiles".

## Fish configuration

Set fish as default shell:

* Add `/usr/local/bin/fish` to `/etc/shells` (just need to there, at the end, nothing more)
* Run: `chsh -s /usr/local/bin/fish`


Thanks to [Peter Hajas](https://github.com/peterhajas/dotfiles) for the inspiration.
