---@diagnostic disable: undefined-global
return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "mason-org/mason.nvim", config = true }, -- NOTE: Must be loaded before dependants
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or "n"
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
          end

          map("K", vim.lsp.buf.hover, "Hover")
          map("gd", Snacks.picker.lsp_definitions, "Goto Definition")
          map("gr", Snacks.picker.lsp_references, "Goto References")
          map("gI", Snacks.picker.lsp_implementations, "Goto Implementation")
          map("gD", Snacks.picker.lsp_declarations, "Goto Declaration")
          map("<leader>gD", Snacks.picker.lsp_type_definitions, "Goto Type Definition")

          map("gK", vim.lsp.buf.signature_help, "Signature Help")
          map("<c-q>", vim.lsp.buf.signature_help, "Signature Help", "i")

          map("<leader>rn", vim.lsp.buf.rename, "Rename")
          map("<leader>cR", Snacks.rename.rename_file, "Rename File")

          map("<leader>q", vim.diagnostic.setloclist, "Open diagnostic Quickfix list")
          map("<leader>cd", vim.diagnostic.open_float, "Show Diagnostic")
          map("<leader>ca", vim.lsp.buf.code_action, "Code Action", { "n", "v" })
          map("<leader>cc", vim.lsp.codelens.run, "Run Codelens", { "n", "v" })
          map("<leader>cC", vim.lsp.codelens.refresh, "Refresh & Display Codelens")

          map("]d", function()
            vim.diagnostic.jump({ count = 1 })
          end, "Next Diagnostic")
          map("[d", function()
            vim.diagnostic.jump({ count = -1 })
          end, "Prev Diagnostic")
        end,
      })
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "stylua",
        "ts_ls",
        "gopls",
      },
      automatic_enable = true,
    },
  },
}
