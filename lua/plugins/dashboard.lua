return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            theme = "hyper",
            config = {
                week_header = {
                    enable = true
                },
                shortcut = {{
                    desc = "󰊳 Lazy",
                    group = "Label",
                    action = "Lazy update",
                    key = "u"
                }, {
                    desc = " Telescope",
                    group = "Label",
                    action = "Telescope find_files",
                    key = "f"
                }, {
                    desc = " Files",
                    group = "Label",
                    action = "Neotree left toggle reveal",
                    key = "e"
                }, {
                    desc = "󰊢 LazyGit",
                    group = "Label",
                    action = "LazyGit",
                    key = "g"
                }}
            }
        })
    end,
    dependencies = {{"nvim-tree/nvim-web-devicons"}}
}
