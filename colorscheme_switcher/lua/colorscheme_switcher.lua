local theme_switcher = {}
local colors = require("colors").get(vim.g.colors_name or require("ignis.utils").get_colorscheme())

function theme_switcher.new_scheme()
    vim.defer_fn(function()
        local kitty_file = io.open("/Users/Max/.config/kitty/theme.conf", "w")

        for i = 0, 15 do
            local color = assert(loadstring("return vim.g.terminal_color_" .. tostring(i)))()
            kitty_file:write("color" .. i .. " " .. color .. "\n")
            -- print("color"..i.." "..color)
        end

        kitty_file:write("background " .. vim.g.terminal_color_background .. "\n")
        kitty_file:write("foreground " .. vim.g.terminal_color_foreground .. "\n")
        kitty_file:write("active_tab_foreground " .. colors.white .. "\n")
        kitty_file:write("active_tab_background " .. colors.grey_fg .. "\n")
        kitty_file:write("inactive_tab_foreground " .. colors.white .. "\n")
        kitty_file:write("inactive_tab_background " .. colors.black2 .. "\n")
        kitty_file:write("tab_bar_background" .. colors.darker_black .. "\n")

        kitty_file:close()
        local starship_file = io.open("/Users/Max/.config/starship.toml", "w")
        for _, line in ipairs(require("data.starship")) do
            starship_file:write(line .. "\n")
        end
    end, 10)
    RELOAD("colorscheme_switcher")
    os.execute("osascript ~/reload_kitty.scpt")
    RELOAD("ignis.modules.ui.bufferline")
    RELOAD("ignis.modules.ui.heirline")
    RELOAD("ignis.modules")
    require("ignis.modules.ui.heirline")
    require("ignis.modules.ui.bufferline")
    vim.defer_fn(function()
        os.execute("osascript ~/reload_kitty.scpt")
    end, 100)
end

return theme_switcher
