--!strict

local HASHES = require("@self/hashes")

local GAME = game.GameId
local PLACE = game.PlaceId

return function()
    return HASHES[GAME] or HASHES[PLACE]
end