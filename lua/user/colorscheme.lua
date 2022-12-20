local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end


-- use ({ 'projekt0n/github-nvim-theme' })
-- use({
--   'projekt0n/github-nvim-theme',
--   config = function()
--    require('github-theme').setup({
      -- ...
--    })
--  end
-- })

-- use 'navarasu/onedark.nvim'

-- require('github-theme').setup()
-- require('onedark').load()


