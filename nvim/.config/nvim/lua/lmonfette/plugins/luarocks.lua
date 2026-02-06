return {
    url = 'https://github.com/vhyrro/luarocks.nvim.git',
    priority = 1000,
    config = true,
    dependencies = {
        { url = 'https://github.com/lunarmodules/luafilesystem.git' },
        { url = 'https://github.com/LuaDist/dkjson.git' }
    }
}
