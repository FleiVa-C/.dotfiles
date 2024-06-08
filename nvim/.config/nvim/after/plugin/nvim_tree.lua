require("nvim-tree").setup({
    view = {
        width = 50,
        side = "left",
    },
    git = {
        enable = true,
    }
})

vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>")
