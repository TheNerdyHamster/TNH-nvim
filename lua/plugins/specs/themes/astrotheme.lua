return {
  "AstroNvim/astrotheme",
  commit = "1aebd39",
  opts = function()
    local C = require("astrotheme.colors")

    return {
      style = {
        border = false,
      },
      highlights = {
        global = {
          RainbowRed = { fg = C.red },
          RainbowYellow = { fg = C.yellow },
          RainbowBlue = { fg = C.blue },
          RainbowOrange = { fg = C.orange },
          RainbowGreen = { fg = C.green },
          RainbowViolet = { fg = C.purple },
          RainbowCyan = { fg = C.cyan },
        },
      },
    }
  end,
}
