return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function ()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = "[H]arpoon [A]dd"})
    vim.keymap.set("n", "<leader>hq", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[H]arpoon [Q]uicklist"})

    vim.keymap.set("n", "<C-h>h", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-h>j", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-h>k", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-h>l", function() harpoon:list():select(4) end)
  end
}
