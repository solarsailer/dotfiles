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