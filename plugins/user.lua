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
        delve = {
          path = "dlv",
          initialize_timeout_sec = 20,
          args = {},
          build_flags = "",
          port = "36362",
        },
        -- dap_configurations = {
        --   {
        --     -- Must be "go" or it will be ignored by the plugin
        --     type = "go",
        --     name = "FFF",
        --     mode = "remote",
        --     request = "attach",
        --   },
        -- },
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = true,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "mattn/vim-goimports",
    lazy = false,
  },
  {
    "folke/trouble.nvim",
    lazy = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {

    },
  }
}
