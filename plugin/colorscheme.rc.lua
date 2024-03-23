
local status, everforest = pcall(require, "everforest")
if (not status) then return end

everforest.setup({
  ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  ---Default is "medium".
  background = "medium",
  ---How much of the background should be transparent. 2 will have more UI
  ---components be transparent (e.g. status line background)
  transparent_background_level = 1,
  ---Whether italics should be used for keywords and more.
  italics = true,
  ---Disable italic fonts for comments. Comments are in italics by default, set
  ---this to `true` to make them _not_ italic!
  disable_italic_comments = true,
  ---By default, the colour of the sign column background is the same as the as normal text
  ---background, but you can use a grey background by setting this to `"grey"`.
  ---The contrast of line numbers, indent lines, etc. Options are `"high"` or
  ---`"low"` (default).
  ---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
  spell_foreground = false,
  ---Whether to show the EndOfBuffer highlight.
  show_eob = true,
  ---Style used to make floating windows stand out from other windows. `"bright"`
  ---makes the background of these windows lighter than |hl-Normal|, whereas
  ---`"dim"` makes it darker.
  ---
  ---Floating windows include for instance diagnostic pop-ups, scrollable
  ---documentation windows from completion engines, overlay windows from
  ---installers, etc.
  ---
  ---NB: This is only significant for dark backgrounds as the light palettes
  ---have the same colour for both values in the switch.
  float_style = "bright",
})

vim.cmd([[colorscheme everforest]])
-- vim.cmd[[colorscheme solarized-osaka]]