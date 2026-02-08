{ pkgs, ... }:
{
  config = {
    extraConfigLuaPre =
      # lua
      ''
        local signs = {
          { name = 'DiagnosticSignError', text = ' ' },
          { name = 'DiagnosticSignWarn', text = ' ' },
          { name = 'DiagnosticSignInfo', text = ' ' },
          { name = 'DiagnosticSignHint', text = ' ' },
        }

        for _, sign in ipairs(signs) do
          vim.fn.sign_define(sign.name, { text = sign.text, texthl = sign.name, numhl = sign.name })
        end
      '';

    diagnostic.settings = {
      signs = true;
      update_in_insert = true;
      underline = true;
      severity_sort = true;
      float = {
        border = "rounded";
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      cellular-automaton-nvim
    ];

    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {
      number = true;
      relativenumber = true;
      signcolumn = "yes:2";
      clipboard = "unnamedplus";

      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;

      smartindent = true;
      breakindent = true;
      autoindent = true;
      smarttab = true;
      linebreak = true;
      cursorline = true;

      mouse = "a";
      spell = false;

      updatetime = 250;
      timeoutlen = 300;

      fileformats = "unix";
      undofile = true;
      termguicolors = true;
      showmode = false;

      cmdheight = 0;

      ignorecase = true;
      smartcase = true;
      hlsearch = true;
      incsearch = true;
    };
  };
}
