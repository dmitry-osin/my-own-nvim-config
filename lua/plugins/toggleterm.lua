return {{
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup({
            open_mapping = [[<c-\>]]
        })
        function _G.set_terminal_keymaps()
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {
                buffer = 0,
                desc = "Escape"
            })
            vim.keymap.set('t', 'jj', [[<C-\><C-n>]], {
                buffer = 0,
                desc = "Escape"
            })
            vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], {
                buffer = 0,
                desc = "Left"
            })
            vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], {
                buffer = 0,
                desc = "Down"
            })
            vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], {
                buffer = 0,
                desc = "Up"
            })
            vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], {
                buffer = 0,
                desc = "Right"
            })
            vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], {
                buffer = 0,
                desc = "Close"
            })
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end
}}
