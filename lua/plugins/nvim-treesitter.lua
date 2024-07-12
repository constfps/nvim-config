return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function() 
        local config = require 'nvim-treesitter.configs'
        config.setup({
            ensure_installed = {
                -- list of languages you will use
                "lua",
                "luadoc",
                "bash",
                "c",
                "html",
                "asm",
                "cpp",
                "css",
                "csv",
                "dot",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "java",
                "javascript",
                "json",
                "php",
                "python",
                "regex",
                "rust",
                "sql",
                "ssh_config"
            },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end,
}
