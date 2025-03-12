return {
    "tpope/vim-fugitive",
    config = function()
      -- Notify when opening Neovim about the current branch
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD")
          branch = vim.fn.trim(branch)
          if branch ~= "" then
            vim.notify("Currently on branch: " .. branch, "info", { title = "Git Branch" })
          end
        end,
      })
    end
  }
  