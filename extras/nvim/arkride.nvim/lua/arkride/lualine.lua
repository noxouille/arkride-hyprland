-- ============================================================================
-- Arkride - Lualine Theme
-- ============================================================================

local colors = require("arkride.palette").colors

local M = {}

M.theme = {
    normal = {
        a = { fg = colors.bg0, bg = colors.van, gui = "bold" },
        b = { fg = colors.fg0, bg = colors.bg4 },
        c = { fg = colors.fg0, bg = colors.bg3 },
    },
    insert = {
        a = { fg = colors.bg0, bg = colors.elaine, gui = "bold" },
        b = { fg = colors.fg0, bg = colors.bg4 },
        c = { fg = colors.fg0, bg = colors.bg3 },
    },
    visual = {
        a = { fg = colors.bg0, bg = colors.agnes, gui = "bold" },
        b = { fg = colors.fg0, bg = colors.bg4 },
        c = { fg = colors.fg0, bg = colors.bg3 },
    },
    replace = {
        a = { fg = colors.bg0, bg = colors.aaron, gui = "bold" },
        b = { fg = colors.fg0, bg = colors.bg4 },
        c = { fg = colors.fg0, bg = colors.bg3 },
    },
    command = {
        a = { fg = colors.bg0, bg = colors.feri, gui = "bold" },
        b = { fg = colors.fg0, bg = colors.bg4 },
        c = { fg = colors.fg0, bg = colors.bg3 },
    },
    inactive = {
        a = { fg = colors.fg3, bg = colors.bg2 },
        b = { fg = colors.fg3, bg = colors.bg2 },
        c = { fg = colors.fg3, bg = colors.bg2 },
    },
}

return M
