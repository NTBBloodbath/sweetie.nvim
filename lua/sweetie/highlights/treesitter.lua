--- Tree-Sitter sweetie highlighting groups
---@class treesitter
local treesitter = {}

treesitter.setup = function(palette)
  return {
    ["@annotation"] = {
      default = true,
      link = "PreProc",
    },
    ["@attribute"] = {
      default = true,
      link = "PreProc",
    },
    ["@boolean"] = {
      default = true,
      link = "Boolean",
    },
    ["@character"] = {
      default = true,
      link = "Character",
    },
    ["@character.special"] = {
      default = true,
      link = "SpecialChar",
    },
    ["@comment"] = {
      default = true,
      link = "Comment",
    },
    ["@conditional"] = {
      default = true,
      link = "Conditional",
    },
    ["@constant"] = {
      default = true,
      link = "Constant",
    },
    ["@constant.builtin"] = {
      default = true,
      link = "@constant",
    },
    ["@constant.macro"] = {
      default = true,
      link = "Define",
    },
    ["@constructor"] = {
      default = true,
      link = "Constructor",
    },
    ["@debug"] = {
      default = true,
      link = "Debug",
    },
    ["@define"] = {
      default = true,
      link = "Define",
    },
    ["@exception"] = {
      default = true,
      link = "Exception",
    },
    ["@field"] = {
      default = true,
      link = "Identifier",
    },
    ["@float"] = {
      default = true,
      link = "Float",
    },
    ["@function"] = {
      default = true,
      link = "Function",
    },
    ["@function.builtin"] = {
      default = true,
      link = "FunctionBuiltin",
    },
    ["@function.call"] = {
      default = true,
      link = "@function",
    },
    ["@function.macro"] = {
      default = true,
      link = "Macro",
    },
    ["@include"] = {
      default = true,
      link = "Include",
    },
    ["@keyword"] = {
      default = true,
      link = "Keyword",
    },
    ["@keyword.function"] = {
      default = true,
      link = "KeywordFunction",
    },
    ["@keyword.operator"] = {
      default = true,
      link = "@operator",
    },
    ["@keyword.return"] = {
      default = true,
      link = "@keyword",
    },
    ["@label"] = {
      default = true,
      link = "Label",
    },
    ["@method"] = {
      default = true,
      link = "Method",
    },
    ["@method.call"] = {
      default = true,
      link = "@method",
    },
    ["@namespace"] = {
      default = true,
      link = "Include",
    },
    ["@none"] = {
      default = true,
    },
    ["@number"] = {
      default = true,
      link = "Number",
    },
    ["@operator"] = {
      default = true,
      link = "Operator",
    },
    ["@parameter"] = {
      default = true,
      link = "Identifier",
    },
    ["@parameter.reference"] = {
      default = true,
      link = "@parameter",
    },
    ["@preproc"] = {
      default = true,
      link = "PreProc",
    },
    ["@property"] = {
      default = true,
      link = "Identifier",
    },
    ["@punctuation.bracket"] = {
      default = true,
      link = "Delimiter",
    },
    ["@punctuation.delimiter"] = {
      default = true,
      link = "Delimiter",
    },
    ["@punctuation.special"] = {
      default = true,
      link = "Delimiter",
    },
    ["@repeat"] = {
      default = true,
      link = "Repeat",
    },
    ["@storageclass"] = {
      default = true,
      link = "StorageClass",
    },
    ["@string"] = {
      default = true,
      link = "String",
    },
    ["@string.escape"] = {
      default = true,
      link = "SpecialChar",
    },
    ["@string.regex"] = {
      default = true,
      link = "String",
    },
    ["@string.special"] = {
      default = true,
      link = "SpecialChar",
    },
    ["@symbol"] = {
      default = true,
      link = "Identifier",
    },
    ["@tag"] = {
      default = true,
      link = "Tag",
    },
    ["@tag.attribute"] = {
      default = true,
      link = "@property",
    },
    ["@tag.delimiter"] = {
      default = true,
      link = "Delimiter",
    },
    ["@error"] = {
      default = true,
      link = "ErrorMsg",
    },
    ["@text"] = {
      default = true,
      link = "@none",
    },
    ["@text.danger"] = {
      default = true,
      link = "ErrorMsg",
    },
    ["@text.emphasis"] = {
      default = true,
      link = "Emphasis",
    },
    ["@text.environment"] = {
      default = true,
      link = "Macro",
    },
    ["@text.environment.name"] = {
      default = true,
      link = "Type",
    },
    ["@text.literal"] = {
      default = true,
      link = "String",
    },
    ["@text.math"] = {
      default = true,
      link = "Special",
    },
    ["@text.note"] = {
      default = true,
      link = "SpecialComment",
    },
    ["@text.reference"] = {
      default = true,
      link = "Constant",
    },
    ["@text.strike"] = {
      strikethrough = true,
    },
    ["@text.strong"] = {
      default = true,
      link = "Bold",
    },
    ["@text.title"] = {
      default = true,
      link = "Title",
    },
    ["@text.underline"] = {
      underline = true,
    },
    ["@text.uri"] = {
      default = true,
      link = "URL",
    },
    ["@text.warning"] = {
      default = true,
      link = "WarningMsg",
    },
    ["@text.todo"] = {
      default = true,
      link = "Todo",
    },
    ["@type"] = {
      default = true,
      link = "Type",
    },
    ["@type.builtin"] = {
      default = true,
      link = "TypeBuiltin",
    },
    ["@type.definition"] = {
      default = true,
      link = "Typedef",
    },
    ["@type.qualifier"] = {
      default = true,
      link = "Type",
    },
    ["@variable"] = {
      default = true,
      link = "@text",
    },
    ["@variable.builtin"] = {
      default = true,
      link = "VariableBuiltin",
    },
  }
end

return treesitter
