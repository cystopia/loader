--!strict

local Players = game:GetService("Players")

local launch = require("@utils/launch")
local validate = require("@utils/validate")

local local_player = Players.LocalPlayer
local success, result = validate()

if success then
    launch(result)
else
    local_player:Kick(result)
end