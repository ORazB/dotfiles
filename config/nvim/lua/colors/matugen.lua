-- Matugen theme for mini.base16

local base16 = require('mini.base16')
local shared = require('colors._shared')

local diff_palette = {
  add    = { bg = '#bd808c', fg = '#000000' },
  delete = { bg = '#93000a',    fg = '#ffdad6' },
  change = { bg = '#a586af' },
  text   = { bg = '#4f4253' },
}

-- Base16 palette from matugen
local palette = {
  base00 = '#151315', -- background
  base01 = '#151315', -- lighter background
  base02 = '#151315', -- selection
  base03 = '#4b444c', -- comments, line numbers
  base04 = '#cec3cd', -- dark foreground
  base05 = '#e8e1e4', -- foreground
  base06 = '#f3eff1', -- light foreground
  base07 = '#fefefe', -- lightest
  base08 = '#ffb4ab', -- red (variables, errors)
  base09 = '#bda3c0', -- orange
  base0A = '#d3c1d5', -- yellow
  base0B = '#f9b4c1', -- green (strings)
  base0C = '#f8d8ff', -- cyan (operators)
  base0D = '#debbe7', -- blue (functions)
  base0E = '#ffd9df', -- purple (keywords)
  base0F = '#ffcbc5', -- brown
}

base16.setup({
  palette = palette,
  use_cterm = nil,
  plugins = {
    default = true,
    ['echasnovski/mini.nvim'] = true,
  },
})

vim.g.colors_name = 'matugen'

-- Custom highlight colors
local colors = {
  white = '#e8e1e4',
  darker_black = '#221f22',
  black = '#141314',
  black2 = '#151315',
  one_bg = '#151315',
  grey = '#4b444c',
  red = '#ffb4ab',
  pink = '#ffd9df',
  green = '#f9b4c1',
  blue = '#debbe7',
  orange = '#bda3c0',
  cyan = '#fdf2ff',
  teal = '#f8d8ff',
  purple = '#ffc0ca',
  lavender = '#ffffff',
}

local function apply_custom_highlights()
  -- UI highlights
  vim.api.nvim_set_hl(0, 'Normal', { bg = colors.black })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'NvimTreeNormalNC', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'TelescopePrompt', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'TelescopeResults', { bg = colors.darker_black })
  vim.api.nvim_set_hl(0, 'Pmenu', { bg = colors.black2 })
  vim.api.nvim_set_hl(0, 'CmpPmenu', { bg = colors.black2 })
  vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = colors.black2 })
  vim.api.nvim_set_hl(0, 'Visual', { bg = colors.grey })
  vim.api.nvim_set_hl(0, 'VisualNOS', { bg = colors.grey })

  -- Treesitter highlights
  vim.api.nvim_set_hl(0, '@variable', { fg = colors.white })
  vim.api.nvim_set_hl(0, '@module', { fg = colors.white })
  vim.api.nvim_set_hl(0, '@variable.member', { fg = colors.white })
  vim.api.nvim_set_hl(0, '@property', { fg = colors.teal })
  vim.api.nvim_set_hl(0, '@variable.builtin', { fg = colors.red })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = colors.purple })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = colors.orange })
  vim.api.nvim_set_hl(0, '@operator', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = colors.teal })
  vim.api.nvim_set_hl(0, '@function.macro', { fg = colors.pink })
  vim.api.nvim_set_hl(0, '@keyword.storage', { fg = colors.purple })
  vim.api.nvim_set_hl(0, '@tag.delimiter', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, '@function', { fg = colors.blue })
  vim.api.nvim_set_hl(0, '@constructor', { fg = colors.lavender })
  vim.api.nvim_set_hl(0, '@tag.attribute', { fg = colors.orange })

  -- Syntax highlights
  vim.api.nvim_set_hl(0, 'StorageClass', { fg = colors.purple })
  vim.api.nvim_set_hl(0, 'Repeat', { fg = colors.purple })
  vim.api.nvim_set_hl(0, 'Define', { fg = colors.blue })

  shared.apply_diff(diff_palette)

  -- Telescope custom
  vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = colors.one_bg, fg = colors.blue })
end

apply_custom_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = apply_custom_highlights,
})

return {
  palette = palette,
  colors = colors,
}
