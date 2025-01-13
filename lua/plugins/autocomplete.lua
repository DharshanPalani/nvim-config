return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline'
	},
	keys = {
		{ 'K', vim.lsp.buf.hover, mode = 'n', desc = "Hover Text" },
		{ "gd", vim.lsp.buf.definition, mode = 'n', desc = "Go to definition" },
		{ "gD", vim.lsp.buf.declaration, mode = 'n', desc = "Go to declaration" },
		{ "gi", vim.lsp.buf.implementation, mode = 'n', desc = "Go to implementation" },
		{ "go", vim.lsp.buf.type_definition, mode = 'n', desc = "Go to type definition" },
		{ "gr", vim.lsp.buf.references, mode = 'n', desc = "References" },
		{ "gs", vim.lsp.buf.signature_help, mode = 'n', desc = "Signature help" },
		{ "<space>cr", vim.lsp.buf.rename, mode = 'n', desc = "Rename" },
		{ "<space>cf", vim.lsp.buf.format, mode = 'n', desc = "Format" },
	},
	opts = {},
}
