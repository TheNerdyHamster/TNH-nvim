local M = {}

M.UI = {
  colorscheme = {
    -- name = "nord",
    name = "astrotheme",


    themes = {
      -- { import = "plugins.specs.themes.nord" },
      { import = "plugins.specs.themes.astrotheme" },
    }
  }
}

_G.dots = M

return M
