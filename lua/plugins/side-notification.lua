return {
	"j-hui/fidget.nvim",
	config = function()
	  require("fidget").setup({
		progress = { suppress_on_insert = false },
		notification = { override_vim_notify = true },
	  })
  
	  -- Custom notify function
	  local function notify(msg, hl)
		vim.notify(msg, "info", { title = "Dev", highlight = hl })
	  end
  
	  -- Notify on Neovim startup
	  vim.defer_fn(function()
		notify("Neovim Ready!", "Title")
	  end, 100)
  
	  -- Notify on LSP attach
	  vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(args)
		  local client = vim.lsp.get_client_by_id(args.data.client_id)
		  if client then
			notify("LSP: " .. client.name .. " Started", "Function")
		  end
		end,
	  })
  
	  -- Notify on file save
	  vim.api.nvim_create_autocmd("BufWritePost", {
		pattern = "*",
		callback = function()
		  local file = vim.fn.expand("%:t")
		  notify("Saved: " .. file, "Keyword")
		end,
	  })
	end
  }
  