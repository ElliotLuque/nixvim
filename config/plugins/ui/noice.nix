{
  plugins.noice = {
    enable = true;
    settings = {
      notify = {
        enabled = true;
        view = "notify";
      };
      messages = {
        enabled = true;
        view = "mini";
      };
      lsp = {
				hover = {
					enabled = true;
				};
        message = {
          enabled = false;
        };
				signature = {
          enabled = false;
        };
        progress = {
          enabled = false;
          view = "mini";
        };
      };
			views = {
				hover = {
					border = {
						style = "rounded";
					};
				};
				signature = {
					border = {
						style = "rounded";
					};
				};
			};
      popupmenu = {
        enabled = true;
        backend = "nui";
      };
    };
  };
}
