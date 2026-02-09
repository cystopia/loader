--!strict

local get_device = require("@self/get-device")
local get_hash = require("@utils/get-hash")

return function()
    if get_device() ~= "PC" then
        return false, "Sorry! Your device is currently not supported."
    end

    local hash = get_hash()

    if not hash then
        return false, "This game is currently not supported."
    end

    return true, hash
end