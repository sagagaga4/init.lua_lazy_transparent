
-- Ensure you have a valid path for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Basic Neovim settings
vim.wo.number = true
vim.wo.relativenumber = true

-- Setup lazy.nvim with plugins
require("lazy").setup({
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,  -- Set a priority if you want it to load before or after other plugins
    opts = {
      transparent_background = true,  -- Enable transparency
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,  -- Set a priority if needed
    opts = {
      transparent_background = true,  -- Enable transparency
    },
  },
})

-- Set colorscheme
-- Uncomment the colorscheme you want to use
-- vim.cmd[[colorscheme solarized-osaka]]
 vim.cmd[[colorscheme catppuccin-macchiato]]
--vim.cmd[[colorscheme rose-pine]]
