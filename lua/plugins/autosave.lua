return {
    "Pocco81/auto-save.nvim",
    config = function ()
        require("auto-save").setup {
            execution_message = {
                cleaning_interval = 1250
            }
        }
    end
}
