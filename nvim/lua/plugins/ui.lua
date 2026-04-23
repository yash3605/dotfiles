return {
  -- Kill tabline
  { "akinsho/bufferline.nvim", enabled = false },

  -- Kill lualine (we use mini.statusline)
  { "nvim-lualine/lualine.nvim", enabled = false },

  -- Kill breadcrumbs / winbar
  { "SmiteshP/nvim-navic", enabled = false },
  { "utilyre/barbecue.nvim", enabled = false },

  -- Kill dashboard (optional — remove this block if you want to keep it)
  { "nvimdev/dashboard-nvim", enabled = false },

  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },

  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
}
