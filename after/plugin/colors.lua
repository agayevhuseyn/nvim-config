require("catppuccin").setup({
    no_italic = true,
})

local function ChangeColor(color)
    color = color or 'rose-pine'
    vim.cmd.colorscheme(color)

--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end


vim.schedule(function()
    local filetype = vim.bo.filetype
    if filetype == "seal" then
        ChangeColor("radium")
    else
        ChangeColor("catppuccin")
    end
end)
