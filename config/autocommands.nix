{
  autoGroups = {
    highlight_yank = { };
    vim_enter = { };
    indentscope = { };
    restore_cursor = { };
  };

  autoCmd = [
    {
      group = "highlight_yank";
      event = [ "TextYankPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
    # {
    #   group = "vim_enter";
    #   event = [ "VimEnter" ];
    #   pattern = "*";
    #   callback = {
    #     __raw = ''
    #       function()
    #         vim.cmd('Startup')
    #       end
    #     '';
    #   };
    # }
    {
      group = "restore_cursor";
      event = [ "BufReadPost" ];
      pattern = "*";
      callback = {
        __raw = ''
                    function()
                      if
                        vim.fn.line "'\"" > 1
                        and vim.fn.line "'\"" <= vim.fn.line "$"
                        and vim.bo.filetype ~= "commit"
                        and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
                      then
                        vim.cmd "normal! g`\""
          	      vim.cmd.normal("zz")
                      end
                    end
        '';
      };
    }
  ];
}
