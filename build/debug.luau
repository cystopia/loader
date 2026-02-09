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
        local GuiService = game:GetService('GuiService')
        local UserInputService = game:GetService('UserInputService')

        return function()
            if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
                return 'Mobile'
            end
            if GuiService:IsTenFootInterface() then
                return 'Console'
            end

            return 'PC'
        end
    end
    function __DARKLUA_BUNDLE_MODULES.c()
        return table.freeze({
            [8144728961] = '',
        })
    end
    function __DARKLUA_BUNDLE_MODULES.d()
        local HASHES = __DARKLUA_BUNDLE_MODULES.load('c')
        local GAME = game.GameId
        local PLACE = game.PlaceId

        return function()
            local hash = HASHES[GAME] or HASHES[PLACE]

            return hash
        end
    end
    function __DARKLUA_BUNDLE_MODULES.e()
        local get_device = __DARKLUA_BUNDLE_MODULES.load('b')
        local get_hash = __DARKLUA_BUNDLE_MODULES.load('d')

        return function()
            if get_device() ~= 'PC' then
                return false, 'Sorry! Your device is currently not supported.'
            end

            local hash = get_hash()

            if not hash then
                return false, 'This game is currently not supported.'
            end

            return true, hash
        end
    end
end

local Players = game:GetService('Players')
local launch = __DARKLUA_BUNDLE_MODULES.load('a')
local validate = __DARKLUA_BUNDLE_MODULES.load('e')
local local_player = Players.LocalPlayer
local success, result = validate()

if success then
    launch(result)
else
    local_player:Kick(result)
end
