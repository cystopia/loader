local __DARKLUA_BUNDLE_MODULES

__DARKLUA_BUNDLE_MODULES = {
    cache = {},
    load = function(m)
        if not __DARKLUA_BUNDLE_MODULES.cache[m] then
            __DARKLUA_BUNDLE_MODULES.cache[m] = {
                c = __DARKLUA_BUNDLE_MODULES[m](),
            }
        end

        return __DARKLUA_BUNDLE_MODULES.cache[m].c
    end,
}

do
    function __DARKLUA_BUNDLE_MODULES.a()
        local LINK = 'https://api.luarmor.net/files/v3/loaders/'
        local FORMAT = '.lua'

        return function(hash: string)
            local content = game:HttpGet(LINK .. hash .. FORMAT)
            local func = loadstring(content)

            if func then
                func()
            end
        end
    end
    function __DARKLUA_BUNDLE_MODULES.b()
        return table.freeze({
            [8144728961] = '',
        })
    end
    function __DARKLUA_BUNDLE_MODULES.c()
        local HASHES = __DARKLUA_BUNDLE_MODULES.load('b')
        local GAME = game.GameId
        local PLACE = game.PlaceId

        return function()
            local hash = HASHES[GAME] or HASHES[PLACE]

            return hash
        end
    end
end

local launch = __DARKLUA_BUNDLE_MODULES.load('a')
local get_hash = __DARKLUA_BUNDLE_MODULES.load('c')
local hash = get_hash()

launch(hash)
