return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            -- Mason setup
            require('mason').setup {
                automatic_installation = true,
            }
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            -- Mason LSP config setup
            require('mason-lspconfig').setup {
                ensure_installed = {
                    'pyright',
                    'clangd',
                    'vtsls',
                    'rust_analyzer',
                    'lua_ls',
                },
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- nvim-lspconfig setup for installed LSPs
            local lspconfig = require('lspconfig')
            local mason_lspconfig = require('mason-lspconfig')

            -- Fetch the list of installed servers from mason-lspconfig
            local servers = mason_lspconfig.get_installed_servers()

            -- Loop through each installed server and set it up
            for _, server in ipairs(servers) do
                lspconfig[server].setup({})
            end
        end
    }
}

