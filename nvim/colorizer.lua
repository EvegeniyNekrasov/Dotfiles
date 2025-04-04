return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require("colorize").setup({ "*" })
  end
}
