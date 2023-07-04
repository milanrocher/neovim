vim.g.mapleader = " "

-- Zen Mode
vim.keymap.set('n', '<leader>z', '<cmd>ZenMode<CR>')

-- Gitsigns
vim.keymap.set('n', ']c', '<cmd>Gitsigns next_hunk<CR>')
vim.keymap.set('n', '[c', '<cmd>Gitsigns prev_hunk<CR>')
vim.keymap.set('n', '<leader>hs', '<cmd>Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
vim.keymap.set('n', '<leader>hr', '<cmd>Gitsigns reset_hunk<CR>')
vim.keymap.set('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
vim.keymap.set('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')

-- Bufferline
vim.keymap.set('n', '<leader>d', '<cmd>Bdelete<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>bn<CR>')
vim.keymap.set('n', '<leader>p', '<cmd>bp<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  -- LSP
vim.keymap.set('n', '<leader>fr', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
  -- Git
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
-- TODO Comments
vim.keymap.set('n', '<leader>td', '<cmd>TodoTelescope<CR>')

-- LSP Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>",
  {silent = true, noremap = true}
)
-- JDTLS Imports
vim.keymap.set("n", "<C-o", "<Cmd>lua require'jdtls'.organize_imports()<CR>")

-- CellularAutomaton
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gof", "<cmd>CellularAutomaton game_of_life<CR>")

-- VimtexCompile
vim.keymap.set("n", "<leader>c", "<cmd>VimtexCompile<CR>")

-- NvimTree
vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
