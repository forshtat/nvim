require "nvchad.options"

-- add yours here!

-- Only configure shell on macOS
if vim.loop.os_uname().sysname == "Darwin" then
  -- Get macOS login shell
  local login_shell = vim.fn.trim(vim.fn.system("dscl . -read ~/ UserShell | awk '{print $2}'"))
  -- Add -l so it runs as a login shell
  vim.env.SHELL = login_shell .. " -l"
end
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
