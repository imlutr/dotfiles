return {
  {
    "axkirillov/easypick.nvim",
    lazy = true,
    dependencies = { "nvim-telescope/telescope.nvim" },
    cmd = "Easypick",
    config = function()
      local easypick = require("easypick")
      local base_branch = "main"

      easypick.setup({
        pickers = {
          {
            name = "dirty-files",
            command = "git status -s | cut -c 4-",
            previewer = easypick.previewers.file_diff(),
          },
          {
            name = "branch-dirty-files",
            command = "git diff --name-only $(git merge-base HEAD " .. base_branch .. " )",
            previewer = easypick.previewers.branch_diff({ base_branch = base_branch }),
          },
        },
      })
    end,
    keys = {
      {
        "<leader>gd",
        "<cmd>Easypick dirty-files<CR>",
        desc = "Git dirty files",
      },
      {
        "<leader>gD",
        "<cmd>Easypick branch-dirty-files<CR>",
        desc = "Git dirty files (branch)",
      },
    },
  },
}
