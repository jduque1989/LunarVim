lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "lervag/vimtex" },
  { "folke/tokyonight.nvim" },
  { "arcticicestudio/nord-vim" },
  { "mfussenegger/nvim-jdtls" },
  { "Exafunction/codeium.vim" },
  -- { "iamcco/markdown-preview.nvim" },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup {}
    end
  },
  --

  -- {"NTBBloodbath/rest.nvim",
  --       dependencies = {"nvim-lua/plenary.nvim"},
  --       config = function()
  --           require("rest-nvim").setup({
  --           })
  --       end
  --   },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   build = "cd app && npm install",
  --   ft = "markdown",
  --   config = function()
  --     vim.g.mkdp_auto_start = 1
  --   end,
  -- },
  { "ChristianChiarulli/swenv.nvim" },
  { "stevearc/dressing.nvim" },
  { "mfussenegger/nvim-dap-python" },
  { "kylechui/nvim-surround" },
  -- { "mg979/vim-visual-multi" },
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
