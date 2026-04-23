return {
    'nvim-mini/mini.nvim',
    version = false,
    config = function ()
        require("mini.pairs").setup()

        local statusline = require("mini.statusline")
        statusline.setup()

        ---@diagnostic disable-next-line: duplicate-set-field
        statusline.section_location = function()
            return "%2l:%-2v"
        end
    end
}
