# French Numerical Improved

This layout tweaks the French Numerical keyboard slightly.

The goal is to re-use useless keys (like §, °, £) which have a dedicated and prominent key.

## Keys

* \ is useful, especially when dealing with C# and .net stuffs.
* ~ is important in a shell to quickly go to your home directory.
* | is a must have in a shell, in Ruby and other languages.
* [] TODO
* {} TODO

## Modifications

* § becomes | (6 key)
* £ becomes \ (backquote key)
* ° becomes ~ (end round bracket, i.e. `)`)
* opt+shift+backquote is changed to £

Also remove the waiting time (for a vowel) on the default ` and ~. It's useless in French.

## Installation

Put this layout in `~/Library/Keyboard Layouts/` (current user) or `/Library/Keyboard Layouts/` (all users).

Open the `Keyboard` preferences and add the new input (should be found in `Other`).

## Default login keyboard and one input source

See: https://raw.githubusercontent.com/mathiasbynens/custom.keylayout/master/azerty/README.md


> You can remove any default OS X keyboard layout (that you won’t be using anymore) from the Input menu [as follows](http://osxnotes.net/keylayout-files-and-ukelele.html#disabling-other-input-sources):
>
> 1. Make sure the current input source is your custom keyboard layout.
>
> 2. Open `~/Library/Preferences/com.apple.HIToolbox.plist`. (If needed, you can convert the `plist` to XML by running `plutil -convert xml1`.)
>
> 3. Remove the input source or input sources you want to disable from the `AppleEnabledInputSources` dictionary. If there is an `AppleDefaultAsciiInputSource` key, remove it.
>
> 4. Reboot.

Convert to XML:

```
plutil -convert xml1 ~/Library/Preferences/com.apple.HIToolbox.plist
```

Then edit.

Then convert back to binary:

```
plutil -convert binary1 ~/Library/Preferences/com.apple.HIToolbox.plist
```

Reboot.
