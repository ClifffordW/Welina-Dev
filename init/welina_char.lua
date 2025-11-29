PrefabFiles = {
	"welina",
	"welina_skins",
}


AddCharacter("welina", "Welina", "female", "The Downcat", "The sound of the bell has been unusually loud today...", "Welina has a flair for the dramatic.", "welina", "welina", "Slim", false)
CharacterAbillity("welina", "Nine Lives", "Edgy, Inside and Outside", "Resentful")
AddCharacterSkin("welina", "ms_welina_gown", "The Restless", "It's sometimes tempting to shut yourself in dreams.", "When my eyes close, I see terrible things.", true, true, false)
AddCharacterSkin("welina", "ms_welina_doorman", "The Over-Bored", "Short cut for short-tempered cat.", "That's a pretty... metal.. origin story...", true, true, false)
AddCharacterSkin("welina", "ms_welina_homestuck", "The Rebel", "You don't want to cross paths with her.", "This ain't what you want.", true, true, false)
AddCharacterSkin("welina", "ms_welina_xmas", "The Festive", "She doesn't hate you as much.", "Hnghh... J-Just take your gift... or whatever.", true, true, false)

--AddCharFont("welina")



local general_scripts = require("play_generalscripts")

STRINGS.STAGEACTOR.WELINA1 = {
    "*Cough*",
    "I'm so happy 'cause today I found my friends",
	"They're in my head",
	"I'm so ugly, that's okay, 'cause so are you",
	"Broke our mirrors",
	"Sunday morning is everyday, for all I care",
	"And I'm not scared",
	"Light my candles in a daze",
	"'Cause I've found God",	
}


general_scripts.WELINA1 = {
   cast = { "welina" },
   lines = {
      {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[1]},
  	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WELINA1[2]},	  
	  {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[3]},
	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WELINA1[4]},
	 -- {roles = {"welina"}, duration = 4.5, anim = { "emote_pre_sit3", "emote_loop_sit3"}, animtype="loop"},
	  {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[5]},
	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WELINA1[6]},
	  {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[7]},
	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WELINA1[8]},
	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WELINA1[9]},
	  --{roles = {"welina"}, duration = 4.0, anim={"emoteXL_pre_dance0","emoteXL_loop_dance0"}, animtype="loop"},
    }
}


--AddCharFont("welina")

