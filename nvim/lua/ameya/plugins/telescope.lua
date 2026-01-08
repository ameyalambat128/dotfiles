return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({})
  end,
  keys = {
    { "<leader>fg", function() require("telescope.builtin").git_files() end, desc = "Find git files" },
    { "<leader>fr", function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Find buffers" },
    { "<leader>fh", ":Telescope find_files hidden=true<CR>", desc = "Find files (hidden)" },
  },
}
