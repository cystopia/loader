--!strict

local HASHES = require("@self/hashes")

local GAME = game.GameId
local PLACE = game.PlaceId

return function()
    local hash = HASHES[GAME] or HASHES[PLACE]
    return hash
end