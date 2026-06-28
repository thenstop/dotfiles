local wl = require("witch-line")

local cwd_component = {
  left = function()
    return " 󱉭 " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":~")
  end,
  style = { fg = "#89b4fa", bold = true },
}

local mode_component = {
  [0] = "mode",
  style = { fg = "#a6e3a1", bold = true },
}

local file_icon_component = {
  [0] = "file.icon",
}

local file_name_component = {
  [0] = "file.name",
  style = { fg = "#cdd6f4" },
}

local cursor_pos_component = {
  [0] = "cursor.pos",
  style = { fg = "#cba6f7" },
}

local datetime_component = {
  [0] = "datetime",
  style = { fg = "#f9e2af" },
}

wl.setup({
  statusline = {
    global = {
      mode_component,
      file_icon_component,
      file_name_component,
      cwd_component,
      "%=",
      cursor_pos_component,
      datetime_component,
    },
  },
})
