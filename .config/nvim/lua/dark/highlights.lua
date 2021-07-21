local highlights = {
  Normal = { fg = C.fg, bg = Config.transparent_background and "NONE" or C.bg },
  SignColumn = { bg = C.bg },
  MsgArea = { fg = C.fg, bg = C.bg },
  ModeMsg = { fg = C.fg, bg = C.bg },
  MsgSeparator = { fg = C.fg, bg = C.bg },
  SpellBad = { fg = C.error_red, style = "underline" },
  SpellCap = { fg = C.yellow, style = "underline" },
  SpellLocal = { fg = C.green, style = "underline" },
  SpellRare = { fg = C.purple, style = "underline" },
  NormalNC = { fg = C.fg, bg = C.bg },
  Pmenu = { fg = C.white, bg = C.accent },
  PmenuSel = { fg = C.alt_bg, bg = C.blue },
  WildMenu = { fg = C.alt_bg, bg = C.blue },
  CursorLineNr = { fg = C.light_gray, style = "bold" },
  Comment = { fg = C.blue, style = "italic" },
  Folded = { fg = C.accent, bg = C.alt_bg },
  FoldColumn = { fg = C.accent, bg = C.alt_bg },
  LineNr = { fg = C.gray },
  FloatBoder = { fg = C.gray, bg = C.alt_bg },
  Whitespace = { fg = C.gray },
  VertSplit = { fg = C.bg, bg = C.accent },
  CursorLine = { bg = C.alt_bg },
  CursorColumn = { bg = C.alt_bg },
  ColorColumn = { bg = C.alt_bg },
  NormalFloat = { bg = C.alt_bg },
  Visual = { bg = C.alt_bg },
  VisualNOS = { bg = C.alt_bg },
  WarningMsg = { fg = C.error_red, bg = C.bg },
  DiffAdd = { fg = C.alt_bg, bg = C.sign_add },
  DiffChange = { fg = C.alt_bg, bg = C.sign_change, style = "underline" },
  DiffDelete = { fg = C.alt_bg, bg = C.sign_delete },
  QuickFixLine = { bg = C.accent },
  PmenuSbar = { bg = C.alt_bg },
  PmenuThumb = { bg = C.white },
  MatchWord = { style = "underline" },
  MatchParen = { fg = C.pale_purple, bg = C.bg, style = "underline" },
  MatchWordCur = { style = "underline" },
  MatchParenCur = { style = "underline" },
  Cursor = { fg = C.cursor_fg, bg = C.cursor_bg },
  lCursor = { fg = C.cursor_fg, bg = C.cursor_bg },
  CursorIM = { fg = C.cursor_fg, bg = C.cursor_bg },
  TermCursor = { fg = C.cursor_fg, bg = C.cursor_bg },
  TermCursorNC = { fg = C.cursor_fg, bg = C.cursor_bg },
  Conceal = { fg = C.accent },
  Directory = { fg = C.blue },
  SpecialKey = { fg = C.blue, style = "bold" },
  Title = { fg = C.blue, style = "bold" },
  ErrorMsg = { fg = C.error_red, bg = C.bg, style = "bold" },
  Search = { fg = C.hint_blue, bg = C.alt_bg },
  IncSearch = { fg = C.hint_blue, bg = C.alt_bg },
  Substitute = { fg = C.alt_bg, bg = C.gray_blue },
  MoreMsg = { fg = C.cyan },
  Question = { fg = C.cyan },
  EndOfBuffer = { fg = C.bg },
  NonText = { fg = C.bg },
  Variable = { fg = C.white },
  String = { fg = C.blue },
  Character = { fg = C.light_green },
  Constant = { fg = C.orange },
  Number = { fg = C.red },
  Boolean = { fg = C.red },
  Float = { fg = C.red },
  Identifier = { fg = C.white },
  Function = { fg = C.purple },
  Operator = { fg = C.orange },
  Type = { fg = C.white },
  StorageClass = { fg = C.yellow },
  Structure = { fg = C.orange },
  Typedef = { fg = C.purple },
  Keyword = { fg = C.orange },
  Statement = { fg = C.orange },
  Conditional = { fg = C.orange },
  Repeat = { fg = C.orange },
  Label = { fg = C.orange },
  Exception = { fg = C.orange },
  Include = { fg = C.orange },
  PreProc = { fg = C.orange },
  Define = { fg = C.orange },
  Macro = { fg = C.orange },
  PreCondit = { fg = C.orange },
  Special = { fg = C.orange },
  SpecialChar = { fg = C.orange },
  Tag = { fg = C.pale_purple },
  Debug = { fg = C.red },
  Delimiter = { fg = C.gray },
  SpecialComment = { fg = C.blue },
  Underlined = { style = "underline" },
  Bold = { style = "bold" },
  Italic = { style = "italic" },
  Ignore = { fg = C.cyan, bg = C.bg, style = "bold" },
  Todo = { fg = C.red, bg = C.bg, style = "bold" },
  Error = { fg = C.error_red, bg = C.bg, style = "bold" },
  TabLine = { fg = C.white, bg = C.alt_bg },
  TabLineSel = { fg = C.white, bg = C.alt_bg },
  TabLineFill = { fg = C.white, bg = C.alt_bg },
}

return highlights
