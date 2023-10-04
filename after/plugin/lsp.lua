local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")
lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
    require('mason').setup({})
    require('mason-lspconfig').setup({
        ensure_installed = {
            'tsserver',
            'eslint',
            'rust_analyzer',
            'sumneko_lua'
        },
        handlers = {
            lsp_zero.default_setup,
        },
    })
end)

lsp_zero.setup()
