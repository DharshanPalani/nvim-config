return {
	{
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		dependency = { "hrsh7th/nvim-cmp" },
		opts = {
			servers = {
				html = {},		-- npm i -g vscode-langservers-extracted
				jsonls = {},		-- npm i -g vscode-langservers-extracted
				cssls = {},		-- npm i -g vscode-langservers-extracted
				ts_ls = {},		-- npm i -g typescript typescript-language-server
				tailwindcss = {},	-- npm i -g @tailwindcss/language-server
				lua_ls = {},		-- brew install lua-lauguage-server
			}
		},
		config = function (_, opts)
			local lspconfig = require('lspconfig')
			for server, config in pairs(opts.servers) do
				config.capabilities = require('cmp_nvim_lsp').default_capabilities()
				lspconfig[server].setup(config)
			end
		end
	}
}

