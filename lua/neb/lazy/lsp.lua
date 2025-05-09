return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "stevearc/conform.nvim",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        local luasnip = require("luasnip")
        require("luasnip.loaders.from_vscode").lazy_load()

        -- Deaktiviert automatische Snippets aus anderen Quellen
        luasnip.config.set_config({ enable_autosnippets = false })

        -- C-Snippets definieren
        luasnip.add_snippets("c", {
            luasnip.snippet("main", {
                luasnip.text_node({
                    "#include <stdio.h>",
                    "",
                    "int main() {",
                    "    return 0;",
                    "}",
                }),
            }),
            luasnip.snippet("printf", {
                luasnip.text_node("printf(\""),
                luasnip.insert_node(1, "Text"),
                luasnip.text_node("\\n\");"),
            }),
        })

        local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "gopls",
                "clangd",
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,
                ["clangd"] = function()
                    require("lspconfig").clangd.setup {
                        capabilities = capabilities,
                        cmd = { "clangd", "--background-index", "--clang-tidy", "--query-driver=/usr/bin/clang++" }, -- Pfad zum Compiler anpassen
                        filetypes = { "c", "cpp", "objc", "objcpp" },
                        root_dir = require("lspconfig.util").root_pattern(".clangd", ".git", ".ccls", "compile_commands.json", "build"),
                        settings = {
                            clangd = {
                                completion = {
                                    enableSnippets = true,
                                },
                                compilationDatabasePath = "build", -- Pfad zur compile_commands.json anpassen
                            },
                        },
                    }
                end,
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
            })
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
