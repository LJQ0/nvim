return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()

            -- 设置开启/关闭文档树的按键
            vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
            require("nvim-tree").setup {}
        end
    }
}
