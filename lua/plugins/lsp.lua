return {{
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup({})
        lspconfig.rust_analyzer.setup({})
        lspconfig.clojure_lsp.setup({})

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

                local opts = {
                    buffer = ev.buf
                }
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
                    buffer = ev.buf,
                    desc = "Go to declaration"
                })
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
                    buffer = ev.buf,
                    desc = "Go to definition"
                })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, {
                    buffer = ev.buf,
                    desc = "Hover Documentation"
                })
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {
                    buffer = ev.buf,
                    desc = "Go to implementation"
                })
                vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {
                    buffer = ev.buf,
                    desc = "Signature Documentation"
                })
                vim.keymap.set("n", "<Leader>D", vim.lsp.buf.type_definition, {
                    buffer = ev.buf,
                    desc = "Go to type definition"
                })
                vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, {
                    buffer = ev.buf,
                    desc = "Rename Symbol"
                })
                vim.keymap.set({"n", "v"}, "<Leader>la", vim.lsp.buf.code_action, {
                    buffer = ev.buf,
                    desc = "Code Action"
                })
                vim.keymap.set("n", "<Leader>lf", function()
                    vim.lsp.buf.format({
                        async = true
                    })
                end, {
                    buffer = ev.buf,
                    desc = "Format"
                })
            end
        })
    end
}}
