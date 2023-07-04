vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.vimtex_view_method = "general"

require('configs')
require('plugins')
require('remaps')

-- Auto Commands
vim.api.nvim_create_augroup("alpha_on_empty", { clear = true })
vim.api.nvim_create_autocmd("User", {
  pattern = "BDeletePost*",
  group = "alpha_on_empty",
  callback = function(event)
    local fallback_name = vim.api.nvim_buf_get_name(event.buf)
    local fallback_ft = vim.api.nvim_buf_get_option(event.buf, "filetype")
    local fallback_on_empty = fallback_name == "" and fallback_ft == ""

    if fallback_on_empty then
      vim.cmd("Alpha")
    end
  end,
})

vim.api.nvim_create_autocmd(
  {"BufWritePost"},
  { pattern = 'plugins.lua', command = 'source <afile> | PackerSync' }
)

-- Plugin Setup
require("nvim-surround").setup()
require("todo-comments").setup()
require("twilight").setup()
require("zen-mode").setup()
require('nvim-web-devicons').setup()
require('lualine').setup()
require("nvim-tree").setup()
require("nvim-autopairs").setup() 
require('trouble').setup()
require('lualine').setup()
require('Comment').setup()
require('gitsigns').setup()

require'alpha'.setup(require'alpha.themes.startify'.config)

require("chatgpt").setup{
  popup_input = { submit = "<C-s>", },
}

require("toggleterm").setup{
  open_mapping = [[<A-t>]],
  shade_terminals = false,
}

require('telescope').setup{
  pickers = {
    find_files = {
      no_ignore=true
    }
  }
}

require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = { "help", "javascript", "c", "lua", "vim", "vimdoc", "query", "java" },
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    disable = { "latex" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    additional_vim_regex_highlighting = { "latex" },
  },
}

require('indent_blankline').setup {
  space_char_blankline = " ",
  show_current_context = true,
}

require("bufferline").setup {
  options = {
    themable = true,
    numbers = "ordinal",
    close_command = "Bdelete",
    separator_style = "thin",
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
    }},
    color_icons = false,
    show_duplicate_prefix = true,
  }
}

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.skip_server_setup({'jdtls'})

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

require('luasnip.loaders.from_vscode').lazy_load()

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

cmp.setup({
  manage_nvim_cmp = {
    set_sources = 'recommended',
    set_basic_mappings = true,
    set_extra_mappings = false,
    use_luasnip = true,
    set_format = true,
    documentation_window = true,
  },
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select_opts),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})

vim.diagnostic.config({
  virtual_text = true,
})
