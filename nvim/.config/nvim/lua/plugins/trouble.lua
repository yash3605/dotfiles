-- Does not work currently
return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  config = function()
    require("trouble").setup({
      icons = false,
    })

    vim.keymap.set("n", "<leader>tt", function()
      require("trouble").toggle({ mode = "n" })
    end)

    vim.keymap.set("n", "[t", function()
      require("trouble").next({ skip_groups = true, jump = true })
    end)

    vim.keymap.set("n", "]t", function()
      require("trouble").previous({ skip_groups = true, jump = true })
    end)
  end,
}
