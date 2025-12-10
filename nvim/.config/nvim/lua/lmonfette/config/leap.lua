local leap = require('leap')
local leap_config = {}

local function init()
end

local function set_options()
end

local function set_remaps()
    local clever_s = require('leap.user').with_traversal_keys('s', 'S')

    vim.keymap.set({ 'n', 'x', 'o' }, 's', function ()
        require('leap').leap { opts = clever_s }
    end)

    vim.keymap.set({ 'n', 'x', 'o' }, 'S', function ()
        require('leap').leap { opts = clever_s, backward = true }
    end)
end

function leap_config.setup()
    init()
    set_options()
    set_remaps()
end

return leap_config
