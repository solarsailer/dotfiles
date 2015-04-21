" Removing default keybinding of MacVim requires it to be done in the .gvimrc.
if has("gui_macvim")

  " Remove the Print keybinding.
  macmenu File.Print key=<nop>
  macmenu File.Close key=<nop>
  macmenu File.Close\ Window key=<nop>
endif

