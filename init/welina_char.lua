PrefabFiles = {
	"welina",
	"welina_skins",
}


AddCharacter("welina", "Welina", "female", "The Downcat", "The sound of the bell has been unusually loud today...", "Welina has a flair for the dramatic.", "welina", "welina", "Slim", false)
CharacterAbillity("welina", "Nine Lives", "Edgy, Inside and Outside", "Resentful")
AddCharacterSkin("welina", "ms_welina_gown", "The Restless", "It's sometimes tempting to shut yourself in dreams.", "When my eyes close, I see terrible things.", true, true, false)







local general_scripts = require("play_generalscripts")

STRINGS.STAGEACTOR.WELINA1 = {
    "*Cough*",
    "One two it's in full bloom, three four I'm harvesting it all",
	"It's fine, I already said it's fine, jeez!",
	"A happy second helping, give me that heart-pounding excitement",
	"On the count of three, come on, jump in!",
	"It's an instinctive boogie-woogie, a chaotic extra-large serving",
	"It's fine, I already said it's fine, jeez! ",
	"It's the worst, those guys are like a mystery",
	"On the count of three just blast off!",	
}


general_scripts.WELINA1 = {
   cast = { "welina" },
   lines = {
      {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[1]},
  	  {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[2]},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_happycheer"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_sad"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_angry"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_strikepose"},
	  
	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WELINA1[3]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WELINA1[4]},
	 -- {roles = {"welina"}, duration = 4.5, anim = { "emote_pre_sit3", "emote_loop_sit3"}, animtype="loop"},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WELINA1[5]},
	  {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[6]},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_sad"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_happycheer"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_sad"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_angry"},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WELINA1[7]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WELINA1[8]},
	  {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WELINA1[9]},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_pre_sit2"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_happycheer"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_sad"},
	  {roles = {"welina"}, duration = 0.5,  anim="emote_strikepose"},

	  --{roles = {"welina"}, duration = 4.0, anim={"emoteXL_pre_dance0","emoteXL_loop_dance0"}, animtype="loop"},
    }
}


--AddCharFont("welina")

