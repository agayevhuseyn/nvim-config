-- now inside packer.lua
--vim.g.barbar_auto_setup = false

require("barbar").setup({
    animation = false,
    icons = {
        filetype = {
            enabled = false
        }
    }
})

vim.keymap.set("n", "<Tab>", function()
    vim.cmd.BufferNext()
end)

vim.keymap.set("n", "<S-Tab>", function()
    vim.cmd.BufferPrevious()
end)

vim.keymap.set("n", "<leader>x", function()
    vim.cmd.BufferClose()
end)
