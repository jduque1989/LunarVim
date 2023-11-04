-- lvim.builtin.alpha.dashboard.section.header.val = {
--   [[              _     _                 _                   _                  _         _                 _       _                 _      ]],
--   [[            /\ \  /\_\              / /\                /\ \     _         /\ \      /\_\              /\ \    /\_\              /\ \    ]],
--   [[            \ \ \/ / /         _   / /  \              /  \ \   /\_\      /  \ \____/ / /         _   /  \ \  / / /         _   /  \ \   ]],
--   [[            /\ \_\ \ \__      /\_\/ / /\ \            / /\ \ \_/ / /     / /\ \_____\ \ \__      /\_\/ /\ \ \ \ \ \__      /\_\/ /\ \ \  ]],
--   [[           / /\/_/\ \___\    / / / / /\ \ \          / / /\ \___/ /     / / /\/___  /\ \___\    / / / / /\ \ \ \ \___\    / / / / /\ \_\ ]],
--   [[  _       / / /    \__  /   / / / / /  \ \ \        / / /  \/____/     / / /   / / /  \__  /   / / / / /  \ \_\ \__  /   / / / /_/_ \/_/ ]],
--   [[ /\ \    / / /     / / /   / / / / /___/ /\ \      / / /    / / /     / / /   / / /   / / /   / / / / / _ / / / / / /   / / / /____/\    ]],
--   [[ \ \_\  / / /     / / /   / / / / /_____/ /\ \    / / /    / / /     / / /   / / /   / / /   / / / / / /\ \/ / / / /   / / / /\____\/    ]],
--   [[ / / /_/ / /     / / /___/ / / /_________/\ \ \  / / /    / / /      \ \ \__/ / /   / / /___/ / / / /__\ \ \/ / / /___/ / / / /______    ]],
--   [[/ / /__\/ /     / / /____\/ / / /_       __\ \_\/ / /    / / /        \ \___\/ /   / / /____\/ / / /____\ \ \/ / /____\/ / / /_______\   ]],
--   [[\/_______/      \/_________/\_\___\     /____/_/\/_/     \/_/          \/_____/    \/_________/\/________\_\/\/_________/\/__________/   ]],
--   [[                                                                                                                                         ]],
-- }

-- lvim.colorscheme = "onedark"
-- lvim.colorscheme = "darkplus"

if vim.g.neovide then
  vim.opt.guifont = "MonoLisa:h24"

  vim.g.neovide_transparency = 0
  vim.g.transparency = 0.8
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = false
end

lvim.colorscheme = "tokyonight"
vim.g.tokyonight_style = "night"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 100,
}
lvim.log.level = "warn"
lvim.builtin.illuminate.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.terminal.persist_mode = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.breadcrumbs.active = true
lvim.builtin.dap.active = true
lvim.keys.term_mode = { ["<C-l>"] = false }
lvim.transparent_window = true
lvim.builtin.bufferline.active = true

-- lvim.builtin.cmp.formatting = {
--     format = require("tailwindcss-colorizer-cmp").formatter
-- }
-- vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 25
vim.opt.showtabline = 0

local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 10,                         -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 100,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  laststatus = 3,
  showcmd = false,
  ruler = false,
  relativenumber = true, -- set relative numbered lines
  numberwidth = 4,       -- set number column width to 2 {default 4}
  signcolumn = "yes",    -- always show the sign column, otherwise it would shift the text each time
  wrap = false,          -- display lines as one long line
  scrolloff = 0,
  sidescrolloff = 8,
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  title = true,
  titleold = vim.split(os.getenv("SHELL") or "", "/")[3],
  -- colorcolumn = "80",
  -- colorcolumn = "120",
}
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.opt.fillchars.eob = " "
-- vim.opt.fillchars = vim.opt.fillchars + "vertleft: "
-- vim.opt.fillchars = vim.opt.fillchars + "vertright: "
vim.opt.fillchars = vim.opt.fillchars + "eob: "
-- vim.opt.fillchars:append {
--   stl = " ",
-- }

-- vim.opt.shortmess:append "c"
-- use treesitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldnestmax = 10 -- Maximum fold depth
vim.opt.foldminlines = 1 -- Minimum number of lines to create a fold
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

vim.filetype.add {
  extension = {
    conf = "dosini",
  },
}
