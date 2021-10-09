dotfiles
========

## Bootstrap

### Requirement: Xcode

Install Xcode through the Mac App Store.

Then, open the terminal and type:

```
sudo xcodebuild -license
```

### Requirement: SSH Key

Generate a new key:

```
ssh-keygen -t rsa -b 4096 -C "krokmou@berk.com"
pbcopy < ~/.ssh/id_rsa.pub
```

Then, add it on Github.

For the name, use either:

- `Private — $NAME`
- `$COMPANY_NAME — $NAME`

Where $NAME is taken from the "About This Mac" panel.

For example:

- `Private — MacBook Pro (15-inch, 2016)`

### Ready?

```bash
cd ~
mkdir Developer
chmod 700 Developer
cd Developer

# Repo.
git clone git@github.com:solarsailer/dotfiles.git

# Wait.
./bootstrap.bash # Not finished
```

Note: we use `Developer` instead of `Code`. macOS adds an icon to folders named "Developer".

## Manual Configuration

### Retina or non-retina?

If you use a non-retina monitor, run this command:

```
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
```

macOS Mojave removed the "Use LCD font smoothing when available" option in "General". It's better for retina screen, but awful on non-retina. This command will re-activate this option.

**DO NOT USE** with retina screens.

### Stow

Stow is configured to use "../.." as the default target. That means that you should put the dotfiles in a folder in your home. Like "$HOME/Developer/dotfiles".

If you have followed the previous instructions, it should already be there, making this step useless.

### Git

To set your git `user.email` & `user.name`, create a `.gitconfig` file manually in your `$HOME` folder and copy those values there:

```
[user]
  name = Firstname Lastname
  email = krokmou@berk.com
```

### Fish

Set fish as default shell:

* Add `/usr/local/bin/fish` to `/etc/shells` (just need to be there, at the end, nothing more)
* Run: `chsh -s /usr/local/bin/fish`

Then:

```
fish_theme_classic # "install" the theme
fisher # install dependencies through fisher.
```

### Name

```
change_computer_name $NAME
```

### Contact Card

Sync your contact, then in the Contacts app, choose your contact card, click on the "Card" menu, then "Make this my card".

### Input Sources

Choose an alternative keyboard in `@keyboards` and install it.

Copy the `.keylayout` to `~/Library/Keyboard Layouts/`.

---

Thanks to [Peter Hajas](https://github.com/peterhajas/dotfiles) and [OSX for Hackers](https://gist.github.com/brandonb927/3195465#file-osx-for-hackers-sh-L619) for the inspiration.
