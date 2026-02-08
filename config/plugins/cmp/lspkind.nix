{
  plugins.lspkind = {
    enable = true;
    settings = {
      symbolMap = {
        Copilot = " ";
      };
      extraOptions = {
        mode = "symbol_text";
        maxwidth = 20;
        ellipsis_char = "...";
      };
    };
  };
}
