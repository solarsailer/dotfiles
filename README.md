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

cd dotfiles
```

Note: we use `Developer` instead of `Code`. macOS adds an icon to folders named "Developer".

## Manual Configuration

### Git

To set your git `user.email` & `user.name`, create a `.gitconfig` file manually in your `$HOME` folder and copy those values there:

```
[user]
  name = Firstname Lastname
  email = krokmou@berk.com
```

### Procedure

Move to `$HOME/Developer/dotfiles`. Then:

```bash
# Install brew (get up-to-date method on brew.sh)
open https://brew.sh

# Temporarily add brew to $PATH (before using fish)
export PATH=/opt/homebrew/bin:$PATH

# Install stow
brew install stow

# Configure stow (see stow.bash in `scripts`)
stow --target=$HOME -R stow

# Configure fish
stow -R fish

# Install fish
brew install fish

# Then, read below to setup fish as default shell.
```

### Stow

Stow is configured to use "../.." as the default target. That means that you should put the dotfiles in a folder in your home. Like "$HOME/Developer/dotfiles".

If you have followed the previous instructions, it should already be there, making this step useless.

### Fish

Set fish as default shell:

* Check where fish is installed: `which fish`
* Add one of those:
  * Add `/opt/homebrew/bin/fish` to `/etc/shells`
  * Add `/usr/local/bin/fish` to `/etc/shells`
  * (Just need to be there, at the end, nothing more)
* Run one of those:
  * `chsh -s /opt/homebrew/bin/fish`
  * `chsh -s /usr/local/bin/fish`

Then:

```bash
fish_theme_classic # "Install" the theme
fisher install jethrokuan/z
fisher install jorgebucaran/getopts.fish
```

### Name

```
change_computer_name $NAME
```

## Bonus

### Contact Card

Sync your contact, then in the Contacts app, choose your contact card, click on the "Card" menu, then "Make this my card".

### Input Sources

Use the alternative (and better) French keyboard in `system/Keyboard/frenumin.keylayout` and install it.

Copy the `.keylayout` to `~/Library/Keyboard Layouts/`.

### Retina or non-retina?

If you use a non-retina monitor, run this command:

```
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
```

macOS Mojave removed the "Use LCD font smoothing when available" option in "General". It's better for retina screen, but awful on non-retina. This command will re-activate this option.

**DO NOT USE** with retina screens.

---

Thanks to [Peter Hajas](https://github.com/peterhajas/dotfiles) and [OSX for Hackers](https://gist.github.com/brandonb927/3195465#file-osx-for-hackers-sh-L619) for the inspiration.
