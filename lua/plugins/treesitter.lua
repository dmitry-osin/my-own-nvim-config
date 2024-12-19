return {{
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"bash", "clojure", "css", "html", "javascript", "java", "json", "lua", "markdown",
                                "regex", "rust", "toml", "typescript", "yaml"},
            sync_install = false,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            }
        })
    end
}}
