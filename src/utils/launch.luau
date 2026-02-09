--!strict

local LINK = "https://api.luarmor.net/files/v3/loaders/"
local FORMAT = ".lua"

return function(hash: string)
    local content = game:HttpGet(LINK .. hash .. FORMAT)
    print(content)

    local func = loadstring(content)
    print(func)

    if func then
        func()
    end
end