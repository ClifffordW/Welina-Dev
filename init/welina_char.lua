PrefabFiles = {
	"welina",
	--"welina_skins",
}


AddCharacter("welina", "Welina", "female", "The Downcat", "Life meowvs pretty fast...", "Welina has a flair for the dramatic.", "welina", "welina", "Slim", false)
CharacterAbillity("welina", "Placeholder", "Placeholder", "Placeholder")









local general_scripts = require("play_generalscripts")

STRINGS.STAGEACTOR.WELINA1 = {
    "Ahem-",
    "A visitor? Hmm… Indeed, I have slept long enough.",
	"The kingdom of heaven has long since forgotten my name",
	"and I am EAGER to make them remember.",
	"However, the blood of Minos stains your hands, and I must admit…",
	"I'm curious about your skills, Weapon.",
	"And so, before I tear down the cities and CRUSH the armies of heaven…",
	"You shall do as an appetizer.",
	"Come forth, Child of Man… And DIE.",	
}


general_scripts.WILDCARD1 = {
   cast = { "welina" },
   lines = {
      {roles = {"welina"}, duration = 2.0, line = STRINGS.STAGEACTOR.WILDCARD1[1]},
  	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[2]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[3]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[4]},
	 -- {roles = {"welina"}, duration = 4.5, anim = { "emote_pre_sit3", "emote_loop_sit3"}, animtype="loop"},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[5]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[6]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[7]},
	  {roles = {"welina"}, duration = 4.0, line = STRINGS.STAGEACTOR.WILDCARD1[8]},
	  {roles = {"welina"}, duration = 3.0, line = STRINGS.STAGEACTOR.WILDCARD1[9]},

	  --{roles = {"welina"}, duration = 4.0, anim={"emoteXL_pre_dance0","emoteXL_loop_dance0"}, animtype="loop"},
    }
}


--AddCharFont("welina")

