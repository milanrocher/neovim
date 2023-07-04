local config = {
    cmd = {'/home/milan/.repos/jdtls/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}

config.on_attach = function(client, bufnr)
  local opts = { silent = true, buffer = bufnr }
  vim.keymap.set('n', "<leader>oi", require('jdtls').organize_imports, opts)
end

require('jdtls').start_or_attach(config)
