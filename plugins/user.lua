return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- load it!
    end,
  },
  {
    "leoluz/nvim-dap-go",
    lazy = false,
    config = function()
      require("dap-go").setup{
        -- dap_configurations = {
        --   {
        --     -- Must be "go" or it will be ignored by the plugin
        --     type = "go",
        --     name = "Attach remote",
        --     mode = "remote",
        --     request = "attach",
        --   },
        -- },
        delve = {
          path = "dlv",
          initialize_timeout_sec = 20,
          args = {},
          build_flags = "",
          -- port = "${port}",
        },
      }
    end,
  },
  {
    "mattn/vim-goimports",
    lazy = false,
  },
}
