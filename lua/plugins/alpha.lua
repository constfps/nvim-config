
return {
    'goolord/alpha-nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.startify")

        dashboard.section.header.val = {
[[                                                               _   ____________ _    ________  ___]],
[[                                                              / | / / ____/ __ \ |  / /  _/  |/  /]],
[[                                                             /  |/ / __/ / / / / | / // // /|_/ / ]],
[[                                                            / /|  / /___/ /_/ /| |/ // // /  / /  ]],
[[                                                           /_/ |_/_____/\____/ |___/___/_/  /_/   ]],
[[                                                                                                  ]],
        }
        alpha.setup(dashboard.opts)
    end
}
