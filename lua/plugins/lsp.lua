return {
	{
	  "williamboman/mason.nvim",
	  dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
	  },
	  config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
		  ensure_installed = { "ts_ls", "html", "cssls", "lua_ls" },
		})
  
		require("mason-lspconfig").setup_handlers({
		  function(server_name)
			require("lspconfig")[server_name].setup({
			  on_attach = function(client, bufnr)
				-- Enable semantic tokens (LSP Highlighting)
				if client.server_capabilities.semanticTokensProvider then
				  vim.lsp.semantic_tokens.start(bufnr, client.id)
				end
			  end,
			})
		  end,
		})
		require("nvim-treesitter.configs").setup({
		  ensure_installed = { "javascript", "typescript", "lua", "html", "css" },
		  highlight = { enable = true, additional_vim_regex_highlighting = false },
		})
  
		local cmp = require("cmp")
		cmp.setup({
		  snippet = {
			expand = function(args)
			  require("luasnip").lsp_expand(args.body)
			end,
		  },
		  mapping = cmp.mapping.preset.insert({
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		  }),
		  sources = {
			{ name = "nvim_lsp" },
			{ name = "buffer" },
			{ name = "path" },
			{ name = "luasnip" },
		  },
		})
  
		require("lspconfig").ts_ls.setup({
		  filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
		})
		require("lspconfig").html.setup({})
		require("lspconfig").cssls.setup({})
		require("lspconfig").lua_ls.setup({})
	  end,
	}
}
