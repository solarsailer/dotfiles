dotfiles
========

# Bootstrap

## Requirement: Xcode

Install Xcode through the Mac App Store.

Then, open the terminal and type:

```
sudo xcodebuild -license
```

## Requirement: SSH Key

Generate a new key:

```
ssh-keygen -t rsa -b 4096 -C "krokmou@berk.com"
pbcopy < ~/.ssh/id_rsa.pub
```

Then, add it on Github.

## Ready?

```bash
cd ~
mkdir Code
cd Code

git clone git@github.com:solarsailer/dotfiles.git

./bootstrap.bash
```

# Configuration

## Stow

Stow is configured to use "../.." as the default target. That means that you should put the dotfiles in a folder in your home. Like "$HOME/Code/dotfiles".

If you have followed the previous instructions, it should already be there, making this step useless.

## Git

To set your git `user.email` & `user.name`, create a `.gitconfig` file manually in your `$HOME` folder and copy those values there:

```
[user]
  name = Firstname Lastname
  email = krokmou@berk.com
```

## Fish

Set fish as default shell:

* Add `/usr/local/bin/fish` to `/etc/shells` (just need to be there, at the end, nothing more)
* Run: `chsh -s /usr/local/bin/fish`

Then:

```
fish_theme_classic # "install" the theme
fisher # install dependencies through fisher.
```

## Name

```
change_computer_name $NAME
```

## Atom

Config, themes, snippets and etc. are synced normally.

The packages are not synchronized. Install them once via:

```
apm stars --install
```

If the `ctrl+left/right/up/down` do not work, disable them in `Mission Control` and `Keyboards >> Mission Control`.

## Change Keyboard

Choose an alternative keyboard in `@keyboards` and install it.

---

Thanks to [Peter Hajas](https://github.com/peterhajas/dotfiles) and [OSX for Hackers](https://gist.github.com/brandonb927/3195465#file-osx-for-hackers-sh-L619) for the inspiration.
