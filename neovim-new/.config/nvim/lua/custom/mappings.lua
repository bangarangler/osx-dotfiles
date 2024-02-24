---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- Toggle Transparency
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
    ["<C-e>"] = { "3<C-e>", "Scroll Down Quickly" },
    ["<C-y>"] = { "3<C-y>", "Scroll Up Quickly" },
    ["jk"] = { "<esc>", "Exit Insert Mode" },
    ["<leader><leader>l"] = { ":noh<CR><C-L>", "Remove search highlights" },
    ["<leader>m"] = { ":bufdo! bw<CR>", "Close all buffers"},
    ["<C-h>"] = { ":TmuxNavigateLeft<CR>", "Tmux/Nvim Move Left"},
    ["<C-j>"] = { ":TmuxNavigateDown<CR>", "Tmux/Nvim Move Down"},
    ["<C-k>"] = { ":TmuxNavigateUp<CR>", "Tmux/Nvim Move Up"},
    ["<C-l>"] = { ":TmuxNavigateRight<CR>", "Tmux/Nvim Move Right"},
    ["<C-\\>"] = { ":TmuxNavigatePrevious<CR>", "Tmux/Nvim Move Previous"},
    ["<leader><leader>f"] = { ":HopAnywhere<CR>", "Hop Anywhere"},
    ["<leader><leader>fw"] = { ":HopWord<CR>", "Hop Word"},
    ["<leader><leader>fc"] = { ":HopChar2<CR>", "Hop Character Two or if only one letter hit enter"},
    ["<leader><leader>fl"] = { ":HopLine<CR>", "Hop Line"},
    ["<leader><leader>fls"] = { ":HopLineStart<CR>", "Hop Line Start"},
    ["<leader><leader>fp"] = { ":HopPattern<CR>", "Hop Pattern"},
    ["<leader><leader>t"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- GO
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}
-- END GO

-- more keybinds!

return M
