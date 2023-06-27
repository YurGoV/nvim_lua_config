require("window-picker").setup({
	autoselect_one = false,
	include_current = false,
	filter_rules = {
		bo = {
			filetype = { "neo-tree", "neo-tree-popup", "notify" },
			buftype = { "terminal", "quickfix" },
		},
	},
	other_win_hl_color = "#e35e4f",
})
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

-- require("neo-tree").setup({})
--
require("neo-tree").setup({
	window = { mappings = { ["l"] = "open", ["h"] = "close_node" } },
	-- opts = {
	filesystem = {
		filtered_items = {
			visible = true,
			show_hidden_count = true,
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = { ".git", ".DS_Store", "thumbs.db", "node_modules" },
			never_show = {},
		},
	},
	-- },
})
