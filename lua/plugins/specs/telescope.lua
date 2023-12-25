return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      return {
        defaults = {
          prompt_prefix = "   ",
          selection_caret = "  ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "bottom",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = { "node_modules" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      {
        "danielfalk/smart-open.nvim",
        dependencies = {
          "kkharji/sqlite.lua",
          "nvim-telescope/telescope-fzy-native.nvim",
        },
        config = function()
          require("telescope").load_extension("smart_open")
        end,
      },
    },
    keys = {
      {
        "<leader>ff",
        "<cmd>lua require('telescope').extensions.smart_open.smart_open({ cwd_only = true, filename_first = false })<CR>",
        desc = "telescope: find_files",
      },
      { 
        "<leader>fg", 
        "<cmd>Telescope live_grep<CR>", 
        desc = "telescope: live_grep" 
      },
      { 
        "<leader>fb", 
        "<cmd>Telescope buffers<CR>", 
        desc = "telescope: buffers" 
      },
      { 
        "<leader>fh", 
        "<cmd>Telescope help_tags<CR>", 
        desc = "telescope: help_tags" 
      },
    },
    cmd = {
      "Telescope",
    },
  },
}
