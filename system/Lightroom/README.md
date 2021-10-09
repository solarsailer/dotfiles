# Change Lightroom Classic shortcuts

For `en` macOS with `fr` keyboard layout.

## Install

Add `TranslatedStrings_Lr_en_US.txt` to `/Applications/Adobe Lightroom Classic CC/Adobe Lightroom Classic CC.app/Contents/Resources/en.lproj/`.

For reference, open the file in `fr.lproj` and find the item you want to change.

## Explanation

```
"$$$/AgDevelop/Menu/View/BeforeAfter/Before/Key=@"
```

- `AgDevelop`: in Develop mode.
- `Menu/View/BeforeAfter/Before`: the menu item we target ("Before Only" in "View → Before / After").
- `/Key`: indicates that we want to change the shortcut (not the label).
- `=@`: we assign `@` to the menu item.

If we don't specify `/Key`, the assignment will have an effect on the label, not the keyboard shortcut.
