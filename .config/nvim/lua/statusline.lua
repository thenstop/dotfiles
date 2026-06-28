local wl = require("witch-line")

local mocha = {
  bg = "#1e1e2e",
  fg = "#cdd6f4",
  rosewater = "#f5e0dc",
  flamingo = "#f2cdcd",
  pink = "#f5c2e7",
  mauve = "#cba6f7",
  red = "#f38ba8",
  maroon = "#eba0ac",
  peach = "#fab387",
  yellow = "#f9e2af",
  green = "#a6e3a1",
  teal = "#94e2d5",
  sky = "#89b4fa",
  sapphire = "#74c7ec",
  blue = "#89b4fa",
  lavender = "#b4befe",
  surface0 = "#313244",
  surface1 = "#45475a",
  surface2 = "#585b70",
}

wl.setup({
  theme = {
    normal = {
      a = { bg = mocha.lavender, fg = mocha.bg, style = "bold" },
      b = { bg = mocha.surface1, fg = mocha.fg },
      c = { bg = mocha.bg, fg = mocha.fg },
      x = { bg = mocha.bg, fg = mocha.maroon },
      y = { bg = mocha.surface1, fg = mocha.teal },
      z = { bg = mocha.mauve, fg = mocha.bg, style = "bold" },
    },
    insert = {
      a = { bg = mocha.green, fg = mocha.bg, style = "bold" },
    },
    visual = {
      a = { bg = mocha.flamingo, fg = mocha.bg, style = "bold" },
    },
    replace = {
      a = { bg = mocha.red, fg = mocha.bg, style = "bold" },
    },
    command = {
      a = { bg = mocha.peach, fg = mocha.bg, style = "bold" },
    },
  },
  sections = {
    witch_a = {
      { "mode", format = " %s " }
    },
    witch_b = {
      { "cwd", format = " %s " }
    },
    witch_c = {
      { "file_name", format = " %s " }
    },
    witch_x = {
      { "file_type", format = " %s " }
    },
    witch_y = {
      { "line_col", format = " Ln %l, Col %c " }
    },
    witch_z = {
      { "time", format = " %H:%M " }
    }
  }
})
