GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end})

local path = "init/"

local inits =
{
	"tuning",

    "assets",
    "char",
    "recipes",
    
    "strings",
    
    "stategraphs",

    "abilities",

}



--Change stuff in it
for k,v in pairs(inits) do modimport(path.."welina_"..v) end