{ lib, pkgs, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "living-code";
  isColorscheme = true;
  maintainers = [ ];
  url = "https://github.com/ElliotLuque/living-code";

  # Living Code is not packaged in Nixpkgs yet.
  package = lib.mkPackageOption pkgs "living-code" { default = null; } // {
    default =
      pkgs.vimPlugins.living-code or (pkgs.vimUtils.buildVimPlugin {
        pname = "living-code";
        version = "unstable-777900b";
        src = pkgs.fetchFromGitHub {
          owner = "ElliotLuque";
          repo = "living-code";
          rev = "777900b42cd7d5d3831c6929322ce304b0a21e88";
          hash = "sha256-0RdvxdO0uRx/3ZkJigxq+TWix+0lMgbvHveSnVGAHOU=";
        };
      });
    defaultText = lib.literalExpression ''
      pkgs.vimPlugins.living-code or (pkgs.vimUtils.buildVimPlugin { ... })
    '';
  };

  settingsOptions = {
    flavor = lib.nixvim.defaultNullOpts.mkEnum [ "night" "signal" "frost" "paper" ] "night" ''
      Theme flavor used with a dark background.
    '';
    light_flavor = lib.nixvim.defaultNullOpts.mkEnum [ "night" "signal" "frost" "paper" ] "paper" ''
      Theme flavor used with a light background.
    '';
    transparent = lib.nixvim.defaultNullOpts.mkBool false ''
      Use a transparent background.
    '';
    italic_comments = lib.nixvim.defaultNullOpts.mkBool true ''
      Render comments in italics.
    '';
    dim_inactive = lib.nixvim.defaultNullOpts.mkBool false ''
      Dim the background of inactive windows.
    '';
    on_highlights = lib.nixvim.mkNullOrOption lib.types.rawLua ''
      Lua function receiving the highlight table and palette before the theme is applied.
    '';
  };

  settingsExample = {
    flavor = "night";
    transparent = true;
    italic_comments = true;
  };

  extraConfig.opts.termguicolors = lib.mkDefault true;
}
