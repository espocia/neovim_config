local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall( require, "packer")
if not status then
  return
end 

return packer.startup( function(use)

  -- tmux navigator
  use("christoomey/vim-tmux-navigator")

  -- lua functions that many plugin uses
  use("nvim-lua/plenary.nvim")

  -- nvim packer
  use("wbthomason/packer.nvim")

  -- color scheme
  use { "bluz71/vim-nightfly-colors", as = "nightfly" }
  
  -- window maximizer  
  use("szw/vim-maximizer")

  -- surround 
  use("tpope/vim-surround")
  
  -- replace text with register 
  use("vim-scripts/ReplaceWithRegister")
  
  -- commenting
  use("tpope/vim-commentary")

  -- nvim tree
  use("nvim-tree/nvim-tree.lua")
  --
  -- neovim tree sitter
  use("nvim-treesitter/nvim-treesitter")
  --
  --dev icons
  use("ryanoasis/vim-devicons")
  use("nvim-tree/nvim-web-devicons")

  if packer_bootstrap then
    require("packer").sync()
  end 
end)  
