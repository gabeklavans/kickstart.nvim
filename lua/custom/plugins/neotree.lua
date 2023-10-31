return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function ()
    vim.keymap.set('n', '<leader>ts', ':Neotree action=focus source=filesystem position=left toggle<CR>', { desc = "Toggle [F]ile Tree [S]idebar"})
    vim.keymap.set('n', '<leader>te', ':Neotree action=focus source=filesystem position=current<CR>', { desc = "Open [F]ile [E]xplorer in Current Window"})
  end
}
