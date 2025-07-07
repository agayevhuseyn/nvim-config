-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.g.barbar_auto_setup = false

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --use({
    --    'rose-pine/neovim',
    --    as = 'rose-pine',
    --    config = function()
    --        vim.cmd('colorscheme rose-pine')
    --    end
    --})

    use({
        "catppuccin/nvim",
        as = "catppuccin",
    })

    use('nvim-treesitter/nvim-treesitter', { run =':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use('neovim/nvim-lspconfig')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('saadparwaiz1/cmp_luasnip')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-nvim-lua')

    use('romgrk/barbar.nvim')

    use('sindrets/diffview.nvim')

    -- COPILOT
    use('github/copilot.vim')

    -- radium theme
    use('Sly-Harvey/radium.nvim')

    -- seal vim
    use('agayevhuseyn/seal.vim')
end)
