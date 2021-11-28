local M = {}

M.config = function()
  local status_ok, _ = pcall(require, "indent_blankline")
  if not status_ok then
    return
  end
  vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
  vim.g.indent_blankline_filetype_exclude = {
    "help",
    "terminal",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
  }
  vim.g.indentLine_enabled = 1
  vim.g.indent_blankline_char = "▏"
  vim.g.space_char_blankline = " "
  vim.g.show_end_of_line = true
  vim.g.indent_blankline_show_trailing_blankline_indent = false
  vim.g.indent_blankline_show_first_indent_level = true
  vim.g.indent_blankline_use_treesitter = true
  vim.g.indent_blankline_show_current_context = true
  vim.g.indent_blankline_context_patterns = {
    "class",
    "return",
    "function",
    "case",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  }
  -- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
  vim.wo.colorcolumn = "99999"
end
return M
