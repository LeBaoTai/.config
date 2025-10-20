return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,


    config = function()
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        require('oil').setup({
            columns = {
                "icon",
                "permissions",
                "size",
            },

            view_options = {
                show_hidden = true,
            },

            lsp_file_methods = {
                autosave_changes = true,
            }
        })
    end
}
