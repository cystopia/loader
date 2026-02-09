--!strict

local launch = require("@utils/launch")
local get_hash = require("@utils/get-hash")

local hash = get_hash()
launch(hash)