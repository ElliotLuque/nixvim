_: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        theme = "catppuccin";
	section_separators = {
	  left = "";
	  right = "";
	};
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            icon = "";
          }
        ];
        lualine_b = [
          {
	    __unkeyed-1 = "filename";
	    file_status = true;
	    padding = {
	      left = 2;
	      right = 2;
	    };
	  }
        ];
        lualine_c = [
          {
	    __unkeyed-1 = "branch";
	    icon = "󰘬";
	    separator = "";
	  }
	  {
	    __unkeyed-1 = "diff";
	    separator = "";
	  }
        ];
        lualine_x = [
          {
            __unkeyed-1 = "diagnostics";
            sources = [ "nvim_lsp" ];
	    separator = "";
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = " ";
            };
          }
          {
            __unkeyed-1 = "filetype";
          }
        ];
        # lualine_x = [
        #   {
        #     __unkeyed-1.__raw = ''
        #       function()
        #         local icon = " "
        #         local status = require("copilot.api").status.data
        #         return icon .. (status.message or " ")
        #       end,
        #
        #       cond = function()
        #        local ok, clients = pcall(vim.lsp.get_clients, { name = "copilot", bufnr = 0 })
        #        return ok and #clients > 0
        #       end,
        #     '';
        #   }
        # ];
        lualine_y = [ ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
          }
        ];
      };
    };
  };
}
