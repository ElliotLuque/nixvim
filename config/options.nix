{ pkgs, ... }:
{
  config = {
    extraConfigLuaPre =
      # lua
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
      '';

    diagnostics = {
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
