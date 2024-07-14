-- exit to file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew" })

-- Clear highlight on search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Highlight on Search" })

-- Disable arrow keys (for practicality)
vim.keymap.set("n", "<Left>", "<nop>", { desc = "Disables Arrow Keys" })
vim.keymap.set("n", "<Right>", "<nop>", { desc = "Disables Arrow Keys" })
vim.keymap.set("n", "<Up>", "<nop>", { desc = "Disables Arrow Keys" })
vim.keymap.set("n", "<Down>", "<nop>", { desc = "Disables Arrow Keys" })

-- Navigate through split instances
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Go to tab on the left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Go to tab on the right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Go to tab on the bottom" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Go to tab on the top" })

-- autocmd to highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Open file tree
vim.keymap.set("n", "<leader>t", ":Neotree filesystem reveal left<CR>", { desc = "Open File [T]ree" })

-- telescope binds
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "[P]roject [F]iles" })
vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "[P]roject [G]rep" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" }) --stolen from theprimeagen lmao
vim.keymap.set("n", "<leader>h", builtin.help_tags, { desc = "Find [H]elp Tags" })

-- lsp binds
vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) --already a default keybind by the nvimlsp but eh
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]et [D]efinition" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

-- Undotree bind
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Open [U]ndo Tree" })

-- Git status keybind
vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = "[G]it [S]tatus" })

-- Enable Zen Mode
vim.keymap.set("n", '<leader>z', vim.cmd.ZenMode, { desc = "Go in [Z]en Mode" })
