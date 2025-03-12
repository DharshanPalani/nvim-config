return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"html",
					"css",
					"javascript",
					"typescript",
					"tsx",
					"rust",
					"c",
					"go",
					"lua",
					"java",
					"vim",
					"vimdoc",
					"query",
					"prisma",
					-- "zig"
				},
				highlight = {
					enable = true,
				},
				indent = {
					enable = true
				}
			})
		end
	}
}
