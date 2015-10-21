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

## Atom configuration

Config, themes, snippets and etc. are synced normally.

The packages are not synchronized. Install them once via:

```
apm stars --install
```

If the `ctrl+left/right/up/down` do not work, disable them in `Mission Control` and `Keyboards > Mission Control`.

## Laptop configuration

Change the standby delay time for faster wake-up after sleep:

```
# 3600s (1h) * 6h = 21600s
sudo pmset -a standbydelay 21600
```

Check the result with `pmset -g`.

Why? [Read that](http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/).

---

Thanks to [Peter Hajas](https://github.com/peterhajas/dotfiles) and [OSX for Hackers](https://gist.github.com/brandonb927/3195465#file-osx-for-hackers-sh-L619) for the inspiration.
