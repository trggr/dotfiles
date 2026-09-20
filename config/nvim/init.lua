-- ============================================================
-- SECTION 1: OPTIONS
-- Core Neovim settings, leaders, options
-- ============================================================
do
  -- Enable faster startup by caching compiled Lua modules
  vim.loader.enable()

  vim.opt.guicursor = "a:block"

  -- Make line numbers default
  -- vim.o.number = true

  -- You can also add relative line numbers, to help with jumping.
  --  Experiment for yourself to see if you like it!
  -- vim.o.relativenumber = true

  -- Enable mouse mode, can be useful for resizing splits for example!
  vim.o.mouse = 'a'

  -- Don't show the mode, since it's already in the status line
  vim.o.showmode = false

  -- Force Neovim to load the official Windows behavior file
  vim.cmd("source $VIMRUNTIME/mswin.vim")

  -- Recommended: Ensure Neovim shares the Windows system clipboard
  vim.opt.clipboard = "unnamedplus"

  -- Sync clipboard between OS and Neovim.
  --  Schedule the setting after `UiEnter` because it can increase startup-time.
  --  Remove this option if you want your OS clipboard to remain independent.
  --  See `:help 'clipboard'`
  -- vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

  -- Enable break indent
  vim.o.breakindent = true

  -- Enable undo/redo changes even after closing and reopening a file
  vim.o.undofile = false

  -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
  vim.o.ignorecase = true
  vim.o.smartcase = true

  -- Decrease update time
  vim.o.updatetime = 250

  -- Decrease mapped sequence wait time
  vim.o.timeoutlen = 300

  -- Configure how new splits should be opened
  vim.o.splitright = true
  vim.o.splitbelow = true

  -- Sets how neovim will display certain whitespace characters in the editor.
  --  See `:help 'list'`
  --  and `:help 'listchars'`
  --
  --  Notice listchars is set using `vim.opt` instead of `vim.o`.
  --  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
  --   See `:help lua-options`
  --   and `:help lua-guide-options`
  -- vim.o.list = true
  -- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

  -- Preview substitutions live, as you type!
  vim.o.inccommand = 'split'

  -- Minimal number of screen lines to keep above and below the cursor.
  vim.o.scrolloff = 8

  -- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
  -- instead raise a dialog asking if you wish to save the current file(s)
  -- See `:help 'confirm'`
  vim.o.confirm = true
end

do
  -- Clear highlights on search when pressing <Esc> in normal mode
  --  See `:help hlsearch`
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

  --  See `:help wincmd` for a list of all window commands
  vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
  vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
  vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
  vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

  -- ^Y delete current line in any mode
  vim.keymap.set('i', '<C-y>', '<Cmd>dd', { desc = 'Delete current line and stay in insert mode' })
  vim.keymap.set('n', '<C-y>', 'dd', { desc = 'Delete current line' })

  -- Save in all modes
  vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true, desc = 'Save file' })
  vim.keymap.set('i', '<C-s>', '<Cmd>w<CR>', { silent = true, desc = 'Save file and stay in insert mode' })
  vim.keymap.set('v', '<C-s>', '<Cmd>w<CR>', { silent = true, desc = 'Save file' })

  vim.opt.termguicolors = true

  vim.cmd('colorscheme rose-pine')
end

