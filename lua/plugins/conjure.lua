return {{
    "Olical/conjure",
    ft = {"clojure"},
    lazy = true,
    config = function()
        require("conjure.main").main()
        require("conjure.mapping")["on-filetype"]()
    end,
    dependencies = {"PaterJason/cmp-conjure"}
}, {
    "guns/vim-sexp",
    ft = {"clojure"}
}, {
    "tpope/vim-sexp-mappings-for-regular-people",
    ft = {"clojure"}
}, {
    "PaterJason/cmp-conjure",
    lazy = true,
    config = function()
        local cmp = require("cmp")
        local config = cmp.get_config()
        table.insert(config.sources, {
            name = "conjure"
        })
        return cmp.setup(config)
    end
}}
