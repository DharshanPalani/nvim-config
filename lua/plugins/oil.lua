vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
return {
	{
		'stevearc/oil.nvim',
		lazy = false,
		opts = {
			delete_to_trash = true,
			watch_for_changes = false,
			view_options = {
				show_hidden = true,
			},
			win_options = {
				winbar = "%{v:lua.require('oil').get_current_dir()}",
			},
		},
		keys = {
			{ "<leader>e", "<CMD>Oil<CR>", mode = 'n', desc = "Toggle Explorer" }
		},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	}
}


-- return {
-- 	{
-- 		"nvim-tree/nvim-tree.lua",
-- 		lazy = false,
-- 		opts = {
-- 			git = {
-- 				enable = false,
-- 			},
-- 			view = {
-- 				width = 40,
-- 				side = "right",
-- 			},
-- 			filters = {
-- 				enable = true,
-- 				git_ignored = true,
-- 				dotfiles = false,
-- 				git_clean = false,
-- 				no_buffer = false,
-- 				no_bookmark = false,
-- 				custom = {
-- 					".git",
-- 					".DS_Store"
-- 				},
-- 				exclude = {
-- 					".env"
-- 				},
-- 			},
-- 		},
-- 		dependencies = {
-- 			"nvim-tree/nvim-web-devicons",
-- 		},
-- 		keys = {
-- 			{ "<leader>e", utils.cmd "NvimTreeToggle", mode = 'n', desc = "Toggle Explorer" }
-- 		}
-- 	}
-- }
--
