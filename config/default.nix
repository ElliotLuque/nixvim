{
  imports = [ 
    ./autocommands.nix
    ./options.nix
    ./keymaps.nix
    ./colorscheme.nix

    ./plugins/cmp/cmp.nix 
    ./plugins/cmp/lspkind.nix 
    ./plugins/cmp/schemastore.nix 

    ./plugins/editor/autopairs.nix 
    ./plugins/editor/illuminate.nix 
    ./plugins/editor/indent-blankline.nix 
    ./plugins/editor/todo-comments.nix 
    ./plugins/editor/treesitter.nix 

    ./plugins/git/gitsigns.nix 
    ./plugins/git/lazygit.nix 

    ./plugins/lsp/conform.nix 
    # ./plugins/lsp/fidget.nix 
    ./plugins/lsp/none-ls.nix 
    ./plugins/lsp/lsp.nix 
    
    ./plugins/snippets/luasnip.nix 

    ./plugins/ui/lualine.nix 
    ./plugins/ui/dashboard.nix 
    ./plugins/ui/barbecue.nix 
    ./plugins/ui/dressing.nix 
    ./plugins/ui/noice.nix 
    ./plugins/ui/nvim-notify.nix 

    ./plugins/utils/web-devicons.nix 
    ./plugins/utils/telescope.nix 
    ./plugins/utils/whichkey.nix 
  ];
}
