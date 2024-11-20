return {
  {
    "render-markdown.nvim",
    opts = {
      indent = {
        enabled = true,
        per_level = 2,
        skip_level = 0,
        skip_heading = false,
      },
      heading = {
        border = true,
        border_virtual = true,
      },
      checkbox = {
        enabled = true,
        unchecked = {
          icon = "󰄱 ",
          highlight = "RenderMarkdownUnchecked",
          scope_highlight = nil,
        },
        checked = {
          icon = "󰱒 ",
          highlight = "RenderMarkdownChecked",
          scope_highlight = nil,
        },
      },
      quote = { repeat_linebreak = true },
      win_options = {
        showbreak = { default = "", rendered = "  " },
        breakindent = { default = false, rendered = true },
        breakindentopt = { default = "", rendered = "" },
      },
    },
  },
}
