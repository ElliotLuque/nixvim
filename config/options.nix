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

    extraPlugins = with pkgs.vimPlugins; [
      cellular-automaton-nvim
    ];

    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {
      number = true;
      relativenumber = true;
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
