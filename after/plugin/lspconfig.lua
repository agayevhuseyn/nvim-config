vim.diagnostic.config({
    virtual_text = {
        prefix  = '',
        spacing = 2,
    },
    underline = true,
    signs = false,
    update_in_insert = false,
    severity_sort = false,
})

local lspconfig = require('lspconfig')

--lspconfig.clangd.setup({})
--lspconfig.lua_ls.setup({})
--lspconfig.ruby_lsp.setup({})
--lspconfig.pylsp.setup({})
--lspconfig.elixirls.setup({
--    cmd = {"/home/huseyn/.local/share/nvim/mason/packages/elixir-ls/language_server.sh"}
--})
