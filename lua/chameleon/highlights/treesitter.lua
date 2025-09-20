return function(p)
  local vim = rawget(_G, "vim"); if not vim then return end

  -- Treesitter highlight groups
  vim.api.nvim_set_hl(0, "@comment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.color2, italic = true })
  vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "@comment.hack", { fg = p.color2, bold = true })
  vim.api.nvim_set_hl(0, "@comment.xxx", { fg = p.color6, bold = true })

  -- Core syntax roles
  vim.api.nvim_set_hl(0, "@constant", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@number", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@boolean", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@string", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@string.special", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@character", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.color2 })

  vim.api.nvim_set_hl(0, "@type", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@type.definition", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = p.color2 })

  vim.api.nvim_set_hl(0, "@function", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.color6, bold = true })
  vim.api.nvim_set_hl(0, "@function.call", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@method", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.color4 })

  vim.api.nvim_set_hl(0, "@variable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.color5, italic = true })
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.color4 })

  vim.api.nvim_set_hl(0, "@property", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@field", { fg = p.color4 })

  vim.api.nvim_set_hl(0, "@keyword", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.color2, bold = true })
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.color2 })

  vim.api.nvim_set_hl(0, "@operator", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.color6 })

  -- Markup (for markdown, etc.)
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.uic1, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg1, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.uic1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.color2 })

  -- Tags (HTML/XML: <div>, <Header>, <p>, <MyComponent>)
  vim.api.nvim_set_hl(0, "@tag", { fg = p.color2 }) -- div, header, main, MyComponent
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.color5 }) -- className, id, href, onClick
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.uic1 }) -- < > </ />

  -- Attributes (@decorators, [attributes], #[derive])
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.color3 }) -- @Component, @override, [Serializable]

  -- Labels (goto labels, break/continue labels)
  vim.api.nvim_set_hl(0, "@label", { fg = p.color6 }) -- label:, break label

  -- Namespace (std::, React., namespace MyNamespace)
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.color5 }) -- std, React, System
  vim.api.nvim_set_hl(0, "@module", { fg = p.color5 }) -- import * from 'module'

  -- Preproc
  vim.api.nvim_set_hl(0, "@preproc", { fg = p.color6 })

  -- Include
  vim.api.nvim_set_hl(0, "@include", { fg = p.color6 })

  -- Define
  vim.api.nvim_set_hl(0, "@define", { fg = p.color6 })

  -- Conditional
  vim.api.nvim_set_hl(0, "@conditional", { fg = p.color6 })

  -- Repeat
  vim.api.nvim_set_hl(0, "@repeat", { fg = p.color6 })

  -- Exception
  vim.api.nvim_set_hl(0, "@exception", { fg = p.color1 })

  -- Special characters
  vim.api.nvim_set_hl(0, "@character.printf", { fg = p.color2 })

  -- Diff (git diff colors: +added, -removed, ~modified)
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.color2 }) -- + added lines
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.color1 }) -- - removed lines
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.color3 }) -- ~ modified lines

  -- Language-specific
  -- Lua
  vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.lua", { fg = p.color1, italic = true })

  -- Python
  vim.api.nvim_set_hl(0, "@function.builtin.python", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = p.color1, italic = true })

  -- JavaScript/TypeScript
  vim.api.nvim_set_hl(0, "@function.builtin.javascript", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { fg = p.color1, italic = true })

  -- Additional core
  vim.api.nvim_set_hl(0, "@number.float", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@symbol", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@string.special.url", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "@string.special.path", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = p.color5, italic = true })

  -- Parameters and generics
  vim.api.nvim_set_hl(0, "@parameter", { fg = p.color5, italic = true })
  vim.api.nvim_set_hl(0, "@type.parameter", { fg = p.color4, italic = true })

  -- Storage classes / modifiers / annotations
  vim.api.nvim_set_hl(0, "@storageclass", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@modifier", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@annotation", { fg = p.color3 })

  -- Enums
  vim.api.nvim_set_hl(0, "@type.enum", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@type.enumMember", { fg = p.color3 })

  -- Methods
  vim.api.nvim_set_hl(0, "@function.method", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@function.method.call", { fg = p.color6 })

  -- Older TS highlight group compatibility (links)
  vim.api.nvim_set_hl(0, "TSString", { link = "@string" })
  vim.api.nvim_set_hl(0, "TSNumber", { link = "@number" })
  vim.api.nvim_set_hl(0, "TSFloat", { link = "@number.float" })
  vim.api.nvim_set_hl(0, "TSBoolean", { link = "@boolean" })
  vim.api.nvim_set_hl(0, "TSConstant", { link = "@constant" })
  vim.api.nvim_set_hl(0, "TSConstBuiltin", { link = "@constant.builtin" })
  vim.api.nvim_set_hl(0, "TSConstMacro", { link = "@constant.macro" })
  vim.api.nvim_set_hl(0, "TSFunction", { link = "@function" })
  vim.api.nvim_set_hl(0, "TSFuncBuiltin", { link = "@function.builtin" })
  vim.api.nvim_set_hl(0, "TSMethod", { link = "@method" })
  vim.api.nvim_set_hl(0, "TSProperty", { link = "@property" })
  vim.api.nvim_set_hl(0, "TSField", { link = "@field" })
  vim.api.nvim_set_hl(0, "TSParameter", { link = "@variable.parameter" })
  vim.api.nvim_set_hl(0, "TSVariable", { link = "@variable" })
  vim.api.nvim_set_hl(0, "TSVariableBuiltin", { link = "@variable.builtin" })
  vim.api.nvim_set_hl(0, "TSKeyword", { link = "@keyword" })
  vim.api.nvim_set_hl(0, "TSKeywordFunction", { link = "@keyword.function" })
  vim.api.nvim_set_hl(0, "TSKeywordOperator", { link = "@keyword.operator" })
  vim.api.nvim_set_hl(0, "TSRepeat", { link = "@keyword.repeat" })
  vim.api.nvim_set_hl(0, "TSConditional", { link = "@keyword.conditional" })
  vim.api.nvim_set_hl(0, "TSException", { link = "@keyword.exception" })
  vim.api.nvim_set_hl(0, "TSInclude", { link = "@include" })
  vim.api.nvim_set_hl(0, "TSNamespace", { link = "@namespace" })
  vim.api.nvim_set_hl(0, "TSType", { link = "@type" })
  vim.api.nvim_set_hl(0, "TSTypeBuiltin", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "TSConstructor", { link = "@constructor" })
  vim.api.nvim_set_hl(0, "TSOperator", { link = "@operator" })
  vim.api.nvim_set_hl(0, "TSPunctDelimiter", { link = "@punctuation.delimiter" })
  vim.api.nvim_set_hl(0, "TSPunctBracket", { link = "@punctuation.bracket" })
  vim.api.nvim_set_hl(0, "TSPunctSpecial", { link = "@punctuation.special" })

  -- Language-specific captures
  -- Rust
  vim.api.nvim_set_hl(0, "@function.macro.rust", { fg = p.color2, bold = true })
  vim.api.nvim_set_hl(0, "@attribute.rust", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@lifetime.rust", { fg = p.color5, italic = true })
  vim.api.nvim_set_hl(0, "@type.builtin.rust", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.rust", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@constant.builtin.rust", { fg = p.color3, bold = true })

  -- Ruby
  vim.api.nvim_set_hl(0, "@string.special.symbol.ruby", { fg = p.color5, italic = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.ruby", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@constant.builtin.ruby", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "@method.call.ruby", { fg = p.color6 })

  -- Go
  vim.api.nvim_set_hl(0, "@function.builtin.go", { fg = p.color6, bold = true })
  vim.api.nvim_set_hl(0, "@type.builtin.go", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.go", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@constant.builtin.go", { fg = p.color3, bold = true })

  -- SQL
  vim.api.nvim_set_hl(0, "@constant.builtin.sql", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "@type.builtin.sql", { fg = p.color4, bold = true })

  -- JSX / TSX
  vim.api.nvim_set_hl(0, "@tag.jsx", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.jsx", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.jsx", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.jsx", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@tag.tsx", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.tsx", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.tsx", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.tsx", { fg = p.fg1 })

  -- C++
  vim.api.nvim_set_hl(0, "@namespace.cpp", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@type.builtin.cpp", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@operator.cpp", { fg = p.color2 })

  -- svelte
  vim.api.nvim_set_hl(0, "@tag.svelte", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.svelte", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.svelte", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.svelte", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@keyword.svelte", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.modifier.svelte", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.conditional.svelte", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.repeat.svelte", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.coroutine.svelte", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@keyword.exception.svelte", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "@keyword.debug.svelte", { fg = p.color6 })
  vim.api.nvim_set_hl(0, "@string.special.url.svelte", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "@string.special.path.svelte", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.svelte", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.svelte", { fg = p.uic1 })

  -- HTML/XML and component frameworks
  vim.api.nvim_set_hl(0, "@tag.html", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.html", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.html", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.html", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@tag.xml", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.xml", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.xml", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.xml", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@tag.vue", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.vue", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.vue", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.vue", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@directive.vue", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@tag.astro", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@tag.attribute.astro", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@tag.delimiter.astro", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket.astro", { fg = p.fg1 })

  -- CSS family
  vim.api.nvim_set_hl(0, "@property.css", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@function.builtin.css", { fg = p.color6, bold = true })
  vim.api.nvim_set_hl(0, "@number.css", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@number.float.css", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@string.special.url.css", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "@property.scss", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@property.less", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@property.sass", { fg = p.color4 })

  -- Data languages
  vim.api.nvim_set_hl(0, "@property.json", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@property.yaml", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@field.yaml", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "@property.toml", { fg = p.color4 })

  -- Java
  vim.api.nvim_set_hl(0, "@type.builtin.java", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@keyword.import.java", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "@annotation.java", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "@constructor.java", { fg = p.color4 })

  -- C
  vim.api.nvim_set_hl(0, "@type.builtin.c", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@macro.c", { fg = p.color2 })

  -- C#
  vim.api.nvim_set_hl(0, "@type.builtin.cs", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@namespace.cs", { fg = p.color5 })
  vim.api.nvim_set_hl(0, "@attribute.cs", { fg = p.color3 })

  -- PHP
  vim.api.nvim_set_hl(0, "@variable.builtin.php", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@function.builtin.php", { fg = p.color6, bold = true })

  -- Kotlin
  vim.api.nvim_set_hl(0, "@type.builtin.kotlin", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@annotation.kotlin", { fg = p.color3 })

  -- Swift
  vim.api.nvim_set_hl(0, "@type.builtin.swift", { fg = p.color4, bold = true })
  vim.api.nvim_set_hl(0, "@attribute.swift", { fg = p.color3 })

  -- Shell / Bash
  vim.api.nvim_set_hl(0, "@variable.builtin.bash", { fg = p.color1, italic = true })
  vim.api.nvim_set_hl(0, "@function.builtin.bash", { fg = p.color6, bold = true })
  vim.api.nvim_set_hl(0, "@keyword.bash", { fg = p.color2 })

  -- LSP Semantic Token compatibility (Neovim 0.9+/0.10)
  local function link(group, target)
    vim.api.nvim_set_hl(0, group, { link = target })
  end
  link("@lsp.type.class", "@type")
  link("@lsp.type.struct", "@type")
  link("@lsp.type.enum", "@type.enum")
  link("@lsp.type.enumMember", "@type.enumMember")
  link("@lsp.type.interface", "@type")
  link("@lsp.type.typeParameter", "@type.parameter")
  link("@lsp.type.parameter", "@variable.parameter")
  link("@lsp.type.property", "@property")
  link("@lsp.type.variable", "@variable")
  link("@lsp.type.function", "@function")
  link("@lsp.type.method", "@method")
  link("@lsp.type.namespace", "@namespace")
  link("@lsp.type.keyword", "@keyword")
  link("@lsp.type.operator", "@operator")
  link("@lsp.type.modifier", "@modifier")
  link("@lsp.type.comment", "@comment")
  link("@lsp.type.string", "@string")
  link("@lsp.type.number", "@number")
  link("@lsp.type.boolean", "@boolean")
end
