-- -------------------------------------------------------------
-- Bootstrap lazy.nvim.
-- -------------------------------------------------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Configuration options required by lazy.vim.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- -------------------------------------------------------------
-- Setup lazy.nvim.
-- -------------------------------------------------------------

require("lazy").setup({
  spec = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
  },
  install = { colorscheme = { "habamax" } }, -- colorscheme that will be used when installing plugins.
  checker = { enabled = true }, -- automatically check for plugin updates.
})

-- -------------------------------------------------------------
-- Neovim configuration.
-- -------------------------------------------------------------

-- Show line numbers:
vim.wo.number = true

-- Use catppuccin colorscheme:
vim.cmd.colorscheme "catppuccin-frappe"

-- Set the background color to transparent:
vim.cmd.highlight "Normal guibg=NONE"
