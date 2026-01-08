-- ============================================================================
-- Arkride - Neovim Colorscheme
-- ============================================================================

local M = {}

M.colors = require("arkride.palette").colors

function M.setup(opts)
    opts = opts or {}

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "arkride"

    local highlights = require("arkride.highlights")
    highlights.setup(M.colors)

    -- Force override plugin highlights that use links
    vim.schedule(function()
        highlights.setup(M.colors)
    end)
end

M.lualine = require("arkride.lualine").theme

return M
