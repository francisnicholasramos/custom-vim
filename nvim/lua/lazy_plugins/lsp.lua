return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" }, -- lazy load
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            vim.diagnostic.config({
                signs = true,
                virtual_text = false,
                underline = true,
                update_in_insert = false,
            })

            vim.api.nvim_create_autocmd("CursorHold", {
                group = vim.api.nvim_create_augroup("UserLspDiagnostics", { clear = true }),
                callback = function()
                    vim.diagnostic.open_float(nil, {
                        focusable = false, -- prevents window from taking focus
                        prefix = "* ", -- bullet
                    })
                end,
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            capabilities.textDocument.semanticTokens = nil -- respect colorscheme's syntax highlighting

            local overrides = {
                phpactor = { filetypes = { "php", "blade" } },
                tailwindcss = { filetypes = { "html", "blade", "php", "javascript", "typescript" } },
                html = { filetypes = { "html" } },
            }

            local servers = require("mason-lspconfig").get_installed_servers()
            for _, server in ipairs(servers) do
                local config = vim.tbl_deep_extend("force", {
                    capabilities = capabilities,
                }, overrides[server] or {})

                vim.lsp.config(server, config)
                vim.lsp.enable(server)
            end
        end,
    },
}
