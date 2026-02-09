--!strict

local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

return function()
    if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
        return "Mobile"
    end

    if GuiService:IsTenFootInterface() then
        return "Console"
    end

    return "PC"
end