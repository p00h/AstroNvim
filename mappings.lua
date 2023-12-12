-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --
    --
    -- GO mappings
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      desc = "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last_test()
      end,
      desc = "Debug last go test"
    },

  -- Trouble
    ["<leader>xx"] = {function() require("trouble").toggle() end, desc = "Trouble toggle"},
    ["<leader>xw"] = {function() require("trouble").toggle("workspace_diagnostics") end, desc = "Trouble Workspace diagnostics"},
    ["<leader>xd"] = {function() require("trouble").toggle("document_diagnostics") end, desc = "Trouble Document diagnostics"},
    ["<leader>xq"] = {function() require("trouble").toggle("quickfix") end, desc = "Trouble quickfix"},
    ["<leader>xl"] = {function() require("trouble").toggle("loclist") end, desc = "Trouble loclist"},
    ["gR"] = { function() require("trouble").toggle("lsp_references") end, desc = "Trouble LSP references"},
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  }
}
