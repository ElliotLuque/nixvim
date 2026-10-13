{
  imports = [ ./colorschemes/living-code.nix ];

  colorschemes.living-code = {
    enable = true;
    settings = {
      flavor = "night";
      transparent = true;
      italic_comments = true;
      on_highlights.__raw = ''
        function(highlights, palette)
          highlights.CursorLineNr = { fg = palette.colors.copper }
          highlights.NavicText = { fg = palette.colors.text }
        end
      '';
    };
  };

  opts.background = "dark";
}
