-- Use this file for simple plugins

return {
  -- colourscheme first
  {
    "bluz71/vim-nightfly-colors",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme nightfly]])
    end,
  },

-- "nvim-lua/plenary.nvim",
-- { "github/copilot.vim", lazy = false },

-- {
--  "mbbill/undotree",
--  cmd = { "UndotreeShow", "UndotreeToggle", "UndotreeHide", "UndotreeFocus" },
-- },

}
