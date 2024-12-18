require("luasnip.session.snippet_collection").clear_snippets("go")

local ls = require("luasnip")

local s = ls.snippet
local sn = ls.snippet_node
local c = ls.choice_node
local i = ls.insert_node
local f = ls.function_node
local t = ls.text_node
local rep = require("luasnip.extras").rep

local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

ls.add_snippets("go", {
  s({
    trig = "main",
    name = "Main",
    dscr = "Create main function",
  }, fmta("func main() {\n\t<>\n}", i(0))),
  s(
    {
      trig = "fn",
      name = "Function",
      dscr = "Create a function or a method",
    },
    fmt(
      [[
      // {name1} {desc}
      func {rec}{name2}({args}) {ret} {{
        {finally}
      }}
    ]],
      {
        name1 = rep(2),
        desc = i(5, "description"),
        rec = c(1, {
          t(""),
          sn(
            nil,
            fmt("({} {}) ", {
              i(1, "r"),
              i(2, "receiver"),
            })
          ),
        }),
        name2 = i(2, "Name"),
        args = i(3),
        ret = c(4, {
          i(1, "error"),
          sn(
            nil,
            fmt("({}, {}) ", {
              i(1, "ret"),
              i(2, "error"),
            })
          ),
        }),
        finally = i(0),
      }
    )
  ),
})
