require("huseyn")

vim.opt.syntax = "enable"
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Copilot
vim.g.copilot_enabled = false

local function toggle_copilot()
    if vim.g.copilot_enabled then
        vim.cmd("Copilot disable")
        vim.g.copilot_enabled = false
        print("Copilot disabled")
    else
        vim.cmd("Copilot enable")
        vim.g.copilot_enabled = true 
        print("Copilot enabled")
    end
end

vim.keymap.set("n", "<leader>cc", toggle_copilot)
