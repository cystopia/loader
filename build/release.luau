local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a
.a()local b,c='https://api.luarmor.net/files/v3/loaders/','.lua'return function(d)local e=game:HttpGet(b..d..c)local f=
loadstring(e)if f then f()end end end function a.b()return table.freeze{[8144728961]=''}end function a.c()local b,c,d=a.
load'b',game.GameId,game.PlaceId return function()local e=b[c]or b[d]return e end end end local b,c=a.load'a',a.load'c'
local d=c()b(d)