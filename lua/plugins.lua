-- 插件管理文件
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- 主题配置
    use 'folke/tokyonight.nvim'
    use 'Mofiqul/vscode.nvim'
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'glepnir/dashboard-nvim'}
    use {"folke/which-key.nvim"}
    use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} , {
            'nvim-treesitter/nvim-treesitter',
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        }}
    }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {'rmagatti/auto-session'}
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
end)
