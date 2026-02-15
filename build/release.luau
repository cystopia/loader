local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a
.a()local b,c='https://api.luarmor.net/files/v3/loaders/','.lua'return function(d)local e=game:HttpGet(b..d..c)local f=
loadstring(e)if f then f()end end end function a.b()local b,c=game:GetService'GuiService',game:GetService
'UserInputService'return function()if c.TouchEnabled and not c.KeyboardEnabled then return'Mobile'end if b:
IsTenFootInterface()then return'Console'end return'PC'end end function a.c()return table.freeze{[8144728961]=
'2f66cef4b40ea8b836b54a0aad4dd59b'}end function a.d()local b,c,d=a.load'c',game.GameId,game.PlaceId return function()
return b[c]or b[d]end end function a.e()local b,c=a.load'b',a.load'd'return function()if b()~='PC'then return false,
'Sorry! Your device is currently not supported.'end local d=c()if not d then return false,
'This game is currently not supported.'end return true,d end end end local b,c,d=game:GetService'Players',a.load'a',a.
load'e'local e,f,g=b.LocalPlayer,d()if f then c(g)else e:Kick(g)end