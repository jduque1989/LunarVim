lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "lervag/vimtex" },
  { "folke/tokyonight.nvim" },
  { "arcticicestudio/nord-vim" },
  { "mfussenegger/nvim-jdtls" },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("lvim.core.indentlines").setup()
    end,
    event = "User FileOpened",
    enabled = lvim.builtin.indentlines.active,
  },
  { "Exafunction/codeium.vim" },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup {}
    end
  },
  { "ChristianChiarulli/swenv.nvim" },
  { "AckslD/swenv.nvim" },
  { "stevearc/dressing.nvim" },
  { "mfussenegger/nvim-dap-python" },
  { "kylechui/nvim-surround" },
  {
    "AckslD/nvim-trevJ.lua",
    config = 'require("trevj").setup()', -- optional call for configurating non-default filetypes etc
    init = function()
      vim.keymap.set('n', '<leader>j', function()
        require('trevj').format_at_cursor()
      end)
    end,
  }
}
