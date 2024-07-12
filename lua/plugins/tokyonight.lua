return {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
        vim.cmd.colorscheme 'tokyonight-moon'
        vim.cmd.hi 'Comment gui=none'
    end,
}
