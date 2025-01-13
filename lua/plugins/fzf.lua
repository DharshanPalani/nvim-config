return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		keys = function ()
			local fzf = require("fzf-lua")
			return {
				{ "<C-S-p>", fzf.commands, mode = 'n', desc = "Command Pallete" },
				{ "<leader> ", fzf.files, mode = 'n', desc = "Search File" },
				{ "<leader>bb", fzf.buffers, mode = 'n', desc = "Search Buffers" },
				{ "<leader>sg", fzf.live_grep, mode = 'n', desc = "Global Search" },
				{ "<leader>o", fzf.lsp_document_symbols, mode = 'n', desc = "Search Symbols" },
				{ "<leader>ca", fzf.lsp_code_actions, mode = 'n', desc = "Code Actions" },
				{ "<leader>gs", git_status, mode = 'n', desc = "VCS status" },
			}
		end
	}
}
