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

    vim.keymap.set("n", "<leader>aa", function() harpoon:list():append() end, { desc = "H[a]rpoon [A]dd"})
    vim.keymap.set("n", "<leader>aq", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "H[a]rpoon [Q]uicklist"})

    vim.keymap.set("n", "<C-h>h", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-h>j", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-h>k", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-h>l", function() harpoon:list():select(4) end)
  end
}
