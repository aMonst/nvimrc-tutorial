-- 插件管理文件
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- 主题配置
    use 'folke/tokyonight.nvim'
    use 'Mofiqul/vscode.nvim'
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
end)
