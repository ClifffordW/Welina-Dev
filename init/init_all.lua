
local path = "init/"

local inits =
{
	"tuning",

    "assets",
    "char",
    "recipes",
    
    "strings",
    

    "abilities",

}



--Change stuff in it
for k,v in pairs(inits) do modimport(path.."wildcard_"..v) end