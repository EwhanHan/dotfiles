local M = {}
local override = require "custom.plugins.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- examples https://github.com/siduck/dotfiles/tree/master/nvchad/custom

M.plugins = {
  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
    ["williamboman/mason.nvim"] = override.mason,
  },
  user = require "custom.plugins"
}


return M
