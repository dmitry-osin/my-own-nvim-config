return {{
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons', 'arkav/lualine-lsp-progress'},
    config = function()
        local colors = {
            blue = '#80a0ff',
            cyan = '#79dac8',
            black = '#080808',
            white = '#c6c6c6',
            red = '#ff5189',
            violet = '#d183e8',
            grey = '#303030'
        }

        local config = {
            options = {
                globalstatus = true,
                theme = 'gruvbox-material',
                component_separators = '',
                section_separators = {
                    left = '',
                    right = ''
                }
            },
            sections = {
                lualine_a = {{
                    'mode',
                    separator = {
                        left = ''
                    },
                    right_padding = 2
                }},
                lualine_b = {'filename', 'branch'},
                lualine_c = {'%=' --[[ add your center components here in place of this comment ]] },
                lualine_x = {},
                lualine_y = {'filetype', 'progress'},
                lualine_z = {{
                    'location',
                    separator = {
                        right = ''
                    },
                    left_padding = 2
                }}
            },
            inactive_sections = {
                lualine_a = {'filename'},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'location'}
            },
            tabline = {},
            extensions = {}
        }

        -- Inserts a component in lualine_c at left section
        local function ins_left(component)
            table.insert(config.sections.lualine_c, component)
        end

        -- Inserts a component in lualine_x ot right section
        local function ins_right(component)
            table.insert(config.sections.lualine_x, component)
        end

        ins_left {
            'lsp_progress',
            display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' }},
            -- With spinner
            -- display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' }},
            colors = {
                percentage = '#d4be98',
                title = '#d4be98',
                message = '#d4be98',
                spinner = '#d4be98',
                lsp_client_name = '#d4be98',
                use = true
            },
            separators = {
                component = ' ',
                progress = ' | ',
                message = {
                    pre = '(',
                    post = ')'
                },
                percentage = {
                    pre = '',
                    post = '%% '
                },
                title = {
                    pre = '',
                    post = ': '
                },
                lsp_client_name = {
                    pre = '[',
                    post = ']'
                },
                spinner = {
                    pre = '',
                    post = ''
                },
                message = {
                    commenced = 'In Progress',
                    completed = 'Completed'
                }
            },
            -- display_components = {'lsp_client_name', 'spinner', {'title', 'percentage', 'message'}},
            timer = {
                progress_enddelay = 500,
                spinner = 1000,
                lsp_client_name_enddelay = 1000
            },
            spinner_symbols = {'🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 '}
        }

        require('lualine').setup(config)
    end
}}
