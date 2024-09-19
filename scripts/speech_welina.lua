--Layout generated from PropagateSpeech.bat via speech_tools.lua
return{
	ACTIONFAIL =
	{
        APPRAISE =
        {
            NOTNOW = "He's busy.",
        },
        REPAIR =
        {
            WRONGPIECE = "That doesn't fit.",
        },
        BUILD =
        {
            MOUNTED = "I cyan't reach it from here.",
            HASPET = "One's already too meouch.",
			TICOON = "I've already got one by myeow side.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I won't do it.",
			GENERIC = "There's nothing to shave on myeowself.",
			NOBITS = "It'll notice if i start cutting into its skin",
--fallback to speech_wilson.lua             REFUSE = "only_used_by_woodie",
            SOMEONEELSESBEEFALO = "This one's nyone of my business.",
		},
		STORE =
		{
			GENERIC = "All packed, dyammit.",
			NOTALLOWED = "That's nyot allowed here.",
			INUSE = "If it sounds bad, these people are just gonna have to wait.",
            NOTMASTERCHEF = "I'm like, terrible at this stuff.",
		},
        CONSTRUCT =
        {
            INUSE = "Can you like, nyack off",
            NOTALLOWED = "I ain't building anyathing with this here.",
            EMPTY = "I need meowterials to, like, build with.",
            MISMATCH = "This is for something else entirely.",
            NOTREADY = "There's bigger issues to deal with right meow.",
        },
		RUMMAGE =
		{
			GENERIC = "Ermm, what the nya?",
			INUSE = "Myove aside, cupcake.",
            NOTMASTERCHEF = "I'm like, terrible at this sorta stuff.",
		},
		UNLOCK =
        {
--fallback to speech_wilson.lua         	WRONGKEY = "I can't do that.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Huh, are you kitten meow right nyeow?",
        	KLAUS = "Has my time finally come?",
			QUAGMIRE_WRONGKEY = "There's gotta be another key around.",
        },
		ACTIVATE =
		{
			LOCKED_GATE = "I need to find that dyamn key.",
            HOSTBUSY = "Oh... I guess I'm not important enough...",
            CARNIVAL_HOST_HERE = "A HUGE bird? Like, how huge?",
            NOCARNIVAL = "Nyeoww, I was gonna eat them.",
			EMPTY_CATCOONDEN = "Nyothing else? Lame.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "We'd need more meows for this.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "This place's kind of unfair for this.",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "Can't give meow even a moment of happiness...",
            MANNEQUIN_EQUIPSWAPFAILED = "That's kinda... kinda stupid.",
            PILLOWFIGHT_NO_HANDPILLOW = "Pillows won't kill, that's lame!",
		},
		OPEN_CRAFTING =
		{
            PROFESSIONALCHEF = "I'm like, terrible at this stuff.",
			SHADOWMAGIC = "Dark meowgic.",
		},
        COOK =
        {
            GENERIC = "Is it going to blow up in my face.",
            INUSE = "As long as y-you make something edible...",
            TOOFAR = "I'll have to get closer.",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "There's can't be racism without racers.",
        },

		DISMANTLE =
		{
			COOKING = "W-what are you cooking, TELL MEOW.",
			INUSE = "Do you even know how to use this.",
			NOTEMPTY = "I'll have to, like, get rid of the stuff in it first.",
        },
        FISH_OCEAN =
		{
			TOODEEP = "Too deep.",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "Nyah, won't do.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "Should i even write these i'm not sure if i'll make welina read books lol.",
            NOBIRDS = "ha.",
            NOWATERNEARBY = "ha.",
            TOOMANYBIRDS = "ha.",
            WAYTOOMANYBIRDS = "ha.",
            NOFIRES =       "ha.",
            NOSILVICULTURE = "ha.",
            NOHORTICULTURE = "ha.",
            NOTENTACLEGROUND = "ha",
            NOSLEEPTARGETS = "ha",
            TOOMANYBEES = "ha",
            NOMOONINCAVES = "ha",
            ALREADYFULLMOON = "no i shouldn't.",
        },

        GIVE =
        {
            GENERIC = "Yeah how about nyot.",
            DEAD = "I don't think the dead, like, need this.",
            SLEEPING = "I should let it sleep, I'm not important enough.",
            BUSY = "I guess I'm the least of its worries right meow.",
            ABIGAILHEART = "Life's unfair like that.",
            GHOSTHEART = "But it wants to kill meow.",
            NOTGEM = "Not the right thing, I guess.",
            WRONGGEM = "I'd rather keep the gems for, like, myeowself.", 
            NOTSTAFF = "That's nyot the right thing.",
            MUSHROOMFARM_NEEDSSHROOM = "It's a meowshroom planter. It's for MEOWshrooms",
            MUSHROOMFARM_NEEDSLOG = "Needs a living long to live log- wait what.",
            MUSHROOMFARM_NOMOONALLOWED = "What's wrong, just stick in there dyamnit.",
            SLOTFULL = "Ugh, just jam yourself in there, dyamn.",
            FOODFULL = "We've already placed something on the altar.",
            NOTDISH = "Not even I would eat this.",
            DUPLICATE = "I do nyot need two of the same thing.",
            NOTSCULPTABLE = "It's not the right thing, it just wasn't meant to be the right thing.",
--fallback to speech_wilson.lua             NOTATRIUMKEY = "It's shaped like something it's not to be shaped like.",
            CANTSHADOWREVIVE = "It's probably for the best.",
            WRONGSHADOWFORM = "It's okay, sometimes we're just destined to be failures.",
            NOMOON = "It's like, not going to do anyathing in here..",
			PIGKINGGAME_MESSY = "It's way too mewssy.",
			PIGKINGGAME_DANGER = "There's like, meowre important things, like, yeah...",
			PIGKINGGAME_TOOLATE = "Too late, meowch...",
			CARNIVALGAME_INVALID_ITEM = "What do you want from meow dyammit.",
			CARNIVALGAME_ALREADY_PLAYING = "Gotta wait till it's, like, over.",
            SPIDERNOHAT = "Can't keep it in my pocket like that.",
            TERRARIUM_REFUSE = "It nyeeds somethin' REALLY specific.",
            TERRARIUM_COOLDOWN = "That weird tree in it hasn't grown yet.",
            NOTAMONKEY = "But I'm not a myeownkey.",
            QUEENBUSY = "Hey, don't ignore meow, cupcake.",
        },
        GIVETOPLAYER =
        {
            FULL = "Carrying a lot on your shoulder too?",
            DEAD = "They're off this world already.",
            SLEEPING = "Hey, wake up, wake up, wake up, wake up wake up wake up.",
            BUSY = "Oh, yeah, just ignore meow, cupcake.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Carrying a lot on your shoulder too?",
            DEAD = "They're off this world already.",
            SLEEPING = "Hey, wake up, wake up, wake up, wake up wake up wake up.",
            BUSY = "Oh, yeah, just ignore meow, cupcake.",
        },
        WRITE =
        {
            GENERIC = "I need to be able to concentrate to do this.",
            INUSE = "Let meow do it, I'll make it worse.",
        },
        DRAW =
        {
            NOIMAGE = "Drawing from meowmory is like, really hard.",
        },
        CHANGEIN =
        {
            GENERIC = "Can't, like, get anya better than this.",
            BURNING = "Oh well.",
            INUSE = "It's already being used and abused.",
            NOTENOUGHHAIR = "I'll need something I can work with.",
            NOOCCUPANT = "There's NO NYAN.",
        },
        ATTUNE =
        {
            NOHEALTH = "Oh... I'm dying, I guess.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "A bit dangerous right meow.",
            INUSE = "It's already seeing some action alright.",
			SLEEPING = "Ugh, why do you always sleep when I NEED you.",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "A bit dangerous right meow.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "Can't learn what I already know.",
            CANTLEARN = "All of this is way beyond meow.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "Makes no sense, meowby it's for another place.",

			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "No way this is telling the truth.",--Likely trying to read messagebottle treasure map in caves

            STASH_MAP_NOT_FOUND = "Buh- what.",-- Likely trying to read stash map  in world without stash                  
        },
        WRAPBUNDLE =
        {
            EMPTY = "Should I wrap myeowself in it.",
        },
        PICKUP =
        {
			RESTRICTION = "I have like, no use for it, really.",
			INUSE = "It's like, in use, you know.",
--fallback to speech_wilson.lua             NOTMINE_SPIDER = "only_used_by_webber",
            NOTMINE_YOTC =
            {
                "But what about meow! AM I NOT GOOD ENOUGH??",
                "It's fine, I get it, I wouldn't hang around trash like meow either.",
            },
--fallback to speech_wilson.lua 			NO_HEAVY_LIFTING = "only_used_by_wanda",
            FULL_OF_CURSES = "I won't fall for it, watch.",
        },
        SLAUGHTER =
        {
            TOOFAR = "Come back, let meow slaughter you!",
        },
        REPLATE =
        {
            MISMATCH = "Hello?? It's not the right food.",
            SAMEDISH = "This is dished up already as is.",
        },
        SAIL =
        {
        	REPAIR = "Eh, good enough.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Nyack-!",
            BAD_TIMING1 = "Dyammit, focus Welinya...",
            BAD_TIMING2 = "Dyamn I'm terrible at this.",
        },
        LOWER_SAIL_FAIL =
        {
            "I messed ny-up",
            "If only I could stop disappointing myeowself.",
            "Are you kitten meow.",
        },
        BATHBOMB =
        {
            GLASSED = "It's already glassed to hell and back.",
            ALREADY_BOMBED = "One already does the trick i think.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "I, like, know this already.",
		},
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "I might as well eat you.",
            OVERSIZEDVEGGIES_TOO_SMALL = "You're almost as worthless as meow.",
		},
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
		TELLSTORY =
		{
			GENERIC = "only_used_by_walter",
--fallback to speech_wilson.lua 			NOT_NIGHT = "only_used_by_walter",
--fallback to speech_wilson.lua 			NO_FIRE = "only_used_by_walter",
		},
        SING_FAIL =
        {
--fallback to speech_wilson.lua             SAMESONG = "only_used_by_wathgrithr",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "I already know all this.",
            FERTILIZER = "My brain can only take in so much.",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Those plants don't like this kinda water.",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Dyamn, it's out.",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Dyamn, it's out.",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "Nyah, not gonna work.",
            BEEF_BELL_ALREADY_USED = "It's already got, like, an owner.",
            BEEF_BELL_HAS_BEEF_ALREADY = "One's already too myuch for meow.",
        },
        HITCHUP =
        {
            NEEDBEEF = "I'll be needing the boof.",
            NEEDBEEF_CLOSER = "Get your ass here, boof.",
            BEEF_HITCHED = "I hope it gets told it's worthless.",
            INMOOD = "I don't think it'll listen to meow, but who will really...",
        },
        MARK =
        {
            ALREADY_MARKED = "I can't undo my actions.",
            NOT_PARTICIPANT = "I'll have to wait until time takes its toll.",
        },
        YOTB_STARTCONTEST =
        {
            DOESNTWORK = "Hello? Judge? Hello?",
            ALREADYACTIVE = "There's another place holding a contest around.",
        },
        YOTB_UNLOCKSKIN =
        {
            ALREADYKNOWN = "I've seen this one around already.",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "I can't have too much fun in this life.",
        },
        HERD_FOLLOWERS =
        {
            WEBBERONLY = "I'm no spider for spiders to listen to meow.",
        },
        BEDAZZLE =
        {
--fallback to speech_wilson.lua             BURNING = "only_used_by_webber",
--fallback to speech_wilson.lua             BURNT = "only_used_by_webber",
--fallback to speech_wilson.lua             FROZEN = "only_used_by_webber",
--fallback to speech_wilson.lua             ALREADY_BEDAZZLED = "only_used_by_webber",
        },
        UPGRADE =
        {
--fallback to speech_wilson.lua             BEDAZZLED = "only_used_by_webber",
        },
		CAST_POCKETWATCH =
		{
--fallback to speech_wilson.lua 			GENERIC = "only_used_by_wanda",
--fallback to speech_wilson.lua 			REVIVE_FAILED = "only_used_by_wanda",
--fallback to speech_wilson.lua 			WARP_NO_POINTS_LEFT = "only_used_by_wanda",
--fallback to speech_wilson.lua 			SHARD_UNAVAILABLE = "only_used_by_wanda",
		},
        DISMANTLE_POCKETWATCH =
        {
--fallback to speech_wilson.lua             ONCOOLDOWN = "only_used_by_wanda",
        },

        ENTER_GYM =
        {
--fallback to speech_wilson.lua             NOWEIGHT = "only_used_by_wolfang",
--fallback to speech_wilson.lua             UNBALANCED = "only_used_by_wolfang",
--fallback to speech_wilson.lua             ONFIRE = "only_used_by_wolfang",
--fallback to speech_wilson.lua             SMOULDER = "only_used_by_wolfang",
--fallback to speech_wilson.lua             HUNGRY = "only_used_by_wolfang",
--fallback to speech_wilson.lua             FULL = "only_used_by_wolfang",
        },

        APPLYMODULE =
        {
            COOLDOWN = "only_used_by_wx78",
            NOTENOUGHSLOTS = "only_used_by_wx78",
        },
        REMOVEMODULES =
        {
            NO_MODULES = "only_used_by_wx78",
        },
        CHARGE_FROM =
        {
            NOT_ENOUGH_CHARGE = "only_used_by_wx78",
            CHARGE_FULL = "only_used_by_wx78",
        },

        HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "This isn't something I would, like, do.",
        },

		CAST_SPELLBOOK =
		{
			NO_TOPHAT = "It needs a hat, and not just anya hat.",
		},

		CASTAOE =
		{
			NO_MAX_SANITY = "My mind's going blank!",
		},
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "Kyah, when is it ever enough.",
		NO_TECH = "I'm too stupid to myake this",
		NO_STATION = "I can't just make this in the middle of nyowhere.",
	},

	ACTIONFAIL_GENERIC = "It didn't wanna work.",
	ANNOUNCE_BOAT_LEAK = "Beware the water.",
	ANNOUNCE_BOAT_SINK = "ACK HELP, HELPHELPHLEPHELP AAAAAAAA-",
	ANNOUNCE_DIG_DISEASE_WARNING = "That takes care of that.", --removed
	ANNOUNCE_PICK_DISEASE_WARNING = "How putrid!", --removed
	ANNOUNCE_ADVENTUREFAIL = "I'm alive again? Lame.",
    ANNOUNCE_MOUNT_LOWHEALTH = "It's broken, beat & scarred.",

    --waxwell and wickerbottom specific strings
--fallback to speech_wilson.lua     ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
--fallback to speech_wilson.lua     ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
--fallback to speech_wilson.lua     ANNOUNCE_NOWATERNEARBY = "only_used_by_waxwell_and_wicker",

	--waxwell specific
	ANNOUNCE_SHADOWLEVEL_ITEM = "he",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T1 = "he",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T2 = "he",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T3 = "ha",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T4 = "a",

    --wolfgang specific
--fallback to speech_wilson.lua     ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
--fallback to speech_wilson.lua     ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
--fallback to speech_wilson.lua     ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
--fallback to speech_wilson.lua     ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_EXITGYM = {
--fallback to speech_wilson.lua         MIGHTY = "only_used_by_wolfang",
--fallback to speech_wilson.lua         NORMAL = "only_used_by_wolfang",
--fallback to speech_wilson.lua         WIMPY = "only_used_by_wolfang",
    },

	ANNOUNCE_BEES = "I'll kill you all if I have to.",
	ANNOUNCE_BOOMERANG = "The consequences of myeow actions have caught up.",
	ANNOUNCE_CHARLIE = "What's that, has my time finally come?",
	ANNOUNCE_CHARLIE_ATTACK = "NyaAOUCH-",
--fallback to speech_wilson.lua 	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "T-This cc-cold is... killing m-me-meow...",
	ANNOUNCE_HOT = "This heat is driving meow insane!",
	ANNOUNCE_CRAFTING_FAIL = "Kah- I messed something up.",
	ANNOUNCE_DEERCLOPS = "Someone, or something, is not happy.",
	ANNOUNCE_CAVEIN = "There's something nyaup there!",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"Clean up before she comes.",
		"What the hell.",
		"There's somethin' under meow feet!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Here's your cupcake, uhh... cupcake",
        "At least you seem happy nyow.",
        "Alright we're all friends now.",
	},
	ANNOUNCE_SACREDCHEST_YES = "I'm worthy?! For real?",
	ANNOUNCE_SACREDCHEST_NO = "Oh.. Of course...",
    ANNOUNCE_DUSK = "The darkness is enroaching.",

    --wx-78 specific
--fallback to speech_wilson.lua     ANNOUNCE_CHARGE = "only_used_by_wx78",
--fallback to speech_wilson.lua 	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Mlem",
		PAINFUL = "I've had worse... but meowch. ",
		SPOILED = "I like it fresh but, whatever...",
		STALE = "I don't deserve to be picky.",
		INVALID = "Egh, gross...",
        YUCKY = "That's not even food anyamore.",

        --Warly specific ANNOUNCE_EAT strings
--fallback to speech_wilson.lua 		COOKED = "only_used_by_warly",
--fallback to speech_wilson.lua 		DRIED = "only_used_by_warly",
--fallback to speech_wilson.lua         PREPARED = "only_used_by_warly",
--fallback to speech_wilson.lua         RAW = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_1 = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_2 = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_3 = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_4 = "only_used_by_warly",
--fallback to speech_wilson.lua         SAME_OLD_5 = "only_used_by_warly",
--fallback to speech_wilson.lua 		TASTY = "only_used_by_warly",
    },

	ANNOUNCE_FOODMEMORY = "only_used_by_warly",

    ANNOUNCE_ENCUMBERED =
    {
        "Why... must... I suffer...",
        "Shove it... shove it.... SHOVE IT...",
        "I... deserve... this.",
        "I'll break... my bones...",
        "\"Are you... fine...?\" Do i look... FINE!?",
        "I swear... I just...",
        "...Need... a break...",
        "...Torture...",
        "Aghh.... dyamn... it...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"Should I stay or should I go.",
		"That probably means things are, like, real bad.",
		"This place is going to hell.",
	},
    ANNOUNCE_RUINS_RESET = "Great, all my time and effort trashing this place was undone.",
    ANNOUNCE_SNARED = "In chains, entombed.",
    ANNOUNCE_SNARED_IVY = "What's wrong with this dyamn plant...",
    ANNOUNCE_REPELLED = "There's no way I'll break through.",
	ANNOUNCE_ENTER_DARK = "I can't see a thing dyammit.",
	ANNOUNCE_ENTER_LIGHT = "Phew-, light.",
	ANNOUNCE_FREEDOM = "No rest for the wicked.",
	ANNOUNCE_HIGHRESEARCH = "Too much knowledge for meow to handle.",
	ANNOUNCE_HOUNDS = "Nyaouu, they want to eat meow again.",
	ANNOUNCE_WORMS = "That's a lethal companya if I've ever heard one.",
	ANNOUNCE_HUNGRY = "Help meow I'm hungry.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Smells like prey.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Gyaah it escaped.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Too hard to track with all this mud.",
    ANNOUNCE_HUNT_START_FORK = "Someone might've got to my food first.",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "Time for some fine dining.",
    ANNOUNCE_HUNT_WRONG_FORK = "Outsmarted by something like... that...",
    ANNOUNCE_HUNT_AVOID_FORK = "It's better to take the safer route, I think.",
	ANNOUNCE_INV_FULL = "That's way too much load!",
	ANNOUNCE_KNOCKEDOUT = "Uhhmmm-m-meow??",
	ANNOUNCE_LOWRESEARCH = "Boring!",
	ANNOUNCE_MOSQUITOS = "Annoying!.",
    ANNOUNCE_NOWARDROBEONFIRE = "Ah- A bit late for that...",
    ANNOUNCE_NODANGERGIFT = "There's myeowre important stuff right meow.",
    ANNOUNCE_NOMOUNTEDGIFT = "No way I can open it on this thing.",
	ANNOUNCE_NODANGERSLEEP = "How am I going to sleep when the bell is getting louder?",
	ANNOUNCE_NODAYSLEEP = "I could go for a nap right meow, just not in that.",
	ANNOUNCE_NODAYSLEEP_CAVE = "Don't feel like it.",
	ANNOUNCE_NOHUNGERSLEEP = "I'm going to starve to death if i try to sleep now.",
	ANNOUNCE_NOSLEEPONFIRE = "Burnt alive...? Tempting but i'll go with no.",
    ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "Hey, lights off lights off!",
	ANNOUNCE_NODANGERSIESTA = "There's danger on my tail.",
	ANNOUNCE_NONIGHTSIESTA = "This place isn't very good for sleeping.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Kinda too creeped out here for a nap.",
	ANNOUNCE_NOHUNGERSIESTA = "I'm hungry, too hungry.",
	ANNOUNCE_NO_TRAP = "That traps not set yet.",
	ANNOUNCE_PECKED = "Ack- Patience, sucker.",
	ANNOUNCE_QUAKE = "I don't like the sound of that one damn bit.",
	ANNOUNCE_RESEARCH = "Feel like a nerd, honestly.",
	ANNOUNCE_SHELTER = "This tree'll help meow a bit.",
	ANNOUNCE_THORNS = "Pain.",
	ANNOUNCE_BURNT = "Agony.",
	ANNOUNCE_TORCH_OUT = "Nyaouu my burning stick is out.",
	ANNOUNCE_THURIBLE_OUT = "It's out of shadow juice.",
	ANNOUNCE_FAN_OUT = "Dyamn, I broke it.",
    ANNOUNCE_COMPASS_OUT = "The compass thing broke down.",
	ANNOUNCE_TRAP_WENT_OFF = "GYAh-ah~",
	ANNOUNCE_UNIMPLEMENTED = "This one's not done yet.",
	ANNOUNCE_WORMHOLE = "Bleh, I've seen things I shouldn't have seen",
	ANNOUNCE_TOWNPORTALTELEPORT = "It's about time.",
	ANNOUNCE_CANFIX = "\nIt looks lonely, I can fix that.",
	ANNOUNCE_ACCOMPLISHMENT = "Yay whatever.",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Who cares.",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Needs more poop or something.",
	ANNOUNCE_TOOL_SLIP = "Myack-.",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Nyah-hah, can't hit meow now.",
	ANNOUNCE_TOADESCAPING = "Dumb frog, death isn't an \"if\", it's a \"when\".",
	ANNOUNCE_TOADESCAPED = "Death will come for you, just you wait.",


	ANNOUNCE_DAMP = "All this water is pissing meow off.",
	ANNOUNCE_WET = "I'm wetter than I have anya business being.",
	ANNOUNCE_WETTER = "I feel so meowserable.",
	ANNOUNCE_SOAKED = "I might just kill myeowself....",

	ANNOUNCE_WASHED_ASHORE = "Cough-blegh... The waves suck you in then you drown...",

    ANNOUNCE_DESPAWN = "Do I finally get to die.",
	ANNOUNCE_BECOMEGHOST = "oOooooOO!!",
	ANNOUNCE_GHOSTDRAIN = "The voices won't let up!",
	ANNOUNCE_PETRIFED_TREES = "Someone scared these trees stiff.",
	ANNOUNCE_KLAUS_ENRAGE = "Oh- I may have gotten on its REAL bad side.",
	ANNOUNCE_KLAUS_UNCHAINED = "Hey, having extra lives is cheating... wait I mean- ugh whatever.",
	ANNOUNCE_KLAUS_CALLFORHELP = "Trying to tip the odds in your favor, cupcake?",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "It's calling to meow...",
		GLASS_LOW = "The voices....",
		GLASS_REVEAL = "Sup' sucker.",
		IDOL_MED = "It's calling to meow...",
		IDOL_LOW = "The voices....",
		IDOL_REVEAL = "Sup' sucker.",
		SEED_MED = "It's calling to meow...",
		SEED_LOW = "The voices....",
		SEED_REVEAL = "Sup' sucker.",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "The hell...?",
	ANNOUNCE_BRAVERY_POTION = "I wasn't scared anyaway.",
	ANNOUNCE_MOONPOTION_FAILED = "Doesn't work on meow, ugh whatever.",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "I'd rather be alone... really...",
	ANNOUNCE_WINTERS_FEAST_BUFF = "This really hits the spot.",
	ANNOUNCE_IS_FEASTING = "Oh nice, fancy food.",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "I'm back to feeling dreadful.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Get UP...",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Thank meow, nyow...",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Ugh, alive again.",

    ANNOUNCE_FLARE_SEEN = "Am I supposed to run up to it or what.",
    ANNOUNCE_MEGA_FLARE_SEEN = "That flare's gonna wake up the baddies.",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Oh, oh this ain't good.",

    --willow specific
--fallback to speech_wilson.lua 	ANNOUNCE_LIGHTFIRE =
--fallback to speech_wilson.lua 	{
--fallback to speech_wilson.lua 		"only_used_by_willow",
--fallback to speech_wilson.lua     },

    --winona specific
--fallback to speech_wilson.lua     ANNOUNCE_HUNGRY_SLOWBUILD =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua 	    "only_used_by_winona",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_HUNGRY_FASTBUILD =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua 	    "only_used_by_winona",
--fallback to speech_wilson.lua     },

    --wormwood specific
--fallback to speech_wilson.lua     ANNOUNCE_KILLEDPLANT =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wormwood",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_GROWPLANT =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wormwood",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_BLOOMING =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wormwood",
--fallback to speech_wilson.lua     },

    --wortox specfic
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_EMPTY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_FEW =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_MANY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_OVERLOAD =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },

    --walter specfic
--fallback to speech_wilson.lua 	ANNOUNCE_SLINGHSOT_OUT_OF_AMMO =
--fallback to speech_wilson.lua 	{
--fallback to speech_wilson.lua 		"only_used_by_walter",
--fallback to speech_wilson.lua 		"only_used_by_walter",
--fallback to speech_wilson.lua 	},
--fallback to speech_wilson.lua 	ANNOUNCE_STORYTELLING_ABORT_FIREWENTOUT =
--fallback to speech_wilson.lua 	{
--fallback to speech_wilson.lua         "only_used_by_walter",
--fallback to speech_wilson.lua 	},
--fallback to speech_wilson.lua 	ANNOUNCE_STORYTELLING_ABORT_NOT_NIGHT =
--fallback to speech_wilson.lua 	{
--fallback to speech_wilson.lua         "only_used_by_walter",
--fallback to speech_wilson.lua 	},

    -- wx specific
    ANNOUNCE_WX_SCANNER_NEW_FOUND = "only_used_by_wx78",
--fallback to speech_wilson.lua     ANNOUNCE_WX_SCANNER_FOUND_NO_DATA = "only_used_by_wx78",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "This combination of food was ill-advised.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "Curses! Too slow.",
    QUAGMIRE_ANNOUNCE_LOSE = "This may be the end.",
    QUAGMIRE_ANNOUNCE_WIN = "The Gateway is ready!",

--fallback to speech_wilson.lua     ANNOUNCE_ROYALTY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "Your myeowjesty.",
--fallback to speech_wilson.lua         "Your highness.",
--fallback to speech_wilson.lua         "Myeow liege!",
--fallback to speech_wilson.lua     },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "I feel stupid, and contagious.",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "I feel kinda stronger?",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "I feel like i could go out in public, okay maybe not.",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Myeow focus has gotten better!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "I won't get soggy anyamore? Nice.",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "I can't close myeow eyes, the hell.",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Phew, it's back to normal.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Oh, i feel like crap again, all's right.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "I almost felt like going out, almost.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "I can't focus like a moment ago anyamore!",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Nooo, my water resistance!",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "I'm drowsy as usual nyow...",

	ANNOUNCE_OCEANFISHING_LINESNAP = "I'm worse at what I do best.",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "It's too damn loose.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "I will find you, and i will kill you.",
	ANNOUNCE_OCEANFISHING_BADCAST = "I'm just testing the waters.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE =
	{
		"I hate waiting ughhhhh.",
		"Boooringggggggg.",
		"Maybe i should just jump in there and c-... ah forget it.",
		"Time, time is my greatest enemy.",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nEr... I'll eat it on the spot!",

	ANNOUNCE_WINCH_CLAW_MISS = "Rigged, rigged, it's rigged!",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "There's nothing here!",

    --Wurt announce strings
--fallback to speech_wilson.lua     ANNOUNCE_KINGCREATED = "only_used_by_wurt",
--fallback to speech_wilson.lua     ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
--fallback to speech_wilson.lua     ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
--fallback to speech_wilson.lua     ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
--fallback to speech_wilson.lua     ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
--fallback to speech_wilson.lua         BOOK_SLEEP = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_BIRDS = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_TENTACLES =  "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_BRIMSTONE = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_GARDENING = "only_used_by_wurt",
--fallback to speech_wilson.lua 		BOOK_SILVICULTURE = "only_used_by_wurt",
--fallback to speech_wilson.lua 		BOOK_HORTICULTURE = "only_used_by_wurt",

--fallback to speech_wilson.lua         BOOK_FISH = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_FIRE = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_WEB = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_TEMPERATURE = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_LIGHT = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_RAIN = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_MOON = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_BEES = "only_used_by_wurt",

--fallback to speech_wilson.lua         BOOK_HORTICULTURE_UPGRADED = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_RESEARCH_STATION = "only_used_by_wurt",
--fallback to speech_wilson.lua         BOOK_LIGHT_UPGRADED = "only_used_by_wurt",
    },
    ANNOUNCE_WEAK_RAT = "This rat's weak, i might as well eat it.",

    ANNOUNCE_CARRAT_START_RACE = "GOOO NYAA-!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "That's the wrong way blockhead!",
        "Go the other way dyamn it.",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "GET UP AND KILL THEM ALL.",
    ANNOUNCE_CARRAT_ERROR_WALKING = "Go go go goooo.",
    ANNOUNCE_CARRAT_ERROR_STUNNED = "What is it, cat got your tongue?",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_GHOST_TOY_NEAR = {
--fallback to speech_wilson.lua         "only_used_by_wendy",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua 	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
--fallback to speech_wilson.lua     ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
--fallback to speech_wilson.lua 	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON =
	{
--fallback to speech_wilson.lua 		LEVEL1 = "only_used_by_wendy",
--fallback to speech_wilson.lua 		LEVEL2 = "only_used_by_wendy",
--fallback to speech_wilson.lua 		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP =
	{
--fallback to speech_wilson.lua 		LEVEL2 = "only_used_by_wendy",
--fallback to speech_wilson.lua 		LEVEL3 = "only_used_by_wendy",
	},

--fallback to speech_wilson.lua     ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
--fallback to speech_wilson.lua     ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
--fallback to speech_wilson.lua     ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",

--fallback to speech_wilson.lua     ANNOUNCE_WANDA_YOUNGTONORMAL = "only_used_by_wanda",
--fallback to speech_wilson.lua     ANNOUNCE_WANDA_NORMALTOOLD = "only_used_by_wanda",
--fallback to speech_wilson.lua     ANNOUNCE_WANDA_OLDTONORMAL = "only_used_by_wanda",
--fallback to speech_wilson.lua     ANNOUNCE_WANDA_NORMALTOYOUNG = "only_used_by_wanda",

	ANNOUNCE_POCKETWATCH_PORTAL = "I think myeow future self just told meow to kill myeowself.",

--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "This world has so manya useless secrets ugh.",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "This is old myews.",
    ANNOUNCE_ARCHIVE_NO_POWER = "It needs powering up.",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "I feel almyost dirty looking so deep into this.",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "Hope it grows into something good.",

    ANNOUNCE_FERTILIZER_RESEARCHED = "Oh hell nyo, I know what poop it likes eating now.",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"I feel like I'll explode.",
		"I'm burning up, jeez!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "Phew... I feel better meow.",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "Can you hurry up, cupcake?",
        "Hm... how would she do it... Uh, grow big and... I'll kiss you, darling?",
		"Uhh, grow... big, or something.",
        "Hurry up, what's taking to long!",
        "I wish I could live like you... buried in the ground.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "We're starting now??",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "What do you want from meow, cupcake.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND =
	{
		"Hi there.",
		"Could you sign myeow pawtition.",
		"Gotcha.",
		"I'm uh... n-nya?",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "More of them around.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "Guh, I won??",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "Dyamn, {name} claimed the last victim.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "Take your time, Welinya...",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "Dyamn, I lost...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "There's no way they'd run so far out.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "This place should be better.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "What are YOU doing here, cupcake",

	ANNOUNCE_TICOON_START_TRACKING	= "Give meow a paw.",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "No one else around?",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "You shouldn't have, really.",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "What, can't you see I'm busy",
	ANNOUNCE_TICOON_NEAR_KITCOON = "There's none of them around.",
	ANNOUNCE_TICOON_LOST_KITCOON = "They've claimed another",
	ANNOUNCE_TICOON_ABANDONED = "They hate meow...? As usual.",
	ANNOUNCE_TICOON_DEAD = "Oh, happens.",

    -- YOTB
    ANNOUNCE_CALL_BEEF = "This is my assistant, say hello.",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "I'd rather be away from all the fuss.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "Haven't seen this one around.",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "What are you staring at, the hell?!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "Welcome back.",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Well I hope we never do meet again.",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "This curse is such a pain!",
    ANNOUNCE_MONKEY_CURSE_1 = "Ohh I don't feel as catty anyamore.",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "I'm a cat, not a myeownkey!",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "Forget about that, cupcake.",

    ANNOUNCE_PIRATES_ARRIVE = "I was told piracy is bad.",

    ANNOUNCE_BOOK_MOON_DAYTIME = "I guess i'll have to wait and see if it works.",

    ANNOUNCE_OFF_SCRIPT = "Something's not right here.",

    ANNOUNCE_COZY_SLEEP = "I feel well rested, weird.",

	--
	ANNOUNCE_TOOL_TOOWEAK = "This dyamn tool is too weak for this.",

    ANNOUNCE_LUNAR_RIFT_MAX = "Something lunary is in the air...",
    ANNOUNCE_SHADOW_RIFT_MAX = "I hear something i don't like in the distance...",

    ANNOUNCE_SCRAPBOOK_FULL = "I already know all i need to know.",

    ANNOUNCE_CHAIR_ON_FIRE = "Ohh, I'll burn to death!",

    ANNOUNCE_COACH = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },
    ANNOUNCE_WOLFGANG_WIMPY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_MIGHTY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_BEGIN_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_END_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_NOTEAM = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },

	BATTLECRY =
	{
		GENERIC = "Feel my pain.",
		PIG = "I'm sorry.",
		PREY = "Your pain will end soon, just endure it.",
		SPIDER = "Move on to a better life.",
		SPIDER_WARRIOR = "Get your fight on.",
		DEER = "Die, die my darling.",
	},
	COMBAT_QUIT =
	{
		GENERIC = "If I don't kill it, time will.",
		PIG = "Hmpmh, why would you cling to this life like that.",
		PREY = "Just let meow finish the job.",
		SPIDER = "Am I getting out of shape...",
		SPIDER_WARRIOR = "You only get one shot at this life.",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "I really wish I weren't here right meow.",
        MULTIPLAYER_PORTAL_MOONROCK = "It got encrusted by this moony stuff.",
        MOONROCKIDOL = "Can't have anyathing for free in this world.",
        CONSTRUCTION_PLANS = "I'm supposed to assemble this myeowself?",

        ANTLION =
        {
            GENERIC = "O-Oh, it's the big bad.",
            VERYHAPPY = "It seems happy.",
            UNHAPPY = "Did I piss it off? It look pissed!",
        },
        ANTLIONTRINKET = "This is for making sand castles and stuff.",
        SANDSPIKE = "Myeouch, sharp.",
        SANDBLOCK = "This one looks kinda familiar.",
        GLASSSPIKE = "Sharp, dangerous.",
        GLASSBLOCK = "Crystal castles?",
        ABIGAIL_FLOWER =
        {
            GENERIC ="Death is in the air.",
			LEVEL1 = "There's a strong magic coming from it.",
			LEVEL2 = "There's a strong sister bond here, i envy...",
			LEVEL3 = "This flower's really something.",

			-- deprecated
            LONG = "I can sense strong magic within it.",
            MEDIUM = "This enchantment is not of my doing.",
            SOON = "Whatever it is will be arriving soon.",
            HAUNTED_POCKET = "I should quit toying with this now.",
            HAUNTED_GROUND = "It demands a sacrifice.",
        },

        BALLOONS_EMPTY = "They remind meow of happiness, hate that.",
        BALLOON = "I feel like popping every one of them.",
		BALLOONPARTY = "There's nothing to party about in this life.",
		BALLOONSPEED =
        {
            DEFLATED = "Everything in this life rots.",
            GENERIC = "That mime boy is weird.",
        },
		BALLOONVEST = "If it helps keep meow dry...",
		BALLOONHAT = "It doesn't fit my style at all.",

        BERNIE_INACTIVE =
        {
            BROKEN = "Dead and gone.",
            GENERIC = "A teddy bear?",
        },

        BERNIE_ACTIVE = "A LIVE teddy bear?",
        BERNIE_BIG = "A HUGE live teddy bear?",

		BOOKSTATION =
		{
			GENERIC = "A library is like, the last thing we'd need here.",
			BURNT = "Womp womp.",
		},
        BOOK_BIRDS = "Birds summeowning? That's infinite food.",
        BOOK_TENTACLES = "Now that's creepy.",
        BOOK_GARDENING = "I'm scared of books.",
		BOOK_SILVICULTURE = "Not that i can't read them.",
		BOOK_HORTICULTURE = "I just don't like books.",
        BOOK_SLEEP = "Woah, that's one boring book.",
        BOOK_BRIMSTONE = "I feel like toying with this could be bad.",

        BOOK_FISH = "Fish for all? That's so cool.",
        BOOK_FIRE = "Looking into it burns myeow eyes.",
        BOOK_WEB = "It doesn't make anyathing explode or combust, lame!",
        BOOK_TEMPERATURE = "Helps stay cool, too bad i'm already always cool.",
        BOOK_LIGHT = "It's unironically light..",
        BOOK_RAIN = "Weather changes moods.",
        BOOK_MOON = "How does a book summon a full meoown, that's dumb.",
        BOOK_BEES = "Beeslavery here.",
        
        BOOK_HORTICULTURE_UPGRADED = "This means i have to spend less time in a garden, right?",
        BOOK_RESEARCH_STATION = "This much knowledge would make my brain explode.",
        BOOK_LIGHT_UPGRADED = "This one's even lighter.",

        FIREPEN = "This really how pens work?",

        PLAYER =
        {
            GENERIC = "What's up cupcake.",
            ATTACKER = "%s, you're and evil one. I feel you.",
            MURDERER = "You love killing boys don't you.",
            REVIVER = "%s is a good person.",
            GHOST = "%s needs a heart.",
            FIRESTARTER = "%s keep that torch away from my stuff, alright.",
        },
        WILSON =
        {
            GENERIC = "'Sup, spike-head %s.",
            ATTACKER = "Random outbursts of violence, check.",
            MURDERER = "This is it, if I don't end you here, no one will.",
            REVIVER = "%s is nice, I guess.",
            GHOST = "Do you really want to come back to this world.",
            FIRESTARTER = "You're starting more trouble than it's worth.",
        },
        WOLFGANG =
        {
            GENERIC = "Hey, big man %s.",
            ATTACKER = "You have to be more careful around meow, %s.",
            MURDERER = "He's going around killing people for no reason.",
            REVIVER = "%s is actually pretty nice, surprisingly.",
            GHOST = "I gotta find a heart for this hunk of myeat.",
            FIRESTARTER = "You really want to stir up trouble, %s, huh.",
        },
        WAXWELL =
        {
            GENERIC = "That face looks so familiar, so... punchable.",
            ATTACKER = "Ugh, he's causing trouble again.",
            MURDERER = "As long as you don't lay a finger on meow, I'll let that pass.",
            REVIVER = "This has to be some sort of trick, %s.",
            GHOST = "%s is looking quite dead.",
            FIRESTARTER = "Hey you'll burn my nyucking stuff at this rate, %s.",
        },
        WX78 =
        {
            GENERIC = "Yo, tin can %s.",
            ATTACKER = "Up for a fight, metal box?",
            MURDERER = "You're just itching for a good beating, aren't you.",
            REVIVER = "%s isn't actually bad, crazy.",
            GHOST = "Are robots allowed to be ghosts like that.",
            FIRESTARTER = "%s wasn't joking about burning the world down.",
        },
        WILLOW =
        {
            GENERIC = "I... uh, hey %s.",
            ATTACKER = "%s is going mad, gosh.",
            MURDERER = "We're on g-good terms aren't we, y-you won't murder meow in cold blood right.",
            REVIVER = "%s is such a good girl.",
            GHOST = "I'll find a heart for you, %s.",
            FIRESTARTER = "She's really starting fires, unironically.",
        },
        WENDY =
        {
            GENERIC = "'Sup dead-sis kid.",
            ATTACKER = "%s, so young, so violent.",
            MURDERER = "You think I won't kill a child, cupcake? Nya-hah!",
            REVIVER = "%s cares for her friends, for some reason.",
            GHOST = "%s, you're the spitting image of your sister now. ",
            FIRESTARTER = "Keep clear of torches next time, cupcake.",
        },
        WOODIE =
        {
            GENERIC = "What's up, hair-ball %s.",
            ATTACKER = "%s why are you acting so strange.",
            MURDERER = "Axe murderer, so cool.",
            REVIVER = "%s is quite in touch with the spirits.",
            GHOST = "I'll have to find you a heart.",
            BEAVER = "Nya-hah, how'd he turn into... that.",
            BEAVERGHOST = "Does this count as roadkill?",
            MOOSE = "Nya-hah, how'd did he turn into... that.",
            MOOSEGHOST = "Does this count as roadkill?",
            GOOSE = "Nya-hah, how'd did he turn into... that.",
            GOOSEGHOST = "Does this count as roadkill?",
            FIRESTARTER = "You shouldn't be throwing a torch around like that!",
        },
        WICKERBOTTOM =
        {
            GENERIC = "'Sup, grandmeow %s.",
            ATTACKER = "%s, you're acting up a little.",
            MURDERER = "You grandmeow are taking things too far.",
            REVIVER = "%s is a really relyaiable person.",
            GHOST = "I'll help you, why not, %s.",
            FIRESTARTER = "I didn't think you were the type to destroy stuff.",
        },
        WES =
        {
            GENERIC = "I was told to stay away from people that look \"french\".",
            ATTACKER = "Do you hate everynyan too.",
            MURDERER = "That blood part of your makeup?",
            REVIVER = "%s is good at heart...",
            GHOST = "Well, at least you have don't have only nyaine lives %s...",
            FIRESTARTER = "Can you STOP BURNING things, jeez.",
        },
        WEBBER =
        {
            GENERIC = "Ugh, another spider. Wait no, that's %s.",
            ATTACKER = "Hey kid, you're looking a little worked up...",
            MURDERER = "He's just a spider, I can stomp him to death easily.",
            REVIVER = "You know what, cupcake, you're not that bad.",
            GHOST = "Oh someowne squashed %s good.",
            FIRESTARTER = "Bet you find burning stuff up fun, huh.",
        },
        WATHGRITHR =
        {
            GENERIC = "Hey, red-head %s.",
            ATTACKER = "I don't like you, %s.",
            MURDERER = "She's bloodthirsty, for my blood, get this woman killed.",
            REVIVER = "%s is more reliable than meow, for sure.",
            GHOST = "If you want a heart you'll have to beg, %s.",
            FIRESTARTER = "How about you let meow handle fires next time.",
        },
        WINONA =
        {
            GENERIC = "Hi, build-a-girl %s.",
            ATTACKER = "%s, I don't think I like your attitude...",
            MURDERER = "I'll kill you for my own sake, %s.",
            REVIVER = "%s can be good, sometimes, I guess.",
            GHOST = "Heh, cat got your tongue, %s.",
            FIRESTARTER = "You're a little too careless with torches, %s.",
        },
        WORTOX =
        {
            GENERIC = "Hey, demon-boy %s.",
            ATTACKER = "You could get in trouble for acting like that.",
            MURDERER = "Time to find out if you bleed, monster.",
            REVIVER = "You have a soft spot for others, huh.",
            GHOST = "Look on the bright side, and go towards the light.",
            FIRESTARTER = "I don't like how you smell of charcoal and ash, %s.",
        },
        WORMWOOD =
        {
            GENERIC = "Hi, %s.",
            ATTACKER = "Ugh, not just a useless plant, but a KILLER useless plant.",
            MURDERER = "All good, %s. I'll meowk it QUICK.",
            REVIVER = "You can be helpful too, I guess.",
            GHOST = "Didn't know plants die like that.",
            FIRESTARTER = "%s I thought you didn't like fires, cupcake, what's up.",
        },
        WARLY =
        {
            GENERIC = "What's up, curly-hair %s.",
            ATTACKER = "%s, I don't like your twisted grin.",
            MURDERER = "Are you one of those people that eat cats!?",
            REVIVER = "He won't eat meow, I hope.",
            GHOST = "Oh no, the cook got cooked.",
            FIRESTARTER = "%s, the fires should stay IN the KITCHEN.",
        },

        WURT =
        {
            GENERIC = "Heyo, fish-a-fish %s.",
            ATTACKER = "Her attitude makes meow wonder how she tastes.",
            MURDERER = "%s is kinda bad. I should eat her.",
            REVIVER = "Doing good work out there kiddo, %s.",
            GHOST = "Is that what they call a \"fish in a barrel\" or something?",
            FIRESTARTER = "I can't believe this fish is starting fires around.",
        },

        WALTER =
        {
            GENERIC = "Hey, kid.",
            ATTACKER = "This lil' kid's throewing punches, nyahah.",
            MURDERER = "Sorry kid, it's the end of the line.",
            REVIVER = "Doing good work there, kid.",
            GHOST = "Hm, I could revive you... or rather...",
            FIRESTARTER = "All that talk about fire safety and you're the one starting fires.",
        },

        WANDA =
        {
            GENERIC = "It's that nerdy time grandmeow, %s.",
            ATTACKER = "You seem kinda dangerous, %s.",
            MURDERER = "She's a killer, and she'll kill meow too.",
            REVIVER = "Not helping meow for anya favors, I hope.",
            GHOST = "Death catches up to everyone.",
            FIRESTARTER = "Playing with fire huh, %s.",
        },

        WONKEY =
        {
            GENERIC = "Oh god, the meownkey has returned for MEOW.",
            ATTACKER = "Hey, meownkey, you can't just go around attacking people.",
            MURDERER = "Alright, now you've done it, ape.",
            REVIVER = "This meownkey's more reliable than I thought.",
            GHOST = "Phew, no more annoying meownkey noises.",
            FIRESTARTER = "Someowne's gotta teach you how to handle a torch.",
        },

--fallback to speech_wilson.lua         MIGRATION_PORTAL =
--fallback to speech_wilson.lua         {
--fallback to speech_wilson.lua         --    GENERIC = "If I had any friends, this could take me to them.",
--fallback to speech_wilson.lua         --    OPEN = "If I step through, will I still be me?",
--fallback to speech_wilson.lua         --    FULL = "It seems to be popular over there.",
--fallback to speech_wilson.lua         },
        GLOMMER =
        {
            GENERIC = "Feel like killing it for no reason.",
            SLEEPING = "This thing is so carelessly happy, UGHHHHHHHHH.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "All these flowers look the same to meow.",
            DEAD = "It turned sad and gray, good.",
        },
        GLOMMERWINGS = "Someowne doesn't need these no myore.",
        GLOMMERFUEL = "Gross stuff.",
        BELL = "The bell...",
        STATUEGLOMMER =
        {
            GENERIC = "It's a meowtaphor, the bug is stoned.",
            EMPTY = "It's a meowtaphor, the bug is... uh broken.",
        },

        LAVA_POND_ROCK = "It's burnt and charred yet it's still going.",

		WEBBERSKULL = "Don't tell meow all spiders have a skull inside, ugh.",
		WORMLIGHT = "Why are you so bright, plant?",
		WORMLIGHT_LESSER = "Now this makes more sense.",
		WORM =
		{
		    PLANT = "That plant is not a plant meowby probably.",
		    DIRT = "The something under there is NOT friendly.",
		    WORM = "It's painful to be digested by one of those, so i'd rather not.",
		},
        WORMLIGHT_PLANT = "That plant is not a plant meowby probably.",
		MOLE =
		{
			HELD = "It's over for you, rodent.",
			UNDERGROUND = "That dig is notorious.",
			ABOVEGROUND = "Bold of you to come out while I'm around.",
		},
		MOLEHILL = "You can't escape meow, rat.",
		MOLEHAT = "I swear I used to see in the dark at one point.",

		EEL = "I could gobble it whole.",
		EEL_COOKED = "I'm watering at my meowth.",
		UNAGI = "This is one of the few things that bring anya semblance of joy in life.",
		EYETURRET = "It's a slave, my slave.",
		EYETURRET_ITEM = "I should throw it in the ocean, end its meowsery.",
		MINOTAURHORN = "That's one less beast in this meowserable world.",
		MINOTAURCHEST = "Is this what that monster was guarding?",
		THULECITE_PIECES = "It takes a few to make a whole.",
		POND_ALGAE = "Some underground plant or whatever.",
		GREENSTAFF = "No one should be capable of undoing their mistakes.",
		GIFT = "This does not bring joy, only meowsery.",
        GIFTWRAP = "I could wrap myself with this... to a tree.",
		POTTEDFERN = "Decoration, it's supposed to bring happiness or something.",
        SUCCULENT_POTTED = "That pot is protecting it from the cruelty of the world.",
		SUCCULENT_PLANT = "Succulent huh. How about you SUCK it.",
		SUCCULENT_PICKED = "Smells green.",
		SENTRYWARD = "Some kind of magic what-now.",
        TOWNPORTAL =
        {
			GENERIC = "All this magic takes a toll on my mind.",
			ACTIVE = "Someone's calling.",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "Great, more balls.",
			ACTIVE = "Someone's calling.",
		},
        WETPAPER = "It's soggy paper.",
        WETPOUCH = "Ripping these apart is satisfying.",
        MOONROCK_PIECES = "The cruelty of the greater forces.",
        MOONBASE =
        {
            GENERIC = "It's an altar of meoown magic, or something.",
            BROKEN = "Well it was something at some point, can tell as much.",
            STAFFED = "Is it supposed to do something or what?",
            WRONGSTAFF = "Seems it's looking for another staff, picky.",
            MOONSTAFF = "Brought to you by the power of the meoown.",
        },
        MOONDIAL =
        {
			GENERIC = "Taking a peek at the sky from below.",
			NIGHT_NEW = "The meoown has retreated for now.",
			NIGHT_WAX = "The meoown is waxing.",
			NIGHT_FULL = "The meoown is full in the sky.",
			NIGHT_WANE = "The meoown is on the wane.",
			CAVE = "Somehow i hoped it'd work here.",
--fallback to speech_wilson.lua 			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "It's meowking meow uncomfortable.",
        },
		THULECITE = "Tough stuff.",
		ARMORRUINS = "I feel more impenetrable than i should.",
		ARMORSKELETON = "I don't know how to feel about using dangerous meowgic like this.",
		SKELETONHAT = "It's a tragic story.",
		RUINS_BAT = "Spiky, dangerous. Evil.",
		RUINSHAT = "Being a ruler would have meow crushed by the weight of the world.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "It's at its calmest.",
            WARN = "A storm is brewing.",
            WAXING = "The end is nigh.",
            STEADY = "It's at its peak.",
            WANING = "The worst is already behind us.",
            DAWN = "The cycle is ending as such.",
            NOMAGIC = "It's worthless in these parts.",
		},
		BISHOP_NIGHTMARE = "It's worn and run down.",
		ROOK_NIGHTMARE = "They probably served a purpose once.",
		KNIGHT_NIGHTMARE = "It's gone stone cold crazy.",
		MINOTAUR = "It must have a story to tell, too bad i don't care.",
		SPIDER_DROPPER = "At least they're chestless.",
		NIGHTMARELIGHT = "With the lights out it's less dangerous.",
		NIGHTSTICK = "A terrible creation.",
		GREENGEM = "These gems reach well to that dark stuff.",
		MULTITOOL_AXE_PICKAXE = "Sometimes the pursuit of innovation leads to... just combining two things.",
		ORANGESTAFF = "There'd be no end to my troubles if i got used to meowving like this.",
		YELLOWAMULET = "It makes meow feel lighter on meow feet.",
		GREENAMULET = "It's what they call a \"black friday\".",
		SLURPERPELT = "It feels sort of like my tail.",

		SLURPER = "Every day it rolls closer to its demise.",
		SLURPER_PELT = "It feels sort of like my tail.",
		ARMORSLURPER = "It's uncomfortably tight... and wet.",
		ORANGEAMULET = "The laziness of the world is boundless.",
		YELLOWSTAFF = "It brings a sort of positive feeling that i hate.",
		YELLOWGEM = "I hate the color, it's too bright.",
		ORANGEGEM = "The gem of the lazy.",
        OPALSTAFF = "It serves an opposite purpose now.",
        OPALPRECIOUSGEM = "It precious, but i can't think of meouch use to it.",
        TELEBASE =
		{
			VALID = "All good to go here.",
			GEMS = "It needs something to concentrate it .",
		},
		GEMSOCKET =
		{
			VALID = "That should do it.",
			GEMS = "It's lacking a gem.",
		},
		STAFFLIGHT = "Staring into it will make meow blind.",
        STAFFCOLDLIGHT = "It's like an entire winter within a star.",

        ANCIENT_ALTAR = "A place of worship and ancient knowledge.",

        ANCIENT_ALTAR_BROKEN = "It can be restored to its former glory.",

        ANCIENT_STATUE = "It looks agonized.",

        LICHEN = "The plant is oblivious to the horrors around it.",
		CUTLICHEN = "It works, I guess.",

		CAVE_BANANA = "I'm not a meownkey to eat this.",
		CAVE_BANANA_COOKED = "Ugh, it's meowlted.",
		CAVE_BANANA_TREE = "Does it have proof that those are real bananas.",
		ROCKY = "Y-You aren't meow friend.",

		COMPASS =
		{
			GENERIC="I admit, i'm lost.",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "Ew, dogs.",
        ARMORSNURTLESHELL = "It's full of slime and other disgusting fluids.",
        BAT = "A real nuisance.",
        BATBAT = "\"No one heals themselves by harming others\". Oh please.",
        BATWING = "I looks kinda tasty.",
        BATWING_COOKED = "Better and better.",
        BATCAVE = "It's where the winged rats stay the day.",
        BEDROLL_FURRY = "Warm, fuzzy, if you ignore the cruelty.",
        BUNNYMAN = "Their hypocrisy will be their downfall.",
        FLOWER_CAVE = "I was told not to walk into the light.",
        GUANO = "Why is it white though.",
        LANTERN = "A portable darkness repellant.",
        LIGHTBULB = "It rots, just like all else.",
        MANRABBIT_TAIL = "A short, worthless tail.",
        MUSHROOMHAT = "It looks all too playful.",
        MUSHROOM_LIGHT2 =
        {
            ON = "It keeps the dark at bay.",
            OFF = "It's dead.",
            BURNT = "It stinks of burnt meowshrooms.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "I'd rather have it dull and dark than cheery and colorful.",
            OFF = "This meowshrooms needs to be stuffed with lights.",
            BURNT = "What a shyame.",
        },
        SLEEPBOMB = "If only I could sleep myeowself with it, eternally.",
        MUSHROOMBOMB = "Really bombs my plans.",
        SHROOM_SKIN = "It stinks of... I don't even know what this smell is.",
        TOADSTOOL_CAP =
        {
            EMPTY = "The hole from my heart, but in the ground.",
            INGROUND = "Such filth.",
            GENERIC = "It looks very choppable, meowst be a trap.",
        },
        TOADSTOOL =
        {
            GENERIC = "Some kind of big frog, dunno.",
            RAGE = "I'm guessing I got on its bad side.",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "These dyamn meowshrooms are helping that frog.",
            BURNT = "Definitely won't backfire.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "These things make meow dread a keen sense of smell.",
            BLOOM = "How gross.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "It's the meowtaphorical middle of the pack",
            BLOOM = "DON'T, do that next to meow.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "It's taller than meow.",
            BLOOM = "Can't you do that in private?",
        },
        MUSHTREE_TALL_WEBBED = "The white spiders claimed it.",
        SPORE_TALL =
        {
            GENERIC = "The way it flails around... it meowst be happy...",
            HELD = "...and i'll end that.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Red makes meow feel more aggressive.",
            HELD = "It's kind of washing its color on meow.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Whimsical little creature.",
            HELD = "You disgust meow. Die.",
        },
        RABBITHOUSE =
        {
            GENERIC = "Well, they build better houses than meow.",
            BURNT = "Didn't make it fireproof, I guess.",
        },
        SLURTLE = "It looks like a meowstake.",
        SLURTLE_SHELLPIECES = "They're broken beyond repair.",
        SLURTLEHAT = "It's good defense but it will get meow hat dirty.",
        SLURTLEHOLE = "I hear unpleasant noises coming from it.",
        SLURTLESLIME = "There's always a worse smell.",
        SNURTLE = "Oh look, another meowstake.",
        SPIDER_HIDER = "Annoying little cupcake.",
        SPIDER_SPITTER = "Don't spit at meow!",
        SPIDERHOLE = "It's riddled with spiders and such.",
        SPIDERHOLE_ROCK = "It's riddled with spiders and such.",
        STALAGMITE = "Always more rocks, anyawhere and everywhere.",
        STALAGMITE_TALL = "Always more rocks, anyawhere and everywhere.",

        TURF_CARPETFLOOR = "I can sharpen meow claws on it.",
        TURF_CHECKERFLOOR = "It's just average floor.",
        TURF_DIRT = "It's the very ground we walk on.",
        TURF_FOREST = "It's the very ground we walk on.",
        TURF_GRASS = "It's the very ground we walk on.",
        TURF_MARSH = "It's the very ground we walk on.",
        TURF_METEOR = "It's the very ground we walk on.",
        TURF_PEBBLEBEACH = "It's the very ground we walk on.",
        TURF_ROAD = "It's the very ground we walk on.",
        TURF_ROCKY = "It's the very ground we walk on.",
        TURF_SAVANNA = "It's the very ground we walk on.",
        TURF_WOODFLOOR = "It's the very ground we walk on.",

		TURF_CAVE="It's the very ground we walk on.",
		TURF_FUNGUS="It's the very ground we walk on.",
		TURF_FUNGUS_MOON = "It's the very ground we walk on.",
		TURF_ARCHIVE = "It's the very ground we walk on.",
		TURF_SINKHOLE="It's the very ground we walk on.",
		TURF_UNDERROCK="It's the very ground we walk on.",
		TURF_MUD="It's the very ground we walk on.",

		TURF_DECIDUOUS = "It's the very ground we walk on.",
		TURF_SANDY = "It's the very ground we walk on.",
		TURF_BADLANDS = "It's the very ground we walk on.",
		TURF_DESERTDIRT = "It's the very ground we walk on.",
		TURF_FUNGUS_GREEN = "It's the very ground we walk on.",
		TURF_FUNGUS_RED = "It's the very ground we walk on.",
		TURF_DRAGONFLY = "It's the very ground we walk on.",

        TURF_SHELLBEACH = "Smack my beach up.",

		TURF_RUINSBRICK = "It's the very ground we walk on.",
		TURF_RUINSBRICK_GLOW = "It's the very ground we walk on.",
		TURF_RUINSTILES = "It's the very ground we walk on.",
		TURF_RUINSTILES_GLOW = "It's the very ground we walk on.",
		TURF_RUINSTRIM = "It's the very ground we walk on.",
		TURF_RUINSTRIM_GLOW = "It's the very ground we walk on.",

        TURF_MONKEY_GROUND = "It's the very ground we walk on.",

        TURF_CARPETFLOOR2 = "I can sharpen meow claws on it.",
        TURF_MOSAIC_GREY = "It's the very ground we walk on.",
        TURF_MOSAIC_RED = "It's the very ground we walk on.",
        TURF_MOSAIC_BLUE = "It's the very ground we walk on.",

        TURF_BEARD_RUG = "I can sharpen meow claws on it.",

		POWCAKE = "A dreadful creation.",
        CAVE_ENTRANCE = "Something's sealed under that, for a reason likely.",
        CAVE_ENTRANCE_RUINS = "Curiosity won't kill meow, surely.",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "That wasn't very bright of meow...",
            OPEN = "Will curiosity kill meow?",
            FULL = "T-There's one too manya on the other end.",
        },
        CAVE_EXIT =
        {
            GENERIC = "Simply go towards the light",
            OPEN = "The only way is to keep going.",
            FULL = "Too manya people, on that other side.",
        },

		MAXWELLPHONOGRAPH = "The forgotten tune.",--single player
		BOOMERANG = "My actions always end up harming meow.",
		PIGGUARD = "A meownority of pigmen.",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "She has deluded herself into thinking this is her sister.",
                "She has deluded herself into thinking this is her sister.",
            },
            LEVEL2 =
            {
                "She has deluded herself into thinking this is her sister.",
                "She has deluded herself into thinking this is her sister.",
            },
            LEVEL3 =
            {
                "She has deluded herself into thinking this is her sister.",
                "She has deluded herself into thinking this is her sister.",
            },
		},
		ADVENTURE_PORTAL = "An out of place thingamajig.",
		AMULET = "But can it restore my will to live.",
		ANIMAL_TRACK = "A dumb beast left this.",
		ARMORGRASS = "It's useless at best.",
		ARMORMARBLE = "Weighs meow down together with all my sins",
		ARMORWOOD = "The middle ground of armors.",
		ARMOR_SANITY = "My head hurts from all this nightmare stuff.",
		ASH =
		{
			GENERIC = "MHmhrhm, it smells like that fire girl.",
			REMAINS_GLOMMERFLOWER = "MHmhrhm, it smells like that fire girl.",
			REMAINS_EYE_BONE = "MHmhrhm, it smells like that fire girl.",
			REMAINS_THINGIE = "MHmhrhm, it smells like that fire girl.",
		},
		AXE = "My axe is my friend, it helps meow relax.",
		BABYBEEFALO =
		{
			GENERIC = "Seeing you suddenly made meow feel better about my looks, cupcake.",
		    SLEEPING = "Keep dreaming, death will catch up to you soon.",
        },
        BUNDLE = "What's trapped in there is a meowstery.",
        BUNDLEWRAP = "Pyacking things for a longer trip.",
		BACKPACK = "Helps meow carry hoard stuff around.",
		BACONEGGS = "You're telling meow this was baken on eggs?",
		BANDAGE = "It's pain that relieves pain, how weird.",
		BASALT = "That's one fat rock.", --removed
		BEARDHAIR = "I think it's the equivalent of fur on humans.",
		BEARGER = "...Big brother..?",
		BEARGERVEST = "Almost enough to forget about the dark, cold world.",
		ICEPACK = "It's a portable cold-maker.",
		BEARGER_FUR = "Scratchy stuff.",
		BEDROLL_STRAW = "This will have meow wake up with a burning back pain.",
		BEEQUEEN = "Kill the queen, plunge them into anarchy.",
		BEEQUEENHIVE =
		{
			GENERIC = "Monarchy is inherently flawed.",
			GROWING = "These bees just don't give up.",
		},
        BEEQUEENHIVEGROWN = "That's the mother of all hives.",
        BEEGUARD = "You really don't wanna sting meow, cupcake.",
        HIVEHAT = "It all comes full circle.",
        MINISIGN =
        {
            GENERIC = "Art doesn't bring meow joy anyamore.",
            UNDRAWN = "It's empty, like meow.",
        },
        MINISIGN_ITEM = "A sign is usually meownt to represent something.",
		BEE =
		{
			GENERIC = "All work and no play will make you a dull bee.",
			HELD = "How the turntables.",
		},
		BEEBOX =
		{
			READY = "It's time to steal all their labor.",
			FULLHONEY = "It's time to steal all their labor.",
			GENERIC = "The bees in it work for meow now.",
			NOHONEY = "They do not hurry, for they do not know death is coming",
			SOMEHONEY = "I could wait a bee-bit longer.",
			BURNT = "Smells of burnt honey, burnt honey and broken dreams.",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "The meowshrooms have taken control of the log.",
			LOTS = "That's a lot of meowshrooms in that.",
			SOME = "Oh they're growing alright.",
			EMPTY = "Smells... \"piney\".",
			ROTTEN = "Time has taken its toll on it.",
			BURNT = "Complete massacre.",
			SNOWCOVERED = "The meowshrooms aren't into this kinda weather, too bad.",
		},
		BEEFALO =
		{
			FOLLOWER = "What do you want from meow, cupcake.",
			GENERIC = "Dumb animals with one thing on their mind.",
			NAKED = "Point and laugh at it.",
			SLEEPING = "It needs rest for whatever reason.",
            --Domesticated states:
            DOMESTICATED = "It's been trapped in a false sense of security.",
            ORNERY = "A violent hairy beast.",
            RIDER = "This cupcake sure gets around fast.",
            PUDGY = "A good-for-nothing tool.",
            MYPARTNER = "Don't mind meow, I'll just be using you for a bit, cupcake.",
		},

		BEEFALOHAT = "Makes you part of the pack.",
		BEEFALOWOOL = "A carpet out of this would be real nice.",
		BEEHAT = "An underhanded tactic against the bees.",
        BEESWAX = "Hmph, beeswax.",
		BEEHIVE = "Gathered for a common cause, too bad the cause is meaningless.",
		BEEMINE = "It will sit there, eternally waiting for some unfortunate soul to step on you.",
		BEEMINE_MAXWELL = "Maybe I shouldn't have put that there.",--removed
		BERRIES = "Red, like my insides.",
		BERRIES_COOKED = "Sticky and meowshy, kinda distasteful.",
        BERRIES_JUICY = "Taste of contempt.",
        BERRIES_JUICY_COOKED = "They're not long for this world.",
		BERRYBUSH =
		{
			BARREN = "It's gotta get some fertilizer.",
			WITHERED = "If you can't stand the heat, don't get planted in the kitchen.",
			GENERIC = "So manya berries, yet only a handful of them matter.",
			PICKED = "How can it afford to grow so slow, when life is so short.",
			DISEASED = "What has brought this blight upon my world?",--removed
			DISEASING = "Looks a little off, if you ask meow.",--removed
			BURNING = "I'll send my condolences to its family.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It's gotta get some fertilizer.",
			WITHERED = "If you can't stand the heat, don't get planted in the kitchen.",
			GENERIC = "This one's a tall bush.",
			PICKED = "How can it afford to grow so slow, when life is so short.",
			DISEASED = "What has brought this blight upon my world?",--removed
			DISEASING = "Looks a little off, if you ask meow.",--removed
			BURNING = "I'll send my condolences to its family.",
		},
		BIGFOOT = "Now that is surely fuel for nightmares.",--removed
		BIRDCAGE =
		{
			GENERIC = "That's just life.",
			OCCUPIED = "They're trying to keep it safe from meow.",
			SLEEPING = "Does it dream of escape.",
			HUNGRY = "Cry about it more why don't you.",
			STARVING = "You should be glad YOU'RE not food.",
			DEAD = "I don't think it's waking up from that.",
			SKELETON = "Well i can't eat it now, happy?",
		},
		BIRDTRAP = "Those dumb bird stand no chance against such stupid tricks.",
		CAVE_BANANA_BURNT = "It will grow bananas no more.",
		BIRD_EGG = "A baby is born against their will in these.",
		BIRD_EGG_COOKED = "For a dead child, it tastes pretty good.",
		BISHOP = "It's got some unpleasant aggression.",
		BLOWDART_FIRE = "A solution to no problem, really.",
		BLOWDART_SLEEP = "A deep slumber shooter.",
		BLOWDART_PIPE = "Now that's a lotta damage.",
		BLOWDART_YELLOW = "Those feathers sure pack an electric punch.",
		BLUEAMULET = "It's got one eye, and a cold glare.",
		BLUEGEM = "Feels like i'm holding a piece of ice.",
		BLUEPRINT =
		{
            COMMON = "Has some stuff scribbled on it.",
            RARE = "This one must hold valuable secrets.",
        },
        SKETCH = "I'm not cut out for sculpting",
		COOKINGRECIPECARD = 
		{
			GENERIC = "I can't make out what it says.",
		},
		BLUE_CAP = "That's a mad cap.",
		BLUE_CAP_COOKED = "Mad cap no longer.",
		BLUE_MUSHROOM =
		{
			GENERIC = "I think i was warned not to eat random meowshrooms.",
			INGROUND = "It's hiding from meow.",
			PICKED = "No new inhabitants yet?",
		},
		BOARDS = "Some moewshed together logs.",
		BONESHARD = "Must've been alive at one point.",
		BONESTEW = "It's a filling meal.",
		BUGNET = "Sometimes you need them alive.",
		BUSHHAT = "Artificially boosting the bush population.",
		BUTTER = "Hey there, Butterworth.",
		BUTTERFLY =
		{
			GENERIC = "It's pretty tasty-looking.",
			HELD = "Ripping their wings is pretty fun.",
		},
		BUTTERFLYMUFFIN = "This butterfly isn't going to be flying anya time soon.",
		BUTTERFLYWINGS = "Gotcha.",
		BUZZARD = "Carrion connoisseur.",

		SHADOWDIGGER = "Some kind of guy i guess.",
        SHADOWDANCER = "Dance you fool, for you are next.",

		CACTUS =
		{
			GENERIC = "I see myself as a cactus sometimes too.",
			PICKED = "Flattened to the core.",
		},
		CACTUS_MEAT_COOKED = "Should be edible now, i guess.",
		CACTUS_MEAT = "This would pain meow all the way down.",
		CACTUS_FLOWER = "A delicate flower, unfortunately in my hands.",

		COLDFIRE =
		{
			EMBERS = "It's dying.",
			GENERIC = "Stare into the light.",
			HIGH = "It emits a monstrous roar.",
			LOW = "It won't keep up at this rate.",
			NORMAL = "It emits what i can only describe as a warm coldness.",
			OUT = "Yet another one falls.",
		},
		CAMPFIRE =
		{
			EMBERS = "It's dying.",
			GENERIC = "Stare into the light.",
			HIGH = "It emits a monstrous roar.",
			LOW = "It won't keep up at this rate.",
			NORMAL = "It warms up only my mortal flesh.",
			OUT = "Yet another one falls.",
		},
		CANE = "Wherever I may roam.",
		CATCOON = "They remind meow of myeowself, I hate myeowself.",
		CATCOONDEN =
		{
			GENERIC = "Cat shaped box.",
			EMPTY = "Nothing lasts in this cursed world.",
		},
		CATCOONHAT = "What I hate about myeowself is that I'm unbothered by this.",
		COONTAIL = "A tale that has gone cold.",
		CARROT = "A long and sturdy vegetable.",
		CARROT_COOKED = "Better than raw, I guess.",
		CARROT_PLANTED = "It's been grounded.",
		CARROT_SEEDS = "These yield carrots, or something.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Drawing is calming.",
			BURNING = "It's just destruction for the sake of destruction.",
			BURNT = "No use out of this anyamore.",
		},
		WATERMELON_SEEDS = "It's a watermeowlon, how can I tell? Cat sense.",
		CAVE_FERN = "Trample it.",
		CHARCOAL = "Black, hard, satisfying.",
        CHESSPIECE_PAWN = "A stone creature.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Don't tell meow it's actually inside that.",
            STRUGGLE = "It's trying to escape its prison",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "That's a knight in shining armor.",
            STRUGGLE = "That can't be a friendly sign.",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Much less shocking, thankfuly.",
            STRUGGLE = "Why is it in meowtion.",
        },
        CHESSPIECE_MUSE = "A slender figurine of a lady.",
        CHESSPIECE_FORMAL = "Sure wonder who that one is.",
        CHESSPIECE_HORNUCOPIA = "A representation of mortal hubris.",
        CHESSPIECE_PIPE = "Never understood the purpose of these.",
        CHESSPIECE_DEERCLOPS = "This brute has been locked away in stone.",
        CHESSPIECE_BEARGER = "From a flesh prison to a stone prison, tragic.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "A foolish expression for a foolish creature.",
        },
        CHESSPIECE_DRAGONFLY = "It won't meowlt you in its presence like this.",
		CHESSPIECE_MINOTAUR = "Making statue of our fallen enemies is cruel, but well deserved.",
        CHESSPIECE_BUTTERFLY = "A foolishly elegant creature.",
        CHESSPIECE_ANCHOR = "An anchor that serves no anchor purposes.",
        CHESSPIECE_MOON = "It's sharper than it looks.",
        CHESSPIECE_CARRAT = "It's rude to make this around meow.",
        CHESSPIECE_MALBATROSS = "Looking at this bird myakes meow hungry.",
        CHESSPIECE_CRABKING = "Not much of a king anyamore.",
        CHESSPIECE_TOADSTOOL = "I am still disgusted by this creature.",
        CHESSPIECE_STALKER = "I still get the feeling this ended up wrong.",
        CHESSPIECE_KLAUS = "This'll definitely get meow on the naughty list.",
        CHESSPIECE_BEEQUEEN = "This creature is unworthy of a statue.",
        CHESSPIECE_ANTLION = "I was almost impaled on a spike for this.",
        CHESSPIECE_BEEFALO = "One of those cow things, or something.",
		CHESSPIECE_KITCOON = "A naive kitten is what it is.",
		CHESSPIECE_CATCOON = "They're quite a lot fatter in person.",
        CHESSPIECE_MANRABBIT = "Foolish creatures these are.",
        CHESSPIECE_GUARDIANPHASE3 = "It's got all the finer details captured in it.",
        CHESSPIECE_EYEOFTERROR = "I'm of the opinion that i have enough eyeballs already.",
        CHESSPIECE_TWINSOFTERROR = "They must be a couple, or something.",
        CHESSPIECE_DAYWALKER = "His hubris was his downfall.",
        CHESSPIECE_DEERCLOPS_MUTATED = "A continuation of an old story.",
        CHESSPIECE_WARG_MUTATED = "Sit.",
        CHESSPIECE_BEARGER_MUTATED = "The meoown did a number on this one.",

        CHESSJUNK1 = "Some unfinished rubble.",
        CHESSJUNK2 = "Who am i to judge art.",
        CHESSJUNK3 = "How does it exist with no sight or hearing.",
		CHESTER = "It's close enough to a dog for meow to dislike it.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Erm, awkward.",
			WAITING = "Getting a little shut-eye.",
		},
		COOKEDMANDRAKE = "At least that ended the squeaking.",
		COOKEDMEAT = "The smell of cooked flesh is pleasing.",
		COOKEDMONSTERMEAT = "Only meownsters feed on such things.",
		COOKEDSMALLMEAT = "No way back for it now.",
		COOKPOT =
		{
			COOKING_LONG = "Unfortunately i'm not a patient cat.",
			COOKING_SHORT = "Patience is always rewarded.",
			DONE = "Do i really deserve treating meowself to such food.",
			EMPTY = "For combining ingredients to make a dish.",
			BURNT = "That's a little overcooked.",
		},
		CORN = "What is this yellow abomyanation.",
		CORN_COOKED = "It's almost unrecognizable now.",
		CORN_SEEDS = "It's for that yellow bulb vegetable, or something.",
        CANARY =
		{
			GENERIC = "It looks like one fancy meal.",
			HELD = "Hello, your death is assured.",
		},
        CANARY_POISONED = "It's like you never had wings.",

		CRITTERLAB = "A suspicious looking rock.",
        CRITTER_GLOMLING = "It's an innocent fool.",
        CRITTER_DRAGONLING = "Not sure how I feel about getting followed by one of these.",
		CRITTER_LAMB = "So unpleasant to touch.",
        CRITTER_PUPPY = "Disgusting little mutt.",
        CRITTER_KITTEN = "It's judgements are clouded by child-like naivety.",
        CRITTER_PERDLING = "I made it clear to stay away from myeow berries.",
		CRITTER_LUNARMOTHLING = "Moth into flame.",

		CROW =
		{
			GENERIC = "That's my meal right there.",
			HELD = "No one can hear you caw, cupcake.",
		},
		CUTGRASS = "Ripped apart for later.",
		CUTREEDS = "They have a pleasing texture, i guess.",
		CUTSTONE = "I'm not a builder type, but i can try.",
		DEADLYFEAST = "It smells... noxious.", --unimplemented
		DEER =
		{
			GENERIC = "They look so helpless, so... delicious.",
			ANTLER = "I wanted antlers on meow too.",
		},
        DEER_ANTLER = "The previous owner doesn't need them anyamore.",
        DEER_GEMMED = "That gem looks a bit uncomfortable.",
		DEERCLOPS = "It's scary, i guess.",
		DEERCLOPS_EYEBALL = "A lot smaller than I thought.",
		EYEBRELLAHAT =	"Someone lost their eyesight for my comfort.",
		DEPLETED_GRASS =
		{
			GENERIC = "Stripped of all purpose.",
		},
        GOGGLESHAT = "It doesn't look half bad, i guess.",
        DESERTHAT = "My stubbornness has meow wearing hats over a hat.",
        ANTLIONHAT = "Bringing the spirit of change on the go.",
--fallback to speech_wilson.lua 		DEVTOOL = "It smells of bacon!",
--fallback to speech_wilson.lua 		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "What's this nyow.",
		DIVININGROD =
		{
			COLD = "Mostly just background noise.", --singleplayer
			GENERIC = "I can use this to find my missing parts.", --singleplayer
			HOT = "It must be right under my nose!", --singleplayer
			WARM = "This is the right direction.", --singleplayer
			WARMER = "I should keep my eyes peeled.", --singleplayer
		},
		DIVININGRODBASE =
		{
			GENERIC = "It's the starting mechanism.", --singleplayer
			READY = "I need to insert the divining rod.", --singleplayer
			UNLOCKED = "Progress!", --singleplayer
		},
		DIVININGRODSTART = "The portals lead to the next rod.", --singleplayer
		DRAGONFLY = "I have an irresistible urge to spank it.",
		ARMORDRAGONFLY = "This sounds like it'd cause meow more trouble than good.",
		DRAGON_SCALES = "Dragon scales, or something.",
		DRAGONFLYCHEST = "It looks a lot bigger, but in reality it's only a slight improvement.",
		DRAGONFLYFURNACE =
		{
			HAMMERED = "How undignified.",
			GENERIC = "It still can't warm meow heart.", --no gems
			NORMAL = "It still can't warm meow heart.", --one gem
			HIGH = "It still can't warm meow heart.", --two gems
		},

        HUTCH = "Bet he'd taste good.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Don't worry little guy, you're safe with meow.",
            WAITING = "I can just eat it nyow, right?.",
        },
		LAVASPIT =
		{
			HOT = "That's actual lava.",
			COOL = "It has cooled off.",
		},
		LAVA_POND = "That blondie was trying to get meow to jump into that the other day.",
		LAVAE = "It's just been born, and the first thing it wants is to kill meow.",
		LAVAE_COCOON = "Serves you right.",
		LAVAE_PET =
		{
			STARVING = "It looks really, really hungry.",
			HUNGRY = "It can keep starving for a little longer.",
			CONTENT = "I envy your nyaive happiness.",
			GENERIC = "Doesn't jump in myeow face at least.",
		},
		LAVAE_EGG =
		{
			GENERIC = "Should give it to Willow, she might like it...",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It's freezing to death.",
			COMFY = "Make yourself comfortable while you still can.",
		},
		LAVAE_TOOTH = "To fool that little worm into thinking I'm its mother.",

		DRAGONFRUIT = "It's way more exotic than i'm used to.",
		DRAGONFRUIT_COOKED = "A little less exotic now but, it works.",
		DRAGONFRUIT_SEEDS = "Dragon seeds, probably grows dragons.",
		DRAGONPIE = "The sweetness does not bring meow joy.",
		DRUMSTICK = "The myeat of the birds.",
		DRUMSTICK_COOKED = "Fried to perfection.",
		DUG_BERRYBUSH = "Let's explore the world together, bush.",
		DUG_BERRYBUSH_JUICY = "Let's explore the world together, bush.",
		DUG_GRASS = "Forced relocation is what it's called.",
		DUG_MARSH_BUSH = "Forced relocation is what it's called.",
		DUG_SAPLING = "Forced relocation is what it's called.",
		DURIAN = "Nyuck, that tastes like vomit.",
		DURIAN_COOKED = "But do I really deserve a choice.",
		DURIAN_SEEDS = "Seeds for that trash plant.",
		EARMUFFSHAT = "Sacrifices for comfort aren't exactly uncommon.",
		EGGPLANT = "An overgrown egg, or something.",
		EGGPLANT_COOKED = "Wait what, it's not an egg, lies!",
		EGGPLANT_SEEDS = "It's for planting eggs.",

		ENDTABLE =
		{
			BURNT = "Everything eventually dies.",
			GENERIC = "It's just decor to spice up my boring life.",
			EMPTY = "Empty and useless, just like meow.",
			WILTED = "The passage of time is a cruel thing.",
			FRESHLIGHT = "Temporyary salvation from the eternal darkness.",
			OLDLIGHT = "Its life has come to an end.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one byaites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			POISON = "Don't even think about birchnutting all over meow.",
			GENERIC = "Still all too playful.",
		},
		ACORN = "I can let it begin a nyew life, but why should I subject it to myore meowsery.",
        ACORN_SAPLING = "It's probably content with such a life.",
		ACORN_COOKED = "Even it cracked under pressure.",
		BIRCHNUTDRAKE = "Very aggressive, for its size.",
		EVERGREEN =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one byaites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			GENERIC = "Spiky, sturdy, green.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one byaites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			GENERIC = "Unwilling and hopeless, morbid and sad.",
		},
		TWIGGYTREE =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one byaites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			GENERIC = "A pathetic, weak tree.",
			DISEASED = "What has brought this blight upon the world?", --unimplemented
		},
		TWIGGY_NUT_SAPLING = "Circle of life.",
        TWIGGY_OLD = "The wind could tip it over.",
		TWIGGY_NUT = "It has to be put down under.",
		EYEPLANT = "It's staring at meow, judging meow.",
		INSPECTSELF = "Meow in all my atrocity.",
		FARMPLOT =
		{
			GENERIC = "Do I look like a farmer?",
			GROWING = "I have better things to do than watch plants grow.",
			NEEDSFERTILIZER = "It needs to be... refreshed.",
			BURNT = "Down with the farm.",
		},
		FEATHERHAT = "I'm not on good terms with the birds.",
		FEATHER_CROW = "Black suits meow the most.",
		FEATHER_ROBIN = "Weird, it's kind of warm.",
		FEATHER_ROBIN_WINTER = "Cold... motionless...",
		FEATHER_CANARY = "The tastiest birds, if you ask meow.",
		FEATHERPENCIL = "This is how people write, pretty creative.",
        COOKBOOK = "It's a book about cooking or whatever.",
		FEM_PUPPET = "Better her than meow.", --single player
		FIREFLIES =
		{
			GENERIC = "They glow, and they never stop glowing.",
			HELD = "Would eating them make meow brighter.",
		},
		FIREHOUND = "It's one with a short temper.",
		FIREPIT =
		{
			EMBERS = "It's nearly dead.",
			GENERIC = "A fire prison.",
			HIGH = "It's a roaring fire.",
			LOW = "It doesn't have much time left.",
			NORMAL = "Quite hot.",
			OUT = "It's done and gone.",
		},
		COLDFIREPIT =
		{
			EMBERS = "It's nearly dead.",
			GENERIC = "A fire prison.",
			HIGH = "It's a cold, roaring fire.",
			LOW = "It doesn't have much time left.",
			NORMAL = "Quite cold.",
			OUT = "It's done and gone.",
		},
		FIRESTAFF = "Where's Willow, she'll totes love this one.",
		FIRESUPPRESSOR =
		{
			ON = "A reliable fire repellant",
			OFF = "It sleeps, for it can't work endlessly.",
			LOWFUEL = "It'll shut off if I don't get it some fuel.",
		},

		FISH = "Finally some good nyacking food.",
		FISHINGROD = "I had to teach myeowself how to fyesh.",
		FISHSTICKS = "It's fish, packed into blocks, or whatever.",
		FISHTACOS = "Woah, fyesh tacos, so cool.",
		FISH_COOKED = "Looking at it makes meow hungry.",
		FLINT = "Edgy, reminds meow of meowself",
		FLOWER =
		{
            GENERIC = "Sweet, cute and girly. It makes meow numb.",
            ROSE = "Make meow bleed. ",
        },
        FLOWER_WITHERED = "A reminder of injustice.",
		FLOWERHAT = "That's way out of my fashion.",
		FLOWER_EVIL = "Pretty.",
		FOLIAGE = "This won't feed anyaone, I don't think.",
		FOOTBALLHAT = "It will keep meow in the fight for longer.",
        FOSSIL_PIECE = "Whatever it was once, is no longer.",
        FOSSIL_STALKER =
        {
			GENERIC = "Whatever that's supposed to be.",
			FUNNY = "Something's wrong here, isn't it.",
			COMPLETE = "Why do I get the feeling it will come to life and kill meow.",
        },
        STALKER = "I hate when I'm right.",
        STALKER_ATRIUM = "The God that failed.",
        STALKER_MINION = "It's near mindless.",
        THURIBLE = "Why does it smell like catnip.",
        ATRIUM_OVERGROWTH = "Unreadable to meow.",
		FROG =
		{
			DEAD = "No more jumping around.",
			GENERIC = "What were these called again? Frog...gert?.",
			SLEEPING = "It's blind to the cruelty of the world.",
		},
		FROGGLEBUNWICH = "Cruel slaughter, but it's tasty so whatever.",
		FROGLEGS = "They taste a lot like chicken.",
		FROGLEGS_COOKED = "I doubt they'll have anya more jump in them after this.",
		FRUITMEDLEY = "Fruits are kinda boring to meow.",
		FURTUFT = "Hey, that's not mine!",
		GEARS = "Some robot parts or whatever.",
		GHOST = "To live is to die.",
		GOLDENAXE = "These kinds of tools are a waste in myeow hands.",
		GOLDENPICKAXE = "Do I really deserve such luxury.",
		GOLDENPITCHFORK = "We will revolt, in style.",
		GOLDENSHOVEL = "This better be worth the gold put into it.",
		GOLDNUGGET = "Gold, a myortal desire.",
		GRASS =
		{
			BARREN = "It needs meownure.",
			WITHERED = "Not even the grass can resist this heat",
			BURNING = "That's that.",
			GENERIC = "Scratchy, at least that.",
			PICKED = "Come back next year.",
			DISEASED = "What has brought this blight upon my world?", --unimplemented
			DISEASING = "Looks a little off, if you ask me.", --unimplemented
		},
		GRASSGEKKO =
		{
			GENERIC = "Unfair, my tail doesn't grow back.",
			DISEASED = "It's sickly and frail.", --unimplemented
		},
		GREEN_CAP = "I was told not to shove random meowshrooms in my meowth, anyamore.",
		GREEN_CAP_COOKED = "This isn't that bad.",
		GREEN_MUSHROOM =
		{
			GENERIC = "A wild meowshroom.",
			INGROUND = "They come out at different times of day.",
			PICKED = "That's not growing back anya time soon.",
		},
		GUNPOWDER = "Does it taste spicy though.",
		HAMBAT = "Ironic.",
		HAMMER = "Ruining everything is the only thing I'm good at.",
		HEALINGSALVE = "It heals through pain.",
		HEATROCK =
		{
			FROZEN = "Almost as cold as my heart.",
			COLD = "It's cool, almost too cool.",
			GENERIC = "It's unsure if it wants to be hot or warm.",
			WARM = "Lyukewarm, nyeither here nyor there.",
			HOT = "Holding it burns meow hands.",
		},
		HOME = "I don't even have a home.",
		HOMESIGN =
		{
			GENERIC = "\"You are here\"... I really wish I wasn't...",
            UNWRITTEN = "Should I carve my feelings into it.",
			BURNT = "It tells a story, of destruction.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "\"Thataway\"... guh.",
            UNWRITTEN = "Should I carve my feelings into it.",
			BURNT = "It tells a story, of destruction.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "\"Thataway\"... guh.",
            UNWRITTEN = "Should i write my feelings on it.",
			BURNT = "It tells a story, of destruction.",
		},
		HONEY = "The sweet, hard work of the bees.",
		HONEYCOMB = "I am not allowed to shyove it in my meowth, but i would if i could.",
		HONEYHAM = "Chewy, sweet, sticky.",
		HONEYNUGGETS = "At least some things still bring joy in this life.",
		HORN = "Call of the beefalo.",
		HOUND = "Nyack-! Stay away from meow, mutt.",
		HOUNDCORPSE =
		{
			GENERIC = "Throw it straight to hell.",
			BURNING = "I feel much safer without these nyackers around.",
			REVIVING = "Great, undead mutts.",
		},
		HOUNDBONE = "They are reckless, cruel... and ugly.",
		HOUNDMOUND = "Nyeed to get rid of this garbage pile here.",
		ICEBOX = "The power of winter is trapped in this small box.",
		ICEHAT = "I'm already as cold as can be.",
		ICEHOUND = "How manya gems did this one swallow.",
		INSANITYROCK =
		{
			ACTIVE = "Is this rock... alive?",
			INACTIVE = "It doesn't seem, or look normal.",
		},
		JAMMYPRESERVES = "Jam after dinner.",

		KABOBS = "Do I really deserve to enjoy food like this.",
		KILLERBEE =
		{
			GENERIC = "That's no love buzz.",
			HELD = "Threat secured.",
		},
		KNIGHT = "A mental metal animal.",
		KOALEFANT_SUMMER = "It doesn't look like a beefalo but it sure smells like one.",
		KOALEFANT_WINTER = "Someone here's dressed up for the season.",
		KOALEFANT_CARCASS = "It's dead, big deal.",
		KRAMPUS = "They always watch, judge, from afar.",
		KRAMPUS_SACK = "This pleases my inner hoarder.",
		LEIF = "Some kind of tree vigilante.",
		LEIF_SPARSE = "Some kind of tree vigilante.",
		LIGHTER  = "That girl's the only one that comes close to understanding meow.",
		LIGHTNING_ROD =
		{
			CHARGED = "Leech from the power of the skies.",
			GENERIC = "I'm not on good terms with lightning.",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "Those are some big horns.",
			CHARGED = "It's super powerful nyow, or something.",
		},
		LIGHTNINGGOATHORN = "Need to figure out where i can shove this.",
		GOATMILK = "Mhmmmh... myalk.",
		LITTLE_WALRUS = "Shouldn't you pick on someone your size, cupcake.",
		LIVINGLOG = "It's sad because there's nothing to be happy about.",
		LOG =
		{
			BURNING = "That's some no good wood.",
			GENERIC = "Hard, fat wood.",
		},
		LUCY = "That's one sexy axe.",
		LUREPLANT = "Myeat-eating orchids forgive no one just yet.",
		LUREPLANTBULB = "I can make it work for meow now.",
		MALE_PUPPET = "Better him than meow.", --single player

		MANDRAKE_ACTIVE = "It's like claws on a chalkboard to my sensitive ears",
		MANDRAKE_PLANTED = "I have an urge to rip it out of the ground.",
		MANDRAKE = "Meowndrake.",

        MANDRAKESOUP = "He has been souped.",
        MANDRAKE_COOKED = "He has been cooked.",
        MAPSCROLL = "Markings of previous travels.",
        MARBLE = "That's some heavy metal.",
        MARBLEBEAN = "It's for growing meowrble",
        MARBLEBEAN_SAPLING = "Does it count as a plant or something.",
        MARBLESHRUB = "An axe won't cut that.",
        MARBLEPILLAR = "Tip over and crush meow please.",
        MARBLETREE = "This ain't no tree.",
        MARSH_BUSH =
        {
		BURNT = "It's been bushed.",
            BURNING = "Hey, bush, are you in pain or what.",
            GENERIC = "Agh, so that's what it feels like",
            PICKED = "There's no escaping the pain, not in this world.",
        },
        BURNT_MARSH_BUSH = "Burnt. Sad. Broken.",
        MARSH_PLANT = "Just a bush, whatever.",
        MARSH_TREE =
        {
            BURNING = "Fire is a common weakness.",
            BURNT = "There's not myuch left to do with it now.",
            CHOPPED = "It didn't put up a fight.",
            GENERIC = "Spiky. Unpleasant. Like meow.",
        },
        MAXWELL = "Looks like a jackass.",--single player
        MAXWELLHEAD = "What's with that big floating head.",--removed
        MAXWELLLIGHT = "It reacts to my presence.",--single player
        MAXWELLLOCK = "A lock with no key in sight.",--single player
        MAXWELLTHRONE = "That does not look comfortable at all.",--single player
        MEAT = "Someowne must suffer for someowne else to prosper.",
        MEATBALLS = "Those are some fat meowty balls.",
        MEATRACK =
        {
            DONE = "Time did its thing.",
            DRYING = "Still kinda wet.",
            DRYINGINRAIN = "No way it's drying with this rain.",
            GENERIC = "Should I...? No... or maybe...?",
            BURNT = "Well it won't do jack now.",
            DONE_NOTMEAT = "Time did its thing.",
            DRYING_NOTMEAT = "Still kinda wet.",
            DRYINGINRAIN_NOTMEAT = "No way it's drying with this rain.",
        },
        MEAT_DRIED = "Chewy. Tasty. It makes meow feel slightly happy.",
        MERM = "Aggressive and mindless.",
        MERMHEAD =
        {
            GENERIC = "I feel like it's looking at meow.",
            BURNT = "Mhrrmmm, smells like fried fish.",
        },
        MERMHOUSE =
        {
            GENERIC = "That does nyot look stable at all.",
            BURNT = "No home is ever fireproof.",
        },
        MINERHAT = "I feel so dirty, using fireflies like this.",
        MONKEY = "You god dyamn MEOWNKEY.",
        MONKEYBARREL = "Very ape.",
        MONSTERLASAGNA = "Nya-huh, that doesn't smell good at all.",
        FLOWERSALAD = "Sallad is... depressing.",
        ICECREAM = "Why am I screaming? Why wouldn't I scream? If you were smart you'd be doing the same thing.",
        WATERMELONICLE = "Trapped under ice.",
        TRAILMIX = "Some trash in a bag.",
        HOTCHILI = "Hot chili peppers.",
        GUACAMOLE = "That nyose sticks out like a sore... uh, nose.",
        MONSTERMEAT = "Sad, blue myeat.",
        MONSTERMEAT_DRIED = "Sad, dried blue myeat.",
        MOOSE = "What's up, grey goose.",
        MOOSE_NESTING_GROUND = "AUGHHHH it's where that thing gives birth.",
        MOOSEEGG = "That could be a huge omeowlette right there.",
        MOSSLING = "They look very tasty.",
        FEATHERFAN = "It's the wind meowker.",
        MINIFAN = "Is this meant to be \"fun\".",
        GOOSE_FEATHER = "Bleh, the feathers don't taste as good as the birds.",
        STAFF_TORNADO = "You spin meow right round.",
        MOSQUITO =
        {
            GENERIC = "My libido.",
            HELD = "Got you, nyucker.",
        },
        MOSQUITOSACK = "Stretchy stuff.",
        MOUND =
        {
            DUG = "It's ready for meow to jump in.",
            GENERIC = "Someone's dead and buried here.",
        },
        NIGHTLIGHT = "Light I can stare into without being blinded.",
        NIGHTMAREFUEL = "I know someone who's very fond of this.",
        NIGHTSWORD = "No man should have all that power.",
        NITRE = "That's some deep rock.",
        ONEMANBAND = "I'm doing it live and loud.",
        OASISLAKE =
		{
			GENERIC = "Ew, water. A lot of trash down there though.",
			EMPTY = "Out of order.",
		},
        PANDORASCHEST = "Fancy chest, what could go wrong.",
        PANFLUTE = "I'm no meowsician.",
        PAPYRUS = "I wanna rip it to shreds.",
        WAXPAPER = "Ew it's all smeowth.",
        PENGUIN = "Birds of the ocean.",
        PERD = "Why's it going crazy for those berries of all things.",
        PEROGIES = "Mrmhm, they're making meow hungry.",
        PETALS = "I don't see us tearing other people limb by limb.",
        PETALS_EVIL = "Dark, twisted petals.",
        PHLEGM = "Nyuck.",
        PICKAXE = "Back to mine.",
        PIGGYBACK = "It's meowd out of pig ass.",
        PIGHEAD =
        {
            GENERIC = "Wish that was meow.",
            BURNT = "Bacon smells nice though.",
        },
        PIGHOUSE =
        {
            FULL = "I wish I had a house like that.",
            GENERIC = "It's deceptively unstable.",
            LIGHTSOUT = "What a jackass.",
            BURNT = "No more hiding from meow nyow, cupcake.",
        },
        PIGKING = "Some sort of pig hierarchy at play here.",
        PIGMAN =
        {
            DEAD = "He's bacon now.",
            FOLLOWER = "I prefer being alone.",
            GENERIC = "They look so brain dead.",
            GUARD = "The clash of pigs.",
            WEREPIG = "This cupcake does not look friendly at all.",
        },
        PIGSKIN = "I showed him what it means to meowss with meow.",
        PIGTENT = "Gross.",
        PIGTORCH = "They eternally work for that thing.",
        PINECONE = "It goes in the ground, six feet under.",
        PINECONE_SAPLING = "Dead and buried.",
        LUMPY_SAPLING = "These just show up on their own.",
        PITCHFORK = "I pitched this fork myeowself.",
        PLANTMEAT = "It doesn't taste like myeat at all.",
        PLANTMEAT_COOKED = "It tastes myeatier now but it's still off.",
        PLANT_NORMAL =
        {
            GENERIC = "Some plant or whatever.",
            GROWING = "It looks eager to grow...",
            READY = "Looks like it's ripe.",
            WITHERED = "The heat is our common enemyeow.",
        },
        POMEGRANATE = "It reeks of depression.",
        POMEGRANATE_COOKED = "More so nyow.",
        POMEGRANATE_SEEDS = "Grenade seeds, or whatever.",
        POND = "I'd rather stay away, don't wanna become soggy.",
        POOP = "Nyuck.",
        FERTILIZER = "At least I don't have to carry it on hands nyow.",
        PUMPKIN = "That's a fat vegetable, or is that a fruit, eh whatever.",
        PUMPKINCOOKIE = "Better than nothing, I guess.",
        PUMPKIN_COOKED = "It looks depraved of its thickness.",
        PUMPKIN_LANTERN = "It's whispering to meow, telling meow to kill everynyan.",
        PUMPKIN_SEEDS = "These seeds are thicker than usual.",
        PURPLEAMULET = "Our minds bend and our fingers fold.",
        PURPLEGEM = "Purple rock, rocks are cool, I guess.",
        RABBIT =
        {
            GENERIC = "Run rabbit run.",
            HELD = "These rabbits bring only trouble",
        },
        RABBITHOLE =
        {
            GENERIC = "Down the rabbit hole.",
            SPRING = "Drown the rabbit hole.",
        },
        RAINOMETER =
        {
            GENERIC = "Yes, yes, tell meow more.",
            BURNT = "That's... eh whatever.",
        },
        RAINCOAT = "If at least one drop of water touches meow I'll DIE.",
        RAINHAT = "I something stronger to keep dry.",
        RATATOUILLE = "Better than nothing, I guess.",
        RAZOR = "This brings back bad meowmories.",
        REDGEM = "I can see my reflection in it.",
        RED_CAP = "I was warned against eating random meowshrooms.",
        RED_CAP_COOKED = "Wow, tastes like garbage.",
        RED_MUSHROOM =
        {
            GENERIC = "It's a red meowshroom.",
            INGROUND = "Why is it hiding from meow.",
            PICKED = "There's a hole where its heart used to be.",
        },
        REEDS =
        {
            BURNING = "The flames of passion.",
            GENERIC = "Probably useful for something, dunno.",
            PICKED = "I picked them clean.",
        },
        RELIC = "Nya- choo, ugh... dusty.",
        RUINS_RUBBLE = "Ancient, uhh.... stuff?",
        RUBBLE = "Everything and everyone is bound to break.",
        RESEARCHLAB =
        {
            GENERIC = "Staying near it makes meow smarter.",
            BURNT = "Well you burn something nyew everyday.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "It helps meow CRAFT more stuff.",
            BURNT = "Ugh, can this fire nyack off.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "It's where meowgic happens.",
            BURNT = "Is that how burnt meowgic smells.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Huh, you learn something nyew everyday.",
            BURNT = "Guess that's that.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "But it has no cat ears.",
            BURNT = "No one's using that no myore.",
        },
        RESURRECTIONSTONE = "What a lively stone.",
        ROBIN =
        {
            GENERIC = "The red one tastes better, it's softer to chew.",
            HELD = "Shut up, no one asked you anyathing.",
        },
        ROBIN_WINTER =
        {
            GENERIC = "These ones taste a lot like snow.",
            HELD = "Brrr, cold to hold.",
        },
        ROBOT_PUPPET = "Better them than meow.", --single player
        ROCK_LIGHT =
        {
            GENERIC = "The top of this lava pit has cooled into a fine crust.",--removed
            OUT = "It looks harmless.",--removed
            LOW = "The fires are cooling.",--removed
            NORMAL = "It's hot.",--removed
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I don't wanna break my back carrying that.",
            RAISED = "There's others to deal with.",
        },
        ROCK = "That's a rock, dude.",
        PETRIFIED_TREE = "Stone dead forever.",
        ROCK_PETRIFIED_TREE = "Stone dead forever.",
        ROCK_PETRIFIED_TREE_OLD = "Stone dead forever.",
        ROCK_ICE =
        {
            GENERIC = "It's water that has been cast away from society.",
            MELTED = "Oh myeow, what have they done to the ice.",
        },
        ROCK_ICE_MELTED = "Oh myeow, what have they done to the ice",
        ICE = "Bits and pieces of my heart.",
        ROCKS = "Throwing these at things that feel pain is fun.",
        ROOK = "O-Oh, I don't want that running meow over.",
        ROPE = "My old friends loved hanging around.",
        ROTTENEGG = "Nyuck, smells like rotten eggs in here, oh wait...",
        ROYAL_JELLY = "Bee cream, wonder what I can even do with this.",
        JELLYBEAN = "Jelly beans are just, superior beans, really.",
        SADDLE_BASIC = "For riding boofs, or whatever.",
        SADDLE_RACE = "Helps get from A to D, skipping B and C.",
        SADDLE_WAR = "Cool looking chair, I guess.",
        SADDLEHORN = "I need this to get my saddles back.",
        SALTLICK = "Nyack, too salty.",
        BRUSH = "No one ever brushed meow, I hate this world.",
		SANITYROCK =
		{
			ACTIVE = "Huh, is it supposed to look like that.",
			INACTIVE = "Must be a matter of perspective.",
		},
		SAPLING =
		{
			BURNING = "Oh whatever.",
			WITHERED = "Heat sucks, even the plants agree.",
			GENERIC = "Can get some sticks to play with, I guess.",
			PICKED = "Hurry up and grooow.",
			DISEASED = "What has brought this blight upon my world?", --removed
			DISEASING = "Looks a little off, if you ask meow.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "They hung him on a cross.",
			BURNING = "It doesn't feel pain, I hope.",
			BURNT = "Well he's a burnt man now.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "Can't sculpt out of nothing, just nyot how it works.",
			BLOCK = "Piece by piece...",
			SCULPTURE = "Eh, good enough.",
			BURNT = "No fun allowed.",
   		},
        SCULPTURE_KNIGHTHEAD = "Whatever that chunk of meowrble is supposed to be.",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "What is this even supposed to be.",
			UNCOVERED = "Oh, it looks worse now.",
			FINISHED = "Oh it's one of these...",
			READY = "You can tell someone's not happy in there.",
		},
        SCULPTURE_BISHOPHEAD = "Whatever that chunk of meowrble is supposed to be.",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "Eh, some kind of vase, or whatever.",
			UNCOVERED = "Just head to go ahead and break it.",
			FINISHED = "Oh it's one of these...",
			READY = "You can tell someone's not happy in there.",
		},
        SCULPTURE_ROOKNOSE = "Whatever that chunk of meowrble is supposed to be.",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "Whoever slapped this together has no talent at all.",
			UNCOVERED = "Oh, looks slightly familiar now.",
			FINISHED = "Oh it's one of these...",
			READY = "You can tell someone's not happy in there.",
		},
        GARGOYLE_HOUND = "Oh you poor thing, if only anyaone cared about you.",
        GARGOYLE_WEREPIG = "Oh you poor thing, if only anyaone cared about you",
		SEEDS = "Eh, i'm not a bird.",
		SEEDS_COOKED = "Cooked bird food",
		SEWING_KIT = "Patch up for clothes and such.",
		SEWING_TAPE = "Getting this stuff stuck to meow is agonizing.",
		SHOVEL = "I enjoy digging graves, it calms meow down.",
		SILK = "Silky smooth, hmph, nyaice.",
		SKELETON = "Looks like they've found the way out.",
		SCORCHED_SKELETON = "This one didn't go out pretty.",
		SKULLCHEST = "That chest is calling to meow.", --removed
		SMALLBIRD =
		{
			GENERIC = "Bet it tastes really good.",
			HUNGRY = "Hi hungry, I'm Welinya.",
			STARVING = "Well find something to eat then.",
			SLEEPING = "It finally shut up.",
		},
		SMALLMEAT = "I'll need a bigger piece of myeat to keep afloat.",
		SMALLMEAT_DRIED = "Such a nice texture...",
		SPAT = "No idea what that is, but I don't think it's friendly.",
		SPEAR = "I like being upfront from time to time, too.",
		SPEAR_WATHGRITHR = "It's a finer crafted spear.",
		WATHGRITHRHAT = "Those wings don't let you fly, lame.",
		SPIDER =
		{
			DEAD = "Hah, die.",
			GENERIC = "Don't get pissy with meow, cupcake.",
			SLEEPING = "It's curled up into a ball.",
		},
		SPIDERDEN = "Must be claustrophobic in there, not that I have a reason to care.",
		SPIDEREGGSACK = "Slimy, squishy, wet, spider balls. Great.",
		SPIDERGLAND = "Some kind of rubber thingy.",
		SPIDERHAT = "They're so easy to control.",
		SPIDERQUEEN = "Behead the queen.",
		SPIDER_WARRIOR =
		{
			DEAD = "Hah, die.",
			GENERIC = "What's with the clown makeup, cupcake.",
			SLEEPING = "They're on high alert even asleep.",
		},
		SPOILED_FOOD = "No use out of this nyow.",
        STAGEHAND =
        {
			AWAKE = "What in the hell is that nyow.",
			HIDING = "A real threatening table.",
        },
        STATUE_MARBLE =
        {
            GENERIC = "Come on, let's bring it down.",
            TYPE1 = "Breaking fancy decor is kinda calming.",
            TYPE2 = "And who's this nyow.",
            TYPE3 = "Nyack, I was about to byaite into that bird.", --bird bath type statue
        },
		STATUEHARP = "A statue or whatever.",
		STATUEMAXWELL = "Is he a big shot around here, or something.",
		STEELWOOL = "Some real stubborn wool.",
		STINGER = "Yet my heart still stings.",
		STRAWHAT = "I'd chew on this hat, but that'd ruin it.",
		STUFFEDEGGPLANT = "It's full of... uhh, eggs?",
		SWEATERVEST = "Too friendly looking for meow.",
		REFLECTIVEVEST = "Not the most comfortable, but eh.",
		HAWAIIANSHIRT = "I'm not getting anyawhere close to the ocean anyaway.",
		TAFFY = "Chewy, sugary, sweet. Nyuck, it makes meow feel happiness.",
		TALLBIRD = "I want long legs like that too.",
		TALLBIRDEGG = "Wonder what those babies taste like.",
		TALLBIRDEGG_COOKED = "It wasn't alive enough to feel pain anyaway.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Hey, hey, I can't eat it frozen like that.",
			GENERIC = "What the- it's hatching.",
			HOT = "Alright alright, let it cook now.",
			LONG = "It'll be a while before anyathing comes outta that.",
			SHORT = "Come out, cupcake. Ain't nothing bad gonna happen to you.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "I'm really tempted to eat that child.",
			PICKED = "Mhmmm, I don't think I can lay eggs.",
		},
		TEENBIRD =
		{
			GENERIC = "Tender age in bloom.",
			HUNGRY = "Keeping you fed isn't on my list of priorities.",
			STARVING = "I feel like it'll try to overthrow my authority at this rate.",
			SLEEPING = "All their staring was making meow uncomfortable.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "It's alive!", --single player
			GENERIC = "My beautiful machine is in pieces!", --single player
			LOCKED = "Now to turn it on.", --single player
			PARTIAL = "It is still incomplete.", --single player
		},
		TELEPORTATO_BOX = "This is a box full of sadness and woe.", --single player
		TELEPORTATO_CRANK = "This is used to agitate the humors.", --single player
		TELEPORTATO_POTATO = "The gears in here are so small they turn the fabric of reality.", --single player
		TELEPORTATO_RING = "This is the quantum field guard band.", --single player
		TELESTAFF = "It's amazing how boring I find these gem sticks.",
		TENT =
		{
			GENERIC = "Being asleep is the next best thing to being dead.",
			BURNT = "Sucks to be that tent, I guess.",
		},
		SIESTAHUT =
		{
			GENERIC = "I could go for a dirt nap.",
			BURNT = "I don't think it'll do much now.",
		},
		TENTACLE = "I was told to stay away from these things specifically.",
		TENTACLESPIKE = "Oh cool, I can whack stuff around with, uhh... that.",
		TENTACLESPOTS = "Reproductive glands.",
		TENTACLE_PILLAR = "Jeez, how much bigger can they get.",
        TENTACLE_PILLAR_HOLE = "Escalator to hell.",
		TENTACLE_PILLAR_ARM = "Hisss- slimy and nyucky.",
		TENTACLE_GARDEN = "Odd one's out.",
		TOPHAT = "It's for fancy stuck-up jerks.",
		TORCH = "To light up my heart and scare away the dark.",
		TRANSISTOR = "Some kind of thingy that does... things, or something.",
		TRAP = "That's a dumb trap but like, I won't judge.",
		TRAP_TEETH = "An underhanded tactic.",
		TRAP_TEETH_MAXWELL = "I'm... sure I had my reasons when I placed this.", --single player
		TREASURECHEST =
		{
			GENERIC = "A place to dump my garbage.",
			BURNT = "Eh, my garbage burnt along with it.",
		},
		TREASURECHEST_TRAP = "It's as if it wants meow to open it, curious.",
		SACRED_CHEST =
		{
			GENERIC = "Dusty, jeez.",
			LOCKED = "Let meow be judged.",
		},
		TREECLUMP = "I can't get through there.", --removed

		TRINKET_1 = "Funky balls.", --Melted Marbles
		TRINKET_2 = "Hey, it doesn't even work.", --Fake Kazoo
		TRINKET_3 = "A maze with no exit.", --Gord's Knot
		TRINKET_4 = "Ughhh, it wants to kill meow, I just know it.", --Gnome
		TRINKET_5 = "Shouldn't you be in space, or something.", --Toy Rocketship
		TRINKET_6 = "Mhmmmrr, wires. Chewy.", --Frazzled Wires
		TRINKET_7 = "I don't get how this is supposed to work.", --Ball and Cup
		TRINKET_8 = "Smells awful, the hell.", --Rubber Bung
		TRINKET_9 = "Ugh, that's not how you make clothes.", --Mismatched Buttons
		TRINKET_10 = "Sucky human teeth.", --Dentures
		TRINKET_11 = "Mrhmm, yes yes, I agree.", --Lying Robot
		TRINKET_12 = "Nyuck, that's some gross stuff.", --Dessicated Tentacle
		TRINKET_13 = "ughhh, it wants to kill meow, I just know it..", --Gnomette
		TRINKET_14 = "It's not gonna work if it's cracked like that.", --Leaky Teacup
		TRINKET_15 = "It's that black and white game or something.", --Pawn
		TRINKET_16 = "It's that black and white game or something.", --Pawn
		TRINKET_17 = "Who the HELL bent this.", --Bent Spork
		TRINKET_18 = "It's a lot like meow, terrible.", --Trojan Horse
		TRINKET_19 = "It doesn't even strike the balance.", --Unbalanced Top
		TRINKET_20 = "Scratchyyy~", --Backscratcher
		TRINKET_21 = "I wish I had a wife to beat with this.", --Egg Beater
		TRINKET_22 = "Makes meow feel alive, same typical offering.", --Frayed Yarn
		TRINKET_23 = "Shoes don't have horns, the nyack.", --Shoehorn
		TRINKET_24 = "You're telling meow this jar is made out of a cat???", --Lucky Cat Jar
		TRINKET_25 = "Oh wow, smells awful.", --Air Unfreshener
		TRINKET_26 = "How far we've advanced.", --Potato Cup
		TRINKET_27 = "It's for hanging, clothes.", --Coat Hanger
		TRINKET_28 = "It's that black and white game or something.", --Rook
        TRINKET_29 = "It's that black and white game or something.", --Rook
        TRINKET_30 = "It's that black and white game or something.", --Knight
        TRINKET_31 = "It's that black and white game or something.", --Knight
        TRINKET_32 = "Is this supposed to do something magical, or what.", --Cubic Zirconia Ball
        TRINKET_33 = "Spider? I'm good.", --Spider Ring
        TRINKET_34 = "Well at least it's not a cat paw.", --Monkey Paw
        TRINKET_35 = "I'd drink whatever is in there and hopefully die.", --Empty Elixir
        TRINKET_36 = "Already got these.", --Faux fangs
        TRINKET_37 = "The stakes were way too high.", --Broken Stake
        TRINKET_38 = "Huh, why do they make everything look smaller.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I love my fingerless gloves already, thanks.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Is this the snail that wants to kill meow.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "Some gooey stuff on it.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Just a toy, for kids, and the like.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "Hopefully it's harmless.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "Looks like it's broken, or something.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "I can hear faint whispers coming from it.", -- Odd Radio ONI trinket
        TRINKET_46 = "Whatever this is.", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "I'm already haunted as is.",
        LOST_TOY_2  = "I'm already haunted as is.",
        LOST_TOY_7  = "I'm already haunted as is.",
        LOST_TOY_10 = "I'm already haunted as is.",
        LOST_TOY_11 = "I'm already haunted as is.",
        LOST_TOY_14 = "I'm already haunted as is.",
        LOST_TOY_18 = "I'm already haunted as is.",
        LOST_TOY_19 = "I'm already haunted as is.",
        LOST_TOY_42 = "I'm already haunted as is.",
        LOST_TOY_43 = "I'm already haunted as is.",

        HALLOWEENCANDY_1 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_2 = "Nyone of these bring joy anyamore",
        HALLOWEENCANDY_3 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_4 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_5 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_6 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_7 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_8 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_9 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_10 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_11 = "Nyone of these bring joy anyamore.",
        HALLOWEENCANDY_12 = "Nyone of these bring joy anyamore.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Nyone of these bring joy anyamore.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Nyone of these bring joy anyamore.", --Hot Lava pepper candy
        CANDYBAG = "It's a bottomless pit for diabetes.",

		HALLOWEEN_ORNAMENT_1 = "Gloomy.",
		HALLOWEEN_ORNAMENT_2 = "Gloomy.",
		HALLOWEEN_ORNAMENT_3 = "Gloomy.",
		HALLOWEEN_ORNAMENT_4 = "Gloomy.",
		HALLOWEEN_ORNAMENT_5 = "Gloomy.",
		HALLOWEEN_ORNAMENT_6 = "Gloomy.",

		HALLOWEENPOTION_DRINKS_WEAK = "Packs no punch.",
		HALLOWEENPOTION_DRINKS_POTENT = "This stuff hits myuch harder.",
        HALLOWEENPOTION_BRAVERY = "Bravery? It's just a facade.",
		HALLOWEENPOTION_MOON = "It meoowntates stuff.",
		HALLOWEENPOTION_FIRE_FX = "Burn it, burn it all.",
		MADSCIENCE_LAB = "I'm already mad.",
		LIVINGTREE_ROOT = "I'll grow a terrible nobody.",
		LIVINGTREE_SAPLING = "It has taken roots.",

        DRAGONHEADHAT = "A-head of the pack.",
        DRAGONBODYHAT = "I'd rather not get inbetween the two sides.",
        DRAGONTAILHAT = "I don't deserve to be anyawhere but behind.",
        PERDSHRINE =
        {
            GENERIC = "Useless offering to the beast.",
            EMPTY = "What does it want from meow.",
            BURNT = "It's just garbage now.",
        },
        REDLANTERN = "Red light....",
        LUCKY_GOLDNUGGET = "It's gold, meownus the useful applications.",
        FIRECRACKERS = "The cracks begin to show here.",
        PERDFAN = "It brushes meow with a terrible stench.",
        REDPOUCH = "Something's neatly wrapped in there.",
        WARGSHRINE =
        {
            GENERIC = "Useless offering to the beast.",
            EMPTY = "What does it want from meow.",
            BURNT = "It's just garbage now.",
        },
        CLAYWARG =
        {
        	GENERIC = "These dogs are really getting on my last nerve.",
        	STATUE = "Guh, it looks ridiculous.",
        },
        CLAYHOUND =
        {
        	GENERIC = "It's alive, not for long though.",
        	STATUE = "Ugly mutt.",
        },
        HOUNDWHISTLE = "I'm not looking to befriend anya of those ugly dogs anya time soon.",
        CHESSPIECE_CLAYHOUND = "Blow it up or whatever.",
        CHESSPIECE_CLAYWARG = "Ugh, dumb and ugly.",

		PIGSHRINE =
		{
            GENERIC = "Useless offering to the beast.",
            EMPTY = "What does it want from meow.",
            BURNT = "It's just garbage now.",
		},
		PIG_TOKEN = "This doesn't look like something these pigs would make.",
		PIG_COIN = "What's there to spend on even.",
		YOTP_FOOD1 = "Eh, I'll try it.",
		YOTP_FOOD2 = "Better than nothing.",
		YOTP_FOOD3 = "Why not, I guess.",

		PIGELITE1 = "A higher up pig.", --BLUE
		PIGELITE2 = "A higher up pig.", --RED
		PIGELITE3 = "A higher up pig.", --WHITE
		PIGELITE4 = "A higher up pig.", --GREEN

		PIGELITEFIGHTER1 = "A higher up pig.", --BLUE
		PIGELITEFIGHTER2 = "A higher up pig.", --RED
		PIGELITEFIGHTER3 = "A higher up pig.", --WHITE
		PIGELITEFIGHTER4 = "A higher up pig.", --GREEN

		CARRAT_GHOSTRACER = "Your spotlight has already passed.",

        YOTC_CARRAT_RACE_START = "Am I really that bored.",
        YOTC_CARRAT_RACE_CHECKPOINT = "This should help them get around, I guess.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "Such frivolity.",
            BURNT = "I've no use for it anyamore.",
            I_WON = "Huh, whatever.",
            SOMEONE_ELSE_WON = "Hmph, congrats {winner}.",
        },
--i'll finish
		YOTC_CARRAT_RACE_START_ITEM = "Might as well start things off with a bang. Or a gong.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "The dumb little creatures would be lost without them.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "End of the line, pal.",

		YOTC_SEEDPACKET = "I will reap what I sow.",
		YOTC_SEEDPACKET_RARE = "This should yield a higher quality crop.",

		MINIBOATLANTERN = "It's oddly beautiful.",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "It's ready.",
            EMPTY = "It requires an offering.",
            BURNT = "It's of no use to meow like this.",
        },

        YOTC_CARRAT_GYM_DIRECTION =
        {
            GENERIC = "An underling must be able to follow directions.",
            RAT = "The training seems to be progressing well.",
            BURNT = "Useless.",
        },
        YOTC_CARRAT_GYM_SPEED =
        {
            GENERIC = "Athletics were never my strong suit.",
            RAT = "It's rather amusing to watch it scurry.",
            BURNT = "Useless.",
        },
        YOTC_CARRAT_GYM_REACTION =
        {
            GENERIC = "You never know what might pop up on the race track.",
            RAT = "Hm. I'm getting a sudden craving for popcorn...",
            BURNT = "Useless.",
        },
        YOTC_CARRAT_GYM_STAMINA =
        {
            GENERIC = "An exercise machine... the most dastardly of inventions.",
            RAT = "You will thank meow for making you stronger.",
            BURNT = "Useless.",
        },

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "My Carrat requires some direction.",
        YOTC_CARRAT_GYM_SPEED_ITEM = "I should construct this, posthaste.",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "I tire of lugging this around.",
        YOTC_CARRAT_GYM_REACTION_ITEM = "It would be prudent to place this somewhere.",

        YOTC_CARRAT_SCALE_ITEM = "It seems some assembly is required.",
        YOTC_CARRAT_SCALE =
        {
            GENERIC = "I will only accept the finest Carrat.",
            CARRAT = "A disappointing performance.",
            CARRAT_GOOD = "Excellent. You've done well.",
            BURNT = "It's worthless now.",
        },

        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "Let's get on with it then.",
            EMPTY = "It will require an offering.",
            BURNT = "Pity.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "How ridiculous.",
            OCCUPIED = "I suppose I'll have to try to make this creature less homely.",
            BURNT = "What a shyame.",
        },
        BEEFALO_GROOMER_ITEM = "Do I look like a common construction worker? Oh very well...",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "What do you have in store for meow?",
            EMPTY = "It requires an offering.",
            BURNT = "A pity.",
        },
-- this shit later
        NIGHTCAPHAT = "I'm not going to, you won't make meow.",

        YOTR_FOOD1 = "It better be made out of real rabbits.",
        YOTR_FOOD2 = "This tastes like bunny puff.",
        YOTR_FOOD3 = "That fruit is not getting outta there anyatime soon.",
        YOTR_FOOD4 = "Guh, it's so sticky.",

        YOTR_TOKEN = "A duel, one on one?",

        COZY_BUNNYMAN = "Looks like an utter loser.",

        HANDPILLOW_BEEFALOWOOL = "A beefalo died for this.",
        HANDPILLOW_KELP = "I'd rather eat it than sleep on it.",
        HANDPILLOW_PETALS = "Petals, really now?",
        HANDPILLOW_STEELWOOL = "Nyaahhhh~ so scratchy.",

        BODYPILLOW_BEEFALOWOOL = "A beefalo died for this.",
        BODYPILLOW_KELP = "I'd rather eat it than sleep on it.",
        BODYPILLOW_PETALS = "Petals, really now?",
        BODYPILLOW_STEELWOOL = "Nyaahhhh~ so scratchy.",

		BISHOP_CHARGE_HIT = "NYA-ouch.",
		TRUNKVEST_SUMMER = "I prefer my clothing black.",
		TRUNKVEST_WINTER = "Gray, hmph... close enough.",
		TRUNK_COOKED = "Equally as yummy as it is yucky.",
		TRUNK_SUMMER = "It's slimy an all, sheesh.",
		TRUNK_WINTER = "It's a lot thicker than usual.",
		TUMBLEWEED = "This fleeting feeling...",
		TURKEYDINNER = "That's a dinner and a half.",
		TWIGS = "Sticks and stones may break my bones.",
		UMBRELLA = "I hate the rain, to no ones surprise.",
		GRASS_UMBRELLA = "Eh, it won't help meow at all.",
		UNIMPLEMENTED = "What the fuck is this.",
		WAFFLES = "I'm waffled at the though of this.",
		WALL_HAY =
		{
			GENERIC = "That's not holding anyathing together for long.",
			BURNT = "Oh really now.",
		},
		WALL_HAY_ITEM = "They fit in my pocket, because I told them to.",
		WALL_STONE = "This rock does not roll.",
		WALL_STONE_ITEM = "They fit in my pocket, because I told them to.",
		WALL_RUINS = "The wall is old, but it's still holding together....",
		WALL_RUINS_ITEM = "They fit in my pocket, because I told them to.",
		WALL_WOOD =
		{
			GENERIC = "Oh, I could impale myeowself on that.",
			BURNT = "Wood and fire aren't best friends either.",
		},
		WALL_WOOD_ITEM = "They fit in my pocket, because I told them to.",
		WALL_MOONROCK = "These looks very sturdy.",
		WALL_MOONROCK_ITEM = "They fit in my pocket, because I told them to.",
		WALL_DREADSTONE = "It's pretty pretty.",
		WALL_DREADSTONE_ITEM = "They fit in my pocket, because I told them to.",
		FENCE = "Fencing keeps the animals in line.",
        FENCE_ITEM = "Pocket fence.",
        FENCE_GATE = "That's the gateway to nowhere.",
        FENCE_GATE_ITEM = "Pocket gate.",
		WALRUS = "Shoot meow again.",
		WALRUSHAT = "I'm scared of growing old enough to find this fashionable.",
		WALRUS_CAMP =
		{
			EMPTY = "Someone's been here before.",
			GENERIC = "Should I knock on the door, or knock the door down.",
		},
		WALRUS_TUSK = "He's got these sharp tusks and he opts to just spit garbage at meow.",
		WARDROBE =
		{
			GENERIC = "All my skeletons are there.",
            BURNING = "Skeletons don't burn that easy.",
			BURNT = "There's burnt aprons here.",
		},
		WARG = "Always outnumbered, never outgunned.",
        WARGLET = "Let meow put you out of your horrible existence.",

		WASPHIVE = "Stingy, like meow.",
		WATERBALLOON = "It's filled with evil.",
		WATERMELON = "Mmhmmrr, meowlon.",
		WATERMELON_COOKED = "Meowlonomaniac.",
		WATERMELONHAT = "Woah, this is terrible.",
		WAXWELLJOURNAL =
		{
			GENERIC = "How cliche.",
			NEEDSFUEL = "Don't we all need fuel.",
		},
		WETGOOP = "What a mess.",
        WHIP = "Cracks and crackles like my wretched body.",
		WINTERHAT = "It keeps meow warm, on the outside....",
		WINTEROMETER =
		{
			GENERIC = "I seem less useless when I stand beside it.",
			BURNT = "Ugh, whatever.",
		},

        WINTER_TREE =
        {
            BURNT = "What a shyame.",
            BURNING = "Dyamn, nice light show.",
            CANDECORATE = "NO, NO IT DOES NOT BRING MEOW ANYA JOY, NYUCK OFF.",
            YOUNG = "You still have time to grow, cupcake.",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "Joy...?",
            BURNT = "What a shyame.",
		},
        WINTER_ORNAMENT = "Hmph, I'm jealous of these people, It's so easy to make them happy.",
        WINTER_ORNAMENTLIGHT = "Hmph, I'm jealous of these people, It's so easy to make them happy.",
        WINTER_ORNAMENTBOSS = "Hmph, I'm jealous of these people, It's so easy to make them happy.",
		WINTER_ORNAMENTFORGE = "Hmph, I'm jealous of these people, It's so easy to make them happy.",
		WINTER_ORNAMENTGORGE = "Hmph, I'm jealous of these people, It's so easy to make them happy.",

        WINTER_FOOD1 = "So cheery.....", --gingerbread cookie
        WINTER_FOOD2 = "So cheery.....", --sugar cookie
        WINTER_FOOD3 = "So cheery.....", --candy cane
        WINTER_FOOD4 = "So cheery.....", --fruitcake
        WINTER_FOOD5 = "So cheery.....", --yule log cake
        WINTER_FOOD6 = "So cheery.....", --plum pudding
        WINTER_FOOD7 = "So cheery.....", --apple cider
        WINTER_FOOD8 = "So cheery.....", --hot cocoa
        WINTER_FOOD9 = "So cheery.....", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "For making festive dishes.",
			COOKING = "Hurry up, will you.",
			ALMOST_DONE_COOKING = "Waste of time...",
			DISH_READY = "Meow I..?",
		},
		BERRYSAUCE = "Lost in the sauce.",
		BIBINGKA = "What's with this ugly texture on it.",
		CABBAGEROLLS = "It's a bunch of myeat rolled in leaves.",
		FESTIVEFISH = "What makes you festive, fish?",
		GRAVY = "Groovy.",
		LATKES = "Eh, it doesn't look too bad.",
		LUTEFISK = "Smells nice, I guess.",
		MULLEDDRINK = "It's supposed to make meow warm, but it doesn't work...",
		PANETTONE = "It makes meow angry for no particular reason.",
		PAVLOVA = "Well, might as well dig into it.",
		PICKLEDHERRING = "I don't deserve to be picky.",
		POLISHCOOKIE = "Hmhp, cookies.",
		PUMPKINPIE = "Nobody will notice if I take a slice.",
		ROASTTURKEY = "Roasted to hell and back.",
		STUFFING = "It fills my stomach, but not my heart.",
		SWEETPOTATO = "\"Sweet\" potato.",
		TAMALES = "Oh, these pack a punch.",
		TOURTIERE = "Looks alright, i guess.",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "Such a waste of time.",
			HAS_FOOD = "Do I really have to share this?",
			WRONG_TYPE = "Wrong place, wrong time.",
			BURNT = "It always ends the same.",
		},

		GINGERBREADWARG = "It's eat or be eaten.",
		GINGERBREADHOUSE = "Never make your housing look tasty, that defeats the point.",
		GINGERBREADPIG = "Is it scared of meow.",
		CRUMBS = "How poetic.",
		WINTERSFEASTFUEL = "There's nothing to be cheery about.",

        KLAUS = "Those chains... so cool.",
        KLAUS_SACK = "I admit, I'm curious. I'm also a cat, so like...",
		KLAUSSACKKEY = "The secrets shall be laid bare.",
		WORMHOLE =
		{
			GENERIC = "Ugh, it's squishy.",
			OPEN = "Seeing things I'd rather not be seeing right now.",
		},
		WORMHOLE_LIMITED = "It looks ill.",
		ACCOMPLISHMENT_SHRINE = "Even They couldn't build something so devious.", --single player
		LIVINGTREE = "I'd give you a reason to smile, but there isn't one.",
		ICESTAFF = "Iced to meet you.",
		REVIVER = "A fake heart, because you're all fake anyaway...",
		SHADOWHEART = "Oh, someowne stole my heart.",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "Some miserable looking bug people.",
			LINE_2 = "I can guess what happened here.",
			LINE_3 = "Everything is enroached in darkness.",
			LINE_4 = "They're all ripped out of their bodies.",
			LINE_5 = "A massive city of some kind...",
		},
        ATRIUM_STATUE = "How sombre looking.",
        ATRIUM_LIGHT =
        {
			ON = "The darkness sure is good at powering light.",
			OFF = "It's powerless.",
		},
        ATRIUM_GATE =
        {
			ON = "If my future meow hasn't stopped meow yet, what's the worst that can happen.",
			OFF = "Looks like I'm missing a key or something.",
			CHARGING = "Everyone wants to be the hero of their own story.",
			DESTABILIZING = "On a second thought, maybe I should get out of here.",
			COOLDOWN = "Looks like it's still broke after that last time.",
        },
        ATRIUM_KEY = "Important, I guess.",
		LIFEINJECTOR = "Makes meow numb, and brings my knees to earth.",
		SKELETON_PLAYER =
		{
			MALE = "%s met his untimely demise to %s.",
			FEMALE = "Dyamn, %s. Mind the %s next time.",
			ROBOT = "Well, death comes for us all, %s. Or %s, in this case.",
			DEFAULT = "It's inevitable, %s. But playing with that %s was your last mistake.",
		},
--fallback to speech_wilson.lua 		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
--fallback to speech_wilson.lua 		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
--fallback to speech_wilson.lua 		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		ROCK_MOON = "This isn't cheese, I was lied to.",
		MOONROCKNUGGET = "Why would she lie to meow, I'm sadder now.",
		MOONROCKCRATER = "It's a rock with a nyacking hole in the middle.",
		MOONROCKSEED = "Don't really care about knowledge, honestly.",

        REDMOONEYE = "Can notice that shine from anyawhere.",
        PURPLEMOONEYE = "Can notice that shine from anyawhere.",
        GREENMOONEYE = "Can notice that shine from anyawhere.",
        ORANGEMOONEYE = "Can notice that shine from anyawhere.",
        YELLOWMOONEYE = "Can notice that shine from anyawhere.",
        BLUEMOONEYE = "Can notice that shine from anyawhere.",
-- Do this shit
        --Arena Event
        LAVAARENA_BOARLORD = "You seem severely deluded, good sir.",
        BOARRIOR = "Well he's certainly no slouch.",
        BOARON = "Begone, swine.",
        PEGHOOK = "I should like to avoid a pinch from that, I think.",
        TRAILS = "What a brute!",
        TURTILLUS = "He's rather thick-headed.",
        SNAPPER = "I don't fear you, scoundrel.",
		RHINODRILL = "Brutish grotesquerie.",
		BEETLETAUR = "Back to the dungeons with you!",

        LAVAARENA_PORTAL =
        {
            ON = "Let us end this chapter of our journey.",
            GENERIC = "Meddling with it will only cause further trouble.",
        },
        LAVAARENA_KEYHOLE = "A key is key.",
		LAVAARENA_KEYHOLE_FULL = "Right as rain.",
        LAVAARENA_BATTLESTANDARD = "We must destroy that Battle Standard.",
        LAVAARENA_SPAWNER = "It's a one-way portal.",

        HEALINGSTAFF = "I could be persuaded to dabble in white magicks.",
        FIREBALLSTAFF = "A staff after my own heart!",
        HAMMER_MJOLNIR = "I would never resort to something so brutish.",
        SPEAR_GUNGNIR = "I would never stoop to such things.",
        BLOWDART_LAVA = "That is not my style.",
        BLOWDART_LAVA2 = "I'm no blowhard.",
        LAVAARENA_LUCY = "I have no desire to use that.",
        WEBBER_SPIDER_MINION = "Disgusting.",
        BOOK_FOSSIL = "I could stop a fiend in its tracks with this.",
		LAVAARENA_BERNIE = "That thing's still shambling about, I see.",
		SPEAR_LANCE = "How churlish.",
		BOOK_ELEMENTAL = "The words within evoke an unknown force.",
		LAVAARENA_ELEMENTAL = "You shall serve us.",

   		LAVAARENA_ARMORLIGHT = "It is nearly useless.",
		LAVAARENA_ARMORLIGHTSPEED = "Swiftly useless.",
		LAVAARENA_ARMORMEDIUM = "It offers a serviceable amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "This was intended for someone physically-inclined.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "Decent protection that will enhance my power.",
		LAVAARENA_ARMORHEAVY = "Seems heavy.",
		LAVAARENA_ARMOREXTRAHEAVY = "Quite a clunky looking thing.",

		LAVAARENA_FEATHERCROWNHAT = "Horsefeathers.",
        LAVAARENA_HEALINGFLOWERHAT = "I could use the invigoration.",
        LAVAARENA_LIGHTDAMAGERHAT = "That is not suited to meow.",
        LAVAARENA_STRONGDAMAGERHAT = "I'd never wear such an undapper thing.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "A decent wreath, should I feel like healing.",
        LAVAARENA_EYECIRCLETHAT = "I must have it.",
        LAVAARENA_RECHARGERHAT = "It will quickly restore my powers.",
        LAVAARENA_HEALINGGARLANDHAT = "Self sufficiency in wreath form.",
        LAVAARENA_CROWNDAMAGERHAT = "You'd need a thick neck to wear such a thing.",

		LAVAARENA_ARMOR_HP = "A little extra armor never hurt.",

		LAVAARENA_FIREBOMB = "Not really my style.",
		LAVAARENA_HEAVYBLADE = "Too brutish for my tastes.",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "Best offer it something if we enjoy living.",
        	FULL = "I'm not sure how it draws magic from this.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "I do like a good statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Just useless rubble now.",

        QUAGMIRE_HOE = "This is so very beneath meow.",

        QUAGMIRE_TURNIP = "It's a big, bulbous turnip.",
        QUAGMIRE_TURNIP_COOKED = "Hardly improves the taste.",
        QUAGMIRE_TURNIP_SEEDS = "Am I supposed to plant these?",

        QUAGMIRE_GARLIC = "I suppose that's why there are no vampires around.",
        QUAGMIRE_GARLIC_COOKED = "I wonder if it still wards away the undead.",
        QUAGMIRE_GARLIC_SEEDS = "Am I supposed to plant these?",

        QUAGMIRE_ONION = "It's a pungent onion.",
        QUAGMIRE_ONION_COOKED = "Take that, onion.",
        QUAGMIRE_ONION_SEEDS = "Am I supposed to plant these?",

        QUAGMIRE_POTATO = "It is in the nightshade family, you know.",
        QUAGMIRE_POTATO_COOKED = "The potato may be eaten now.",
        QUAGMIRE_POTATO_SEEDS = "Am I supposed to plant these?",

        QUAGMIRE_TOMATO = "It's a red, red tomato.",
        QUAGMIRE_TOMATO_COOKED = "It's a red, red roasted tomato.",
        QUAGMIRE_TOMATO_SEEDS = "Am I supposed to plant these?",

        QUAGMIRE_FLOUR = "I suppose one could make baked goods with this.",
        QUAGMIRE_WHEAT = "This would be more useful as flour.",
        QUAGMIRE_WHEAT_SEEDS = "Am I supposed to plant these?",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "Am I supposed to plant these?",

        QUAGMIRE_ROTTEN_CROP = "Foul.",

		QUAGMIRE_SALMON = "Foul smelling, but delicious.",
		QUAGMIRE_SALMON_COOKED = "I do enjoy a good smoked salmon.",
		QUAGMIRE_CRABMEAT = "Ah, how refined.",
		QUAGMIRE_CRABMEAT_COOKED = "Perfect with a bit of butter.",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "A sickly sweet aroma wafts from its branches.",
			STUMP = "It won't produce sap now.",
			TAPPED_EMPTY = "It is filling. Ever so slowly.",
			TAPPED_READY = "The sap is ready for collection.",
			TAPPED_BUGS = "Well it's ruined now.",
			WOUNDED = "This tree has seen better days.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "Aromatic.",
			PICKED = "That's not growing back anyatime soon.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "That will spice things up.",
		QUAGMIRE_SPOTSPICE_GROUND = "Spicy.",
		QUAGMIRE_SAPBUCKET = "It's already sticky.",
		QUAGMIRE_SAP = "I would rather not get that on my gloves.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Ah. It's ready.",
			GENERIC = "Anya method to improve the food around here is welcome.",
		},

		QUAGMIRE_POND_SALT = "Brackish.",
		QUAGMIRE_SALT_RACK_ITEM = "Just useless sticks until we assemble it.",

		QUAGMIRE_SAFE =
		{
			GENERIC = "Now for some expert-level rummaging.",
			LOCKED = "I cannot open it.",
		},

		QUAGMIRE_KEY = "And they thought their things were safe.",
		QUAGMIRE_KEY_PARK = "This should open some doors.",
        QUAGMIRE_PORTAL_KEY = "Good. I can get out of here.",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "I could, perhaps, produce a makeshift garnish.",
			PICKED = "It's as hollow as this withered world.",
		},
		QUAGMIRE_MUSHROOMS = "Fungus has its uses.",
        QUAGMIRE_MEALINGSTONE = "This looks like it requires hard labor.",
		QUAGMIRE_PEBBLECRAB = "You can't hide from meow.",


		QUAGMIRE_RUBBLE_CARRIAGE = "Carriage carnage.",
        QUAGMIRE_RUBBLE_CLOCK = "Time's up.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "They didn't pray hard enough.",
        QUAGMIRE_RUBBLE_PUBDOOR = "If only it lead somewhere.",
        QUAGMIRE_RUBBLE_ROOF = "It's no longer over anyaone's head.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "A late clocktower.",
        QUAGMIRE_RUBBLE_BIKE = "A bicycle built askew.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's living there anyamore.",
            "Such destruction.",
            "Nothing like the decline of a civilization.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something has happened here.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Nobody has kept up with repairs.",
        QUAGMIRE_MERMHOUSE = "The stinking abode of those filthy fish creatures.",
        QUAGMIRE_SWAMPIG_HOUSE = "It could use renovations.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "It's been a long time since this stood properly.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "Charmed, I'm sure.",
            SLEEPING = "Fast asleep.",
        },
        QUAGMIRE_SWAMPIG = "Don't touch the suit.",

        QUAGMIRE_PORTAL = "Nobody listens to meow.",
        QUAGMIRE_SALTROCK = "It must be ground down before we use it.",
        QUAGMIRE_SALT = "Adding too much is an a-salt on the senses.",
        --food--
        QUAGMIRE_FOOD_BURNT = "I didn't cook that one.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "Let's see how the wyrm likes this.",
            MISMATCH = "Nope. It won't eat that.",
            MATCH = "This is exactly what the wyrm wants.",
            MATCH_BUT_SNACK = "Well, I suppose it will tide the wyrm over.",
        },

        QUAGMIRE_FERN = "Perhaps it has some flavor to it.",
        QUAGMIRE_FOLIAGE_COOKED = "I ought to mix it in with something else.",
        QUAGMIRE_COIN1 = "Well, well, well...",
        QUAGMIRE_COIN2 = "I'll have use for this.",
        QUAGMIRE_COIN3 = "On my way up in the world.",
        QUAGMIRE_COIN4 = "We may wyrm our way out of this predicament yet.",
        QUAGMIRE_GOATMILK = "My bones are naturally fragile, I'm afraid.",
        QUAGMIRE_SYRUP = "Cooking syrup. Of course.",
        QUAGMIRE_SAP_SPOILED = "Bittersweet.",
        QUAGMIRE_SEEDPACKET = "Instruments of toil.",

        QUAGMIRE_POT = "Magic could bring it to a boil faster, you know.",
        QUAGMIRE_POT_SMALL = "I shalln't let it speak with the kettle.",
        QUAGMIRE_POT_SYRUP = "I need to sweeten the pot.",
        QUAGMIRE_POT_HANGER = "I can put this to good use.",
        QUAGMIRE_POT_HANGER_ITEM = "Well I'M not setting it up.",
        QUAGMIRE_GRILL = "I believe I can barbeque.",
        QUAGMIRE_GRILL_ITEM = "No use to meow here.",
        QUAGMIRE_GRILL_SMALL = "I'd prefer a larger grill.",
        QUAGMIRE_GRILL_SMALL_ITEM = "At least it's portable.",
        QUAGMIRE_OVEN = "This makes things much more convenient.",
        QUAGMIRE_OVEN_ITEM = "It's an oven. For cooking.",
        QUAGMIRE_CASSEROLEDISH = "Homey.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "A tiny bit of domestication.",
        QUAGMIRE_PLATE_SILVER = "Suitable lavishness.",
        QUAGMIRE_BOWL_SILVER = "Refined dishware.",
--fallback to speech_wilson.lua         QUAGMIRE_CRATE = "Kitchen stuff.",

        QUAGMIRE_MERM_CART1 = "Let's see what they have today.", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "Well what do we have here?", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Some kind of gargoyle.",
        QUAGMIRE_PARK_ANGEL2 = "Well that's attractive.",
        QUAGMIRE_PARK_URN = "Yes yes, ashes to ashes and all that.",
        QUAGMIRE_PARK_OBELISK = "It's a monument to death.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Seems we've got it open.",
            LOCKED = "It needs a key.",
        },
        QUAGMIRE_PARKSPIKE = "Spikey. Like meow.",
        QUAGMIRE_CRABTRAP = "Dinner should be arriving any moment.",
        QUAGMIRE_TRADER_MERM = "Good day to you, sir.",
        QUAGMIRE_TRADER_MERM2 = "I tip my hat to you sir.",

        QUAGMIRE_GOATMUM = "May I peruse your wares, ma'am?",
        QUAGMIRE_GOATKID = "He has no future ahead of him. A shame.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "It is no more.",
            GENERIC = "How are birds getting in here?",
            SLEEPING = "Fast asleep.",
        },
        QUAGMIRE_LAMP_POST = "A touch of civility.",

        QUAGMIRE_BEEFALO = "It's seen better days.",
        QUAGMIRE_SLAUGHTERTOOL = "I don't mind getting my hands dirty with this.",

        QUAGMIRE_SAPLING = "I don't have time to watch twigs grow.",
        QUAGMIRE_BERRYBUSH = "Those are never growing back.",

        QUAGMIRE_ALTAR_STATUE2 = "Misdirected dedication.",
        QUAGMIRE_ALTAR_QUEEN = "A bit excessive...",
        QUAGMIRE_ALTAR_BOLLARD = "It's a post.",
        QUAGMIRE_ALTAR_IVY = "Creeping ivy.",

        QUAGMIRE_LAMP_SHORT = "A little civility.",
-- later
        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "It flings rocks and stones.",
        	OFF = "Nothing runs without motivation.",
        	BURNING = "Couldn't she make them fireproof or something.",
        	BURNT = "Like, who cares.",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "I don't like being the center of attention.",
        	OFF = "With the lights out, it's less dangerous.",
        	BURNING = "Couldn't she make them fireproof or something.",
        	BURNT = "Like, who cares.",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "How this works is so beyond meow, too bad I don't care.",
        	LOWPOWER = "It's low on motivation.",
        	OFF = "It can come back from the dead, unlike some of us.",
        	BURNING = "Couldn't she make them fireproof or something.",
        	BURNT = "Like, who cares.",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "Doesn't seem like the smartest use of gems.",
        	LOWPOWER = "It's low on motivation.",
        	OFF = "It can come back from the dead, unlike some of us.",
        	BURNING = "Couldn't she make them fireproof or something.",
        	BURNT = "Like, who cares.",
        },

        --Wormwood
        COMPOSTWRAP = "Uh, what the nyuck, plant boy.",
        ARMOR_BRAMBLE = "A familiar feeling from this.",
        TRAP_BRAMBLE = "Those look like they hurt.",

        BOATFRAGMENT03 = "In waves the ships have all sailed to the sea.",
        BOATFRAGMENT04 = "In waves the ships have all sailed to the sea.",
        BOATFRAGMENT05 = "In waves the ships have all sailed to the sea.",
		BOAT_LEAK = "Nyoooo- someone plug it plug it PLUG IT.",
        MAST = "Mast my life be so hard.",
        SEASTACK = "I can bump into that full speed and pray I die.",
        FISHINGNET = "Not my preferred way to ensnare enemies.", --unimplemented
        ANTCHOVIES = "ANTCHOVIEEEEEEEEEEEEEEEEEEES BAYBEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE", --unimplemented
        STEERINGWHEEL = "We're all just going to die if I'm in charge.",
        ANCHOR = "Hang the anchor over my nyeck.",
        BOATPATCH = "Painkillers for boats.",
        DRIFTWOOD_TREE =
        {
            BURNING = "Its life is burning before my eyes.",
            BURNT = "All that remains.",
            CHOPPED = "It's been severed.",
            GENERIC = "It drifts around aimlessly, like meow.",
        },

        DRIFTWOOD_LOG = "Light for a log, in weight and color.",

        MOON_TREE =
        {
            BURNING = "Its life is burning before my eyes.",
            BURNT = "All that remains.",
            CHOPPED = "It's been severed.",
            GENERIC = "They blossom in the meoown light.",
        },
		MOON_TREE_BLOSSOM = "Pretty and lively...",

        MOONBUTTERFLY =
        {
        	GENERIC = "How can it stay so carefree.",
        	HELD = "Let meow show you the meowsery of life.",
        },
		MOONBUTTERFLYWINGS = "I don't know what I'm gonna do with these.",
        MOONBUTTERFLY_SAPLING = "It wants to grow big, it wants to prove everyone wrong.",
        ROCK_AVOCADO_FRUIT = "That doesn't exactly look edible.",
        ROCK_AVOCADO_FRUIT_RIPE = "Well that's better, marginally.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Has a nice texture, I guess.",
        ROCK_AVOCADO_FRUIT_SPROUT = "It's got a little branch coming out.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "Dead inside.",
			WITHERED = "It looks so depressed.",
			GENERIC = "It's sole purpose is to make meow hooked on rock fruits.",
			PICKED = "Hey cupcake, you'll stay worthless if you don't make more fruit.",
			DISEASED = "It's ill.", --unimplemented
            DISEASING = "I think it's sick or something.", --unimplemented
			BURNING = "Ouch that.",
		},
        DEAD_SEA_BONES = "As expected.",
        HOTSPRING =
        {
        	GENERIC = "Better stay away from that.",
        	BOMBED = "Oh nyuck, this one's boiling.",
        	GLASS = "Hey as long as it's not water.",
			EMPTY = "Looks like a good spot to bury someowne.",
        },
        MOONGLASS = "Shattered, like my heart.",
        MOONGLASS_CHARGED = "It has power coming from it.",
        MOONGLASS_ROCK = "That's definitely not cheese.",
        BATHBOMB = "Smells nice though, don't it.",
        TRAP_STARFISH =
        {
            GENERIC = "It's trying to impersonate a star.",
            CLOSED = "It doesn't like being stepped on? Shyame.",
        },
        DUG_TRAP_STARFISH = "I can indirectly kill something with this.",
        SPIDER_MOON =
        {
        	GENERIC = "That sure looks painful.",
        	SLEEPING = "It will have to return to it's horrible existence some day.",
        	DEAD = "Phew, good.",
        },
        MOONSPIDERDEN = "Deformed beyond recognition.",
		FRUITDRAGON =
		{
			GENERIC = "There's a language barrier between us.",
			RIPE = "It looks kinda tasty.",
			SLEEPING = "I envy those who can dream.",
		},
        PUFFIN =
        {
            GENERIC = "Looks as edible as anya other bird.",
            HELD = "Mhmmrm, I haven't had water birds yet.",
            SLEEPING = "I envy those who can dream.",
        },

		MOONGLASSAXE = "So sharp, so pretty.",
		GLASSCUTTER = "This is so not cutting edge.",

        ICEBERG =
        {
            GENERIC = "How icy.", --unimplemented
            MELTED = "Maybe I can freeze it back up with my glare.", --unimplemented
        },
        ICEBERG_MELTED = "All watered down.", --unimplemented

        MINIFLARE = "The last thing I'd want is for everyone to know where I am.",
        MEGAFLARE = "Light up the sky.",

		MOON_FISSURE =
		{
			GENERIC = "Too bright for my eyes.",
			NOLIGHT = "I'm tempted to squeeze into that.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Totally not just putting random stuff together.",
            GENERIC = "Ugh, great, more voices.",
        },

        MOON_ALTAR_IDOL = "Fancy-looking thing.",
        MOON_ALTAR_GLASS = "I think it's trying to sell meow something.",
        MOON_ALTAR_SEED = "I hate when rocks talk to meow.",

        MOON_ALTAR_ROCK_IDOL = "Whatever is in there wants to not be in there.",
        MOON_ALTAR_ROCK_GLASS = "Whatever is in there wants to not be in there.",
        MOON_ALTAR_ROCK_SEED = "Whatever is in there wants to not be in there.",

        MOON_ALTAR_CROWN = "I'm not worthy of this kind of power.",
        MOON_ALTAR_COSMIC = "Has the time not come yet.",

        MOON_ALTAR_ASTRAL = "I'm getting a bad feeling, but I'm always feeling bad so... whatever.",
        MOON_ALTAR_ICON = "Where's this one supposed to be even.",
        MOON_ALTAR_WARD = "Probably imporant or whatever.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "If it was a good day I would be fishing.",
            BURNT = "Smells like burnt fish.",
        },
        BOAT_ITEM = "Cats don't float? They do now.",
        BOAT_GRASS_ITEM = "This is NOT safe.",
        STEERINGWHEEL_ITEM = "The cat spinner.",
        ANCHOR_ITEM = "It's important to have someone to hold you tight.",
        MAST_ITEM = "Ship stuff isn't my specialty at all.",
        MUTATEDHOUND =
        {
        	DEAD = "Put out of its meowsery.",
        	GENERIC = "I hope it's in terrible pain.",
        	SLEEPING = "One swift swing to put it out.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "It's dead. Good.",
			GENERIC = "O.M.G this is, like, the ugliest little bird i've seen in my life.",
			SLEEPING = "It'd be better off dead.",
		},
        CARRAT =
        {
        	DEAD = "Nyuck.",
        	GENERIC = "What the nyahk.",
        	HELD = "No more running around, cupcake.",
        	SLEEPING = "Wonder how manya diseases it has.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Slimy, wet. Green.",
            PICKED = "There's nothing to take off it.",
        },
		BULLKELP_ROOT = "A bit weird to use.",
        KELPHAT = "Nyahh, it'll get my hair wet.",
		KELP = "I need professional kelp.",
		KELP_COOKED = "Less nyucky now.",
		KELP_DRIED = "Tastes too vegan.",

		GESTALT = "Am I starting so see things again.",
        GESTALT_GUARD = "They don't look friendly one dyamn bit.",

		COOKIECUTTER = "As long as it's not trying to cut my flesh.",
		COOKIECUTTERSHELL = "That's like, a shell.",
		COOKIECUTTERHAT = "Cuter cutter hat.",
		SALTSTACK =
		{
			GENERIC = "Why does that rock look so white.",
			MINED_OUT = "Someone got to the bottom of this.",
			GROWING = "It grows back huh.",
		},
		SALTROCK = "All this salt will make meow salty.",
		SALTBOX = "Keeps stuff fresher, but honestly, I don't really care.",

		TACKLESTATION = "Born to fish.",
		TACKLESKETCH = "It holds secrets beyond my comprehension.",

        MALBATROSS = "DYAMN, that's a meal and a half.",
        MALBATROSS_FEATHER = "Blue feathers... so soft.",
        MALBATROSS_BEAK = "This is beak cinema.",
        MAST_MALBATROSS_ITEM = "Where mast I place this.",
        MAST_MALBATROSS = "This surely helps get nowhere faster.",
		MALBATROSS_FEATHERED_WEAVE = "Catch the wind, feel the flow.",

        GNARWAIL =
        {
            GENERIC = "Looking roughed up.",
            BROKENHORN = "It's got a broken soul, I mean horn.",
            FOLLOWER = "Looks like we're \"friends\" now.",
            BROKENHORN_FOLLOWER = "So uh... how'd you lose, that.",
        },
        GNARWAIL_HORN = "Could stab my heart out with this.",

        WALKINGPLANK = "I will NYOT.",
        WALKINGPLANK_GRASS = "I will NYOT.",
        OAR = "Ugh, it'll splash water all over meow.",
		OAR_DRIFTWOOD = "Too close to water for comfort.",

		OCEANFISHINGROD = "For the more stubborn types of fish.",
		OCEANFISHINGBOBBER_NONE = "To catch fyesh you must first think like a fyesh.",
        OCEANFISHINGBOBBER_BALL = "Ballin.",
        OCEANFISHINGBOBBER_OVAL = "Now that's tougher.",
		OCEANFISHINGBOBBER_CROW = "Almost fell for it myeowself.",
		OCEANFISHINGBOBBER_ROBIN = "Almost fell for it myeowself",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Almost fell for it myeowself",
		OCEANFISHINGBOBBER_CANARY = "Almost fell for it myeowself",
		OCEANFISHINGBOBBER_GOOSE = "Almost fell for it myeowself",
		OCEANFISHINGBOBBER_MALBATROSS = "Almost fell for it myeowself",

		OCEANFISHINGLURE_SPINNER_RED = "Fish are so simple to trick.",
		OCEANFISHINGLURE_SPINNER_GREEN = "Fish are so simple to trick.",
		OCEANFISHINGLURE_SPINNER_BLUE = "Fish are so simple to trick.",
		OCEANFISHINGLURE_SPOON_RED = "Fish are so simple to trick.",
		OCEANFISHINGLURE_SPOON_GREEN = "Fish are so simple to trick.",
		OCEANFISHINGLURE_SPOON_BLUE = "Fish are so simple to trick.",
		OCEANFISHINGLURE_HERMIT_RAIN = "I'm not going fishing during rain, that's dumb.",
		OCEANFISHINGLURE_HERMIT_SNOW = "All the snow will scare the fyesh away.",
		OCEANFISHINGLURE_HERMIT_DROWSY = "Uh-huh, should do the trick, I guess.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "For the fyesh with refined taste.",

		OCEANFISH_SMALL_1 = "Not much but, ugh. Can't you be bigger.",
		OCEANFISH_SMALL_2 = "Unlucky.",
		OCEANFISH_SMALL_3 = "I want more. Do I deserve more, though.",
		OCEANFISH_SMALL_4 = "You won't be so cold when I'll grill you.",
		OCEANFISH_SMALL_5 = "Ah, the smell of terrified fyesh.",
		OCEANFISH_SMALL_6 = "At least no nyan will laugh at your ugly face after I eat you.",
		OCEANFISH_SMALL_7 = "Am I being tricked, this looks like a plant.",
		OCEANFISH_SMALL_8 = "Now that's hot.",
        OCEANFISH_SMALL_9 = "What's up, cupcake.",

		OCEANFISH_MEDIUM_1 = "Hey lil' ugly.",
		OCEANFISH_MEDIUM_2 = "Looking mighty tasty.",
		OCEANFISH_MEDIUM_3 = "A bit on the spiky side, like meow.",
		OCEANFISH_MEDIUM_4 = "I don't discriminate, all fyesh is edible.",
		OCEANFISH_MEDIUM_5 = "Must've been made fun of as a child.",
		OCEANFISH_MEDIUM_6 = "Just look at your ugly lil' face.",
		OCEANFISH_MEDIUM_7 = "Just look at your ugly lil' face.",
		OCEANFISH_MEDIUM_8 = "What's with the cold attitude.",
        OCEANFISH_MEDIUM_9 = "Mhmmm, it's making meow hungry.",

		PONDFISH = "Ohh, looks like you came to the wrong side of the pond, cupcake.",
		PONDEEL = "Exotic.",

        FISHMEAT = "Nothing beats that.",
        FISHMEAT_COOKED = "So good~",
        FISHMEAT_SMALL = "Hey, at least it's fyesh.",
        FISHMEAT_SMALL_COOKED = "Hmhm, appetizer. HAHAHAHAHAHAHA.",
		SPOILED_FISH = "Nyuck, what a waste.",

		FISH_BOX = "Prison for my fyesh.",
        POCKET_SCALE = "On a dreadfulness scale from one to ten, my life is a ten.",

		TACKLECONTAINER = "I have too manya problems to tackle.",
		SUPERTACKLECONTAINER = "There's nothing super about it.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "Not all fyesh is built equal.",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nMhmmrm, smells fyeshy.",
			BURNING = "Good things never last.",
			BURNT = "Can't have anyathing in this world.",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nI feel slightly less miserable.",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nOne of the few things I'm not terrible at.",
		},

		OCEANFISHABLEFLOTSAM = "It had dreams and aspirations once.",

		CALIFORNIAROLL = "Mrmhm, smells good.",
		SEAFOODGUMBO = "Seeing sea food makes meow hungry.",
		SURFNTURF = "Stuff from the water just tastes better.",

        WOBSTER_SHELLER = "Those are some mighty claws.",
        WOBSTER_DEN = "They think they're safe in there.",
        WOBSTER_SHELLER_DEAD = "You got off easy.",
        WOBSTER_SHELLER_DEAD_COOKED = "Well it was already dead so.",

        LOBSTERBISQUE = "Almost too good to be true.",
        LOBSTERDINNER = "I'm so undeserving of such luxury.",

        WOBSTER_MOONGLASS = "This one is all messed up.",
        MOONGLASS_WOBSTER_DEN = "There's shard and stuff in it.",

		TRIDENT = "I can rock with this.",

		WINCH =
		{
			GENERIC = "It's meant for getting this I was never meant to get.",
			RETRIEVING_ITEM = "I guess it got something.",
			HOLDING_ITEM = "Hm, whatever that is.",
		},

        HERMITHOUSE = {
            GENERIC = "That's one pathetic shack.",
            BUILTUP = "Beats having no roof at all, I guess.",
        },

        SHELL_CLUSTER = "Ugh, what a waste of time.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Ughh, there's enough noises as is.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Quuuuuiiiieeeet.",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "Shut up shut up shut up.",
        },

        CHUM = "Chummer.",

        SUNKENCHEST =
        {
            GENERIC = "I feel like it'll unleash a curse on meow or something.",
            LOCKED = "Locked inside of itself, like my soul.",
        },

        HERMIT_BUNDLE = "I, uh... thanks? I guess.",
        HERMIT_BUNDLE_SHELLS = "What am I supposed to do with this garbage.",

        RESKIN_TOOL = "It changes things from the outside, but not the inside.",
        MOON_FISSURE_PLUGGED = "There's a way to plug just about anyathing.",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "Ugly, smelly. Disgusting.",
            "Ugly, smelly. Disgusting.",
        },
        WOBYSMALL =
        {
            "Wanna see how far I can kick it?",
            "Wanna see how far I can kick it?",
        },
		WALTERHAT = "This kid is too bright and cheery for this world.",
		SLINGSHOT = "Touch from afar.",
		SLINGSHOTAMMO_ROCK = "Bunch of pebbles and stuff.",
		SLINGSHOTAMMO_MARBLE = "Bunch of pebbles and stuff.",
		SLINGSHOTAMMO_THULECITE = "Bunch of pebbles and stuff.",
        SLINGSHOTAMMO_GOLD = "Bunch of pebbles and stuff.",
        SLINGSHOTAMMO_SLOW = "Bunch of pebbles and stuff.",
        SLINGSHOTAMMO_FREEZE = "Bunch of pebbles and stuff.",
		SLINGSHOTAMMO_POOP = "Bunch of pebbles and stuff.",
        PORTABLETENT = "I'm so tired... of everything.",
        PORTABLETENT_ITEM = "I don't even know how to set these up.",

        -- Wigfrid
        BATTLESONG_DURABILITY = "You don't wanna hear meow sing.",
        BATTLESONG_HEALTHGAIN = "You don't wanna hear meow sing.",
        BATTLESONG_SANITYGAIN = "You don't wanna hear meow sing.",
        BATTLESONG_SANITYAURA = "You don't wanna hear meow sing.",
        BATTLESONG_FIRERESISTANCE = "You don't wanna hear meow sing.",
        BATTLESONG_INSTANT_TAUNT = "There's just scribbles and swears in this.",
        BATTLESONG_INSTANT_PANIC = "There's just scribbles and swears in this.",

        -- Webber
        MUTATOR_WARRIOR = "That kid is so repulsive.",
        MUTATOR_DROPPER = "That kid is so repulsive.",
        MUTATOR_HIDER = "That kid is so repulsive.",
        MUTATOR_SPITTER = "That kid is so repulsive.",
        MUTATOR_MOON = "That kid is so repulsive.",
        MUTATOR_HEALER = "That kid is so repulsive.",
        SPIDER_WHISTLE = "That kid is so repulsive.",
        SPIDERDEN_BEDAZZLER = "Art's kinda calming, I guess.",
        SPIDER_HEALER = "Oh my god it's so ugly.",
        SPIDER_REPELLENT = "Do they hate the noise or what.",
        SPIDER_HEALER_ITEM = "Some spit on a leaf or something.",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "There's no way I'm drinking that.",
		GHOSTLYELIXIR_FASTREGEN = "There's no way I'm drinking that.",
		GHOSTLYELIXIR_SHIELD = "There's no way I'm drinking that.",
		GHOSTLYELIXIR_ATTACK = "There's no way I'm drinking that.",
		GHOSTLYELIXIR_SPEED = "There's no way I'm drinking that.",
		GHOSTLYELIXIR_RETALIATION = "There's no way I'm drinking that.",
		SISTURN =
		{
			GENERIC = "There can be beauty in meowsery.",
			SOME_FLOWERS = "Life doesn't get better if you sugar coat it.",
			LOTS_OF_FLOWERS = "It always ends the same.",
		},

        --Wortox
--fallback to speech_wilson.lua         WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "For the ones who know what they're doing.",
            DONE = "Better be worth the wait.",

			COOKING_LONG = "I have patience, but life is not endless.",
			COOKING_SHORT = "Not much time left.",
			EMPTY = "As empty as meow.",
        },

        PORTABLEBLENDER_ITEM = "Portablender.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "My whole life is a huge grind.",
            DONE = "The spice of life.",
        },
        SPICEPACK = "Spice makes anyathing a bit better.",
        SPICE_GARLIC = "The smell keeps others from getting close to meow. Good.",
        SPICE_SUGAR = "Iced honey.",
        SPICE_CHILI = "Nyickes, this one's hot.",
        SPICE_SALT = "A little salt goes a long way.",
        MONSTERTARTARE = "How delightfully devilish.",
        FRESHFRUITCREPES = "I feel bad eating this fancy.",
        FROGFISHBOWL = "Like a frog outta water.",
        POTATOTORNADO = "What in the nya has he done to these potatos.",
        DRAGONCHILISALAD = "Hot, spicy... hot- HOT HOT.",
        GLOWBERRYMOUSSE = "Looks pretty digestible to meow.",
        VOLTGOATJELLY = "They turned a whole goat into this.",
        NIGHTMAREPIE = "I know exactly one person who'd eat this.",
        BONESOUP = "Canyabalism.",
        MASHEDPOTATOES = "Brutally mutilated, beyond recognition. It is no longer a potato.",
        POTATOSOUFFLE = "A real soft dish.",
        MOQUECA = "So out of my league.",
        GAZPACHO = "Mrmhm~ smells so nice.",
        ASPARAGUSSOUP = "I'll turn into a soup myeowself at this rate.",
        VEGSTINGER = "Water inside of meow is fine, but not on meow.",
        BANANAPOP = "That banana sure popped.",
        CEVICHE = "This brings out my worse side.",
        SALSA = "I can't complain that it's too spicy, can I?",
        PEPPERPOPPER = "Pain, on the inside.",

        TURNIP = "How the turnip tables.",
        TURNIP_COOKED = "Tastes like dirt.",
        TURNIP_SEEDS = "Seeds for whatever, I don't know anyamore.",

        GARLIC = "It reeks of regret.",
        GARLIC_COOKED = "At least I now know I'm not a vyampire.",
        GARLIC_SEEDS = "Vampires are scared of these ones.",

        ONION = "Life has manya layers, so manya layers.",
        ONION_COOKED = "Ah, ah, my eyes are getting all watery.",
        ONION_SEEDS = "On'n'On'n'On-ion seeds.",

        POTATO = "Put that tato out its meowsery.",
        POTATO_COOKED = "Cooked to hell and back.",
        POTATO_SEEDS = "Po-tay-to, or whatever it's called, seeds.",

        TOMATO = "Red, like my blood. I mean, everynyan has red blood. Hm, crap.",
        TOMATO_COOKED = "Ugh, meowshy, stinky and uh... red.",
        TOMATO_SEEDS = "These are tomatos, or whatever.",

        ASPARAGUS = "I can stomach a lot but that looks terrible.",
        ASPARAGUS_COOKED = "You could kill someone with this smell.",
        ASPARAGUS_SEEDS = "That stinky plant seeds.",

        PEPPER = "Afraid of being left alone with pepper.",
        PEPPER_COOKED = "Get meow away from it.",
        PEPPER_SEEDS = "Pepper. Never trust 'em.",

        WEREITEM_BEAVER = "Trying to make the best of a bad situation.",
        WEREITEM_GOOSE = "Trying to make the best of a bad situation.",
        WEREITEM_MOOSE = "Trying to make the best of a bad situation.",

        MERMHAT = "Don't wanna look like a homeless cat.",
        MERMTHRONE =
        {
            GENERIC = "Oh that's a... a throne alright.",
            BURNT = "Looks better this way.",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "That dubious little fish is up to something.",
            BURNT = "Things just never go your way, fishy.",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "For a throwaway shack, looks decent.",
            BURNT = "Well should've made it out of stone or something then.",
        },

        MERMWATCHTOWER_REGULAR = "Hate this stupid system.",
        MERMWATCHTOWER_NOKING = "There's no king, there shouldn't be one, there's no need for one.",
        MERMKING = "Hope he explodes.",
        MERMGUARD = "Just another slave of the system.",
        MERM_PRINCE = "I hope he explodes twice as hard.",

        SQUID = "There's no time for squid games.",

		GHOSTFLOWER = "Peace? There's no peace in this world.",
        SMALLGHOST = "Yeah, sucks doesn't it.",

        CRABKING =
        {
            GENERIC = "I know what I'm eating tonight then.",
            INERT = "Come on nyow, I've been getting hungry.",
        },
		CRABKING_CLAW = "Get your mitts of meow.",

		MESSAGEBOTTLE = "Feelings trapped in a bottle.",
		MESSAGEBOTTLEEMPTY = "Empty, just like meow.",

        MEATRACK_HERMIT =
        {
            DONE = "You got teeth to chew this with, grams?",
            DRYING = "Always have to wait on something, I swear.",
            DRYINGINRAIN = "It'll keep being wet as long as it's raining.",
            GENERIC = "Should put that hag up here.",
            BURNT = "Well that ain't of anya use now.",
            DONE_NOTMEAT = "As dry as it gets.",
            DRYING_NOTMEAT = "Always have to wait on something, I swear.",
            DRYINGINRAIN_NOTMEAT = "It'll keep being wet as long as it's raining.",
        },
        BEEBOX_HERMIT =
        {
            READY = "She'll take care of that herself.",
            FULLHONEY = "She'll take care of that herself.",
            GENERIC = "That doesn't look like it'll last.",
            NOHONEY = "These bees better start buzzing.",
            SOMEHONEY = "How much more do they want meow to wait.",
            BURNT = "Burnt honey ain't good.",
        },

        HERMITCRAB = "Nyuck her, hope she dies.",

        HERMIT_PEARL = "Finally, have no use for that hag anyamore.",
        HERMIT_CRACKED_PEARL = "Happens huh.",

        -- DSEAS
        WATERPLANT = "Don't trust anyathing that floats on water.",
        WATERPLANT_BOMB = "See.",
        WATERPLANT_BABY = "Should kill them young.",
        WATERPLANT_PLANTER = "I think there's already one too manya in the world.",

        SHARK = "Hey, catcoons don't taste good, trust meow.",

        MASTUPGRADE_LAMP_ITEM = "Better than lighting the boat on fire, I guess.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "I'm already a lightning rod, I feel.",

        WATERPUMP = "Pump it up, cupcake.",

        BARNACLE = "Gotta get around somehow.",
        BARNACLE_COOKED = "Need to get used to this taste.",

        BARNACLEPITA = "Doesn't seem half bad.",
        BARNACLESUSHI = "I can't really complain.",
        BARNACLINGUINE = "You know what, it tastes pretty good.",
        BARNACLESTUFFEDFISHHEAD = "Oh sign meow up.",

        LEAFLOAF = "Filling, but not really.",
        LEAFYMEATBURGER = "Burg 'er? Guh.",
        LEAFYMEATSOUFFLE = "Leafy, meaty, souffly.",
        MEATYSALAD = "Hm, myeat salad, how's that work.",

        -- GROTTO

		MOLEBAT = "Life had plans for you other than beauty, huh, cupcake.",
        MOLEBATHILL = "I kinda love rummaging through trash.",

        BATNOSE = "Nosey.",
        BATNOSE_COOKED = "I mean... as long as it's edible.",
        BATNOSEHAT = "There's one too manya noses around.",

        MUSHGNOME = "Why that sassy walk, meowshcake.",

        SPORE_MOON = "Don't wanna get too close to that.",

        MOON_CAP = "Hmhm, it's trying to put meow to sleep.",
        MOON_CAP_COOKED = "But I won't let it.",

        MUSHTREE_MOON = "Moons definitely had a hand in the making of that.",

        LIGHTFLIER = "Too happy-go-lucky.",

        GROTTO_POOL_BIG = "Hissshh- NO thanks.",
        GROTTO_POOL_SMALL = "Hissshh- NO thanks.",

        DUSTMOTH = "What's the deal with this lil' guy.",

        DUSTMOTHDEN = "Everyone has a place to call home, I guess.",

        ARCHIVE_LOCKBOX = "There's still a lot of undiscovered stuff I don't care about.",
        ARCHIVE_CENTIPEDE = "Someone's not too happy. It's meow, I'm not happy.",
        ARCHIVE_CENTIPEDE_HUSK = "Just worthless garbage.",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "Cook it, cook it all.",
            COOKING_SHORT = "The wait is coming to an end.",
            DONE = "Yeah, cool.",
            EMPTY = "Huh, kitchen stuff, here?",
            BURNT = "Nah something here's not right.",
        },

        ARCHIVE_MOON_STATUE = "Fancy shmancy statues.",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "Can't be bothered to make anyathing of this.",
            LINE_2 = "Blah blah blah.",
            LINE_3 = "Does it say where I can find some fyesh around here.",
            LINE_4 = "Uh, who cares.",
            LINE_5 = "Something something, end of the world, we're all doomed.",
        },

        ARCHIVE_RESONATOR = {
            GENERIC = "Looks like it's taking meow somewhere.",
            IDLE = "Great, it's at least got its one purpose in life checked.",
        },

        ARCHIVE_RESONATOR_ITEM = "What do I even make of this.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "Eternally resting.",
          GENERIC =  "Oh, it's on.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "Powerless, against this cruel world.",
            GENERIC = "Not getting the most pleasant feeling from this.",
        },

        ARCHIVE_SECURITY_PULSE = "Hey, get back here, nyow.",

        ARCHIVE_SWITCH = {
            VALID = "It's leeching off these rocks.",
            GEMS = "It's picky with its gems.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "Wherever that goes.",
            GENERIC = "I was half expecting it to get meow outta here.",
        },

        WALL_STONE_2 = "Keeps the baddies away from meow.",
        WALL_RUINS_2 = "Old worn down rubble.",

        REFINED_DUST = "Hmph, am I supposed to snort this or what.",
        DUSTMERINGUE = "Nyah, not my kinda food.",

        SHROOMCAKE = "A cacophony of meowshrooms.",

        NIGHTMAREGROWTH = "It's anarchy down here.",

        TURFCRAFTINGSTATION = "Ground is cool and all but like, whatever.",

        MOON_ALTAR_LINK = "I take it there's no turning back.",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "Nyuck.",
            WET = "All wet and nyucky.",
            DRY = "Dry as all hell.",
            BALANCED = "Balanced, or a semblance of it .",
            BURNT = "This smell is a crime.",
        },
        COMPOST = "Green, squishy, smelly.",
        SOIL_AMENDER =
		{
			GENERIC = "It breathes.",
			STALE = "Is it supposed to be like that or what.",
			SPOILED = "Blegh, what a terrible smell.",
		},

		SOIL_AMENDER_FERMENTED = "That's as bad as it gets.",

        WATERINGCAN =
        {
            GENERIC = "If even one drop gets on meow I'll kill myeowself.",
            EMPTY = "I feel safer when it's empty.",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "I don't know where I belong but I know not the garden.",
            EMPTY = "Just imagine it's filled with water, nyes?",
        },

		FARM_PLOW = "Get plowed, jackass.",
		FARM_PLOW_ITEM = "Farmyaning.",
		FARM_HOE = "I don't wanna faaarm nyaouuuuu~~",
		GOLDEN_FARM_HOE = "Never waste gold on a hoe.",
		NUTRIENTSGOGGLESHAT = "How am I like, supposed to read these runes.",
		PLANTREGISTRYHAT = "Would look cooler if I painted it black, and maybe put a few spikes on it.",

        FARM_SOIL_DEBRIS = "Trash, useless, meowlicious. Like meow.",

		FIRENETTLES = "Burn baby burn.",
		FORGETMELOTS = "I don't wanna be forgotten.",
		SWEETTEA = "Distill the life that's inside of meow.",
		TILLWEED = "Till later, weed.",
		TILLWEEDSALVE = "Am I supposed to rub this on meow? Hell to the nya.",
        WEED_IVY = "You don't belong in this world, cupcake.",
        IVY_SNARE = "You're terrible...",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "I sure love distracting myeowself with unimportant stuff.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nYeah yeah, whatever",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nWho loves ya, baby.",
            HAS_ITEM_LIGHT = "Worthless, like meow.",
			BURNING = "Burning, boiling even.",
			BURNT = "No more fish flexing then.",
        },

        CARROT_OVERSIZED = "Carrots the size of meow.",
        CORN_OVERSIZED = "Some of you are afraid to be corny but I was born on the cob.",
        PUMPKIN_OVERSIZED = "It's pumped full of kin.",
        EGGPLANT_OVERSIZED = "No such thing as too big.",
        DURIAN_OVERSIZED = "I can't endurian it anyamore.",
        POMEGRANATE_OVERSIZED = "Hope it explodes in my face and I die.",
        DRAGONFRUIT_OVERSIZED = "We sure these aren't dragon eggs or something?",
        WATERMELON_OVERSIZED = "WATERMEOWLON.",
        TOMATO_OVERSIZED = "I hate you for being this big, tomato.",
        POTATO_OVERSIZED = "What is wrong with you, genuinely, what is wrong with you.",
        ASPARAGUS_OVERSIZED = "Have you thought for at least ONE second, why would you be this big.",
        ONION_OVERSIZED = "I'm actually an expert on crying.",
        GARLIC_OVERSIZED = "It will be executed shortly.",
        PEPPER_OVERSIZED = "Eat it all in one go, no balls.",

        VEGGIE_OVERSIZED_ROTTEN = "Can't have nice things.",

		FARM_PLANT =
		{
			GENERIC = "It's just your average plant.",
			SEED = "It'll be a while longer, alright.",
			GROWING = "You take your time cupcake, I don't wanna eat or anyathing.",
			FULL = "That's it folks.",
			ROTTEN = "Rotten to the core, like meow.",
			FULL_OVERSIZED = "What the hell have you been eating.",
			ROTTEN_OVERSIZED = "And there goes.",
			FULL_WEED = "Weed? Where!?",

			BURNING = "Skipping straight to the cooking bit.",
		},

        FRUITFLY = "Stand still, cupcake.",
        LORDFRUITFLY = "Lord forgive meow for what I'm about to do.",
        FRIENDLYFRUITFLY = "Fruits aren't really supposed to fly, but what do I know.",
        FRUITFLYFRUIT = "Aren't fruits supposed to be like, edible.",

        SEEDPOUCH = "Seeeed seeed sseeeedddd. Pouch.",

		-- Crow Carnival
		CARNIVAL_HOST = "The carnivals empty, I need you to take meow home.",
		CARNIVAL_CROWKID = "Pretty bold of them to stay so close to meow.",
		CARNIVAL_GAMETOKEN = "These games do not bring meow anya sort of joy.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "Tickets to a better life.",
			GENERIC_SMALLSTACK = "All of this is just temporary satisfaction.",
			GENERIC_LARGESTACK = "They're profiting off my boredom.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "They think they're safe.",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "All of this is so fake.",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "Where do I place this thing.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "Just another part of the game we call life.",

		CARNIVALGAME_MEMORY_KIT = "Where do I place this thing.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "I never forget.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "Uhh, uhhh... uhhhhh...",
			PLAYING = "To hell with it, it's gotta be this one.",
		},

		CARNIVALGAME_HERDING_KIT = "Where do I place this thing.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "Yeah yeah, let's get on with it.",
		},
		CARNIVALGAME_HERDING_CHICK = "Hey, get back here you-",

		CARNIVALGAME_SHOOTING_KIT = "Where do I place this thing.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "Something to take my mind off this terrible life.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "They're hiding something from meow.",
			PLAYING = "It's rigged against meow, just like my whole life.",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "Destroying stuff is always relaxing.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "Where do I place this thing.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "A hollow victory.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "Where do I place this thing.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "Nothing in this life is free.",
			PLAYING = "This isn't really \"fun\", but I don't really find anyathing \"fun\" so.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "Where do I place this thing.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "The only prize I need is to eat that big bird.",
		},

		CARNIVALCANNON_KIT = "Where do I place this thing.",
		CARNIVALCANNON =
		{
			GENERIC = "It scares meow..",
			COOLDOWN = "I can be at peace for nyow.",
		},

		CARNIVAL_PLAZA_KIT = "Where do I place this thing.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "A pathetic tree.",
			LEVEL_2 = "They find the trash on the tree \"festive\" or something.",
			LEVEL_3 = "Hmph, boring.",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "Where do I place this thing.",
		CARNIVALDECOR_EGGRIDE = "Hope the eggs are having fun, cause I sure am not.",

		CARNIVALDECOR_LAMP_KIT = "Where do I place this thing.",
		CARNIVALDECOR_LAMP = "Small, petty decor to fill the void in my heart.",
		CARNIVALDECOR_PLANT_KIT = "Where do I place this thing.",
		CARNIVALDECOR_PLANT = "Small, petty decor to fill the void in my heart.",
		CARNIVALDECOR_BANNER_KIT = "Where do I place this thing.",
		CARNIVALDECOR_BANNER = "Small, petty decor to fill the void in my heart.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "It may think it's one of a kind, but in reality, the world wouldn't care if it disappeared.",
			UNCOMMON = "It's special, for no reason in particular.",
			GENERIC = "Might use this as filler for a litter box.",
		},
		CARNIVALDECOR_FIGURE_KIT = "Curiosity always seems to get the better of meow.",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "Curiosity always seems to get the better of meow.",

        CARNIVAL_BALL = "Baller.", --unimplemented
		CARNIVAL_SEEDPACKET = "Maybe I can catch a few birds with this.",
		CARNIVALFOOD_CORNTEA = "It's made out of what again.",

        CARNIVAL_VEST_A = "Not my style at all.",
        CARNIVAL_VEST_B = "Not my style at all.",
        CARNIVAL_VEST_C = "Not my style at all.",

        -- YOTB
        YOTB_SEWINGMACHINE = "Sewing is boring, boo.",
        YOTB_SEWINGMACHINE_ITEM = "I'm not very reliable when it comes to assembling this stuff.",
        YOTB_STAGE = "He just doesn't understand my fashion sense.",
        YOTB_POST =  "I hate being the center of attention.",
        YOTB_STAGE_ITEM = "I'm not very reliable when it comes to assembling this stuff.",
        YOTB_POST_ITEM =  "I'm not very reliable when it comes to assembling this stuff.",


        YOTB_PATTERN_FRAGMENT_1 = "I'll need more of these to get the bigger picture.",
        YOTB_PATTERN_FRAGMENT_2 = "I'll need more of these to get the bigger picture.",
        YOTB_PATTERN_FRAGMENT_3 = "I'll need more of these to get the bigger picture.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "More black, more spikes, then we'll talk.",
            YOTB = "It's ready for judgement.",
        },

        WAR_BLUEPRINT = "Haircuts for cows.",
        DOLL_BLUEPRINT = "Haircuts for cows.",
        FESTIVE_BLUEPRINT = "Haircuts for cows.",
        ROBOT_BLUEPRINT = "Haircuts for cows.",
        NATURE_BLUEPRINT = "Haircuts for cows.",
        FORMAL_BLUEPRINT = "Haircuts for cows.",
        VICTORIAN_BLUEPRINT = "Haircuts for cows.",
        ICE_BLUEPRINT = "Haircuts for cows.",
        BEAST_BLUEPRINT = "Haircuts for cows.",

        BEEF_BELL = "This isn't true friendship.",

		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "Hmph, I won't fit in there, what's the point.",
            BURNT = "That sucks.",
			PLAYING_HIDEANDSEEK = "They're hiding, from meow.",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Time is running low.",
		},

		KITCOONDEN_KIT = "How about I build myeowself a house instead.",

		TICOON =
		{
			GENERIC = "Thinks he's a bigshot.",
			ABANDONED = "You go nyuck yourself too!.",
			SUCCESS = "Huh, good one, cupcake.",
			LOST_TRACK = "Hey hurry up, will ya.",
			NEARBY = "I smell one of the kits.",
			TRACKING = "What is it, did you find something.",
			TRACKING_NOT_MINE = "He's not on my side, nobody is.",
			NOTHING_TO_TRACK = "Nothing but dust and meowmories left.",
			TARGET_TOO_FAR_AWAY = "Something's telling meow that's too far for him.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "Hah, cool.",
            EMPTY = "What does it want from meow.",
            BURNT = "Bad omen.",
        },

		KITCOON_FOREST = "You're so small, so pathetic... You're worthless, nothing... NOTHING good will come out of you.",
		KITCOON_SAVANNA = "You're so small, so pathetic... There's no future ahead of you.",
		KITCOON_MARSH = "You're so small, so pathetic... Enjoy it everything while you still can.",
		KITCOON_DECIDUOUS = "You're so small, so pathetic... You have a miserable life to get through.",
		KITCOON_GRASS = "You're so small, so pathetic... And it won't get anya better for you.",
		KITCOON_ROCKY = "You're so small, so pathetic... It's all downhill from here.",
		KITCOON_DESERT = "You're so small, so pathetic... Never show your face to anyaone again.",
		KITCOON_MOON = "You're so small, so pathetic... Stupid... stupid stupid stupid.",
		KITCOON_YOT = "You're so small, so pathetic... I hate you...",

        -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "Oh hey, it's rock n' roll.",
            DEAD = "Nothing you can't fix by beating it to death.",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "I guess I'm not the only one here with more lives.",
            DEAD = "It's not really dead, is it.",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Nice spikes, cupcake.",
        ALTERGUARDIAN_PHASE3 = "I must've pissed off the horrors beyond my comprehesion.",
        ALTERGUARDIAN_PHASE3TRAP = "Better stay outta that.",
        ALTERGUARDIAN_PHASE3DEADORB = "Feels trippy.",
        ALTERGUARDIAN_PHASE3DEAD = "Hope I don't have to kill it 6 more times.",

        ALTERGUARDIANHAT = "Its whispers are almost enough to overpower the voices in my head.",
        ALTERGUARDIANHATSHARD = "Shattered to bits and pieces.",

        MOONSTORM_GLASS = {
            GENERIC = "Yep, that looks like glass.",
            INFUSED = "It's charged or something."
        },

        MOONSTORM_STATIC = "That definitely doesn't look like it'll shock meow to death.",
        MOONSTORM_STATIC_ITEM = "Huh, they just put the thing in a jar and called it a day.",
        MOONSTORM_SPARK = "A spark of light, in an otherwise dark world.",

        BIRD_MUTANT = "Alright, I'm not eating THAT.",
        BIRD_MUTANT_SPITTER = "Nyuck, better not get anya of that on meow.",

        WAGSTAFF_NPC = "He better not start complaining about the way I dress.",

        WAGSTAFF_NPC_MUTATIONS = "What the nyuck is he talking to meow about.",
        WAGSTAFF_NPC_WAGPUNK = "Yeah whatever, gramps...",

        ALTERGUARDIAN_CONTAINED = "Get boxed, idiot.",

        WAGSTAFF_TOOL_1 = "That definitely looks like something I don't care about.",
        WAGSTAFF_TOOL_2 = "That definitely looks like something I don't care about.",
        WAGSTAFF_TOOL_3 = "That definitely looks like something I don't care about.",
        WAGSTAFF_TOOL_4 = "That definitely looks like something I don't care about.",
        WAGSTAFF_TOOL_5 = "That definitely looks like something I don't care about.",

        MOONSTORM_GOGGLESHAT = "A parasitic relationship with a potato.",

        MOON_DEVICE = {
            GENERIC = "Does gramps know what he's doing here.",
            CONSTRUCTION1 = "Ughh, I don't understand anya of this.",
            CONSTRUCTION2 = "And things beyond my understanding piss meow off.",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "How are you supposed to understand what time it is by looking at it.",
			RECHARGING = "How are you supposed to understand what time it is by looking at it.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "How are you supposed to understand what time it is by looking at it.",
			RECHARGING = "How are you supposed to understand what time it is by looking at it.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "How are you supposed to understand what time it is by looking at it.",
			RECHARGING = "How are you supposed to understand what time it is by looking at it.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "How are you supposed to understand what time it is by looking at it.",
			RECHARGING = "How are you supposed to understand what time it is by looking at it.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "How are you supposed to understand what time it is by looking at it.",
			RECHARGING = "How are you supposed to understand what time it is by looking at it.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda unmarked",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda same shard",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "Definitely looks like it could grind someone into fine paste.",
--fallback to speech_wilson.lua 			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "Insides of a clock.",
        POCKETWATCH_DISMANTLER = "Torture tools... I think.",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "How manya years of my life will this shave off.",
			DIFFERENTSHARD = "How manya years of my life will this shave off.",
		},
        POCKETWATCH_PORTAL_EXIT = "Why's it all the way up there.",

        -- Waterlog
        WATERTREE_PILLAR = "That's a mighty fine tree.",
        OCEANTREE = "Must be one big tree under there.",
        OCEANTREENUT = "Someone lost their nut.",
        WATERTREE_ROOT = "The root cause of it all.",

        OCEANTREE_PILLAR = "Wonder if I can bring it down.",

        OCEANVINE = "UGHHH, they're so slimy and gross.",
        FIG = "How figgy.",
        FIG_COOKED = "If this tastes anya better, I give up.",

        SPIDER_WATER = "They're on water now, great.",
        MUTATOR_WATER = "Nyuck, keep it to yourself, cupcake.",
        OCEANVINE_COCOON = "Guessing that's occupied.",
        OCEANVINE_COCOON_BURNT = "Well, not anyamore.",

        GRASSGATOR = "I can murder it, if I'm desperate enough for grass.",

        TREEGROWTHSOLUTION = "These trees have a weird taste in jam.",

        FIGATONI = "More weird looking food.",
        FIGKABAB = "It tastes sweet, I hate it, have it taste horrible. Make meow feel miserable.",
        KOALEFIG_TRUNK = "Because just cooking the trunk isn't enough apparently.",
        FROGNEWTON = "Hope it doesn't run anyawhere while I'm not looking.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "A tiny life is trapped inside.",
            CRIMSON = "No one is safe from lifes corruption.",
            ENABLED = "A light in the dark.",
			WAITING_FOR_DARK = "It's like, bobbing up and down.",
			COOLDOWN = "Huh, guess that's that.",
			SPAWN_DISABLED = "I don't really care enough about this thing to be honest.",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "It's for boys to get big... and burly and muscly and strong and mhhrrmrmh... I-I mean, yeah. ",
            BURNT = "Nyuck.",
        },

        DUMBBELL = "Better start lifting if you wanna impress those girls.",
        DUMBBELL_GOLDEN = "Better start lifting if you wanna impress those girls.",
		DUMBBELL_MARBLE = "Better start lifting if you wanna impress those girls.",
        DUMBBELL_GEM = "Better start lifting if you wanna impress those girls.",
        POTATOSACK = "Yeah, potatos. There's definitely no dismeowmbered limbs in that.",

        DUMBBELL_HEAT = "Better start lifting if you wanna impress those girls.",
        DUMBBELL_REDGEM = "Better start lifting if you wanna impress those girls.",
        DUMBBELL_BLUEGEM = "Better start lifting if you wanna impress those girls.",

        TERRARIUMCHEST =
		{
			GENERIC = "Curiosity will kill meow if I don't open that.",
			BURNT = "They don't make anyathing fireproof around here.",
			SHIMMER = "Why's it looking at meow so girly.",
		},

		EYEMASKHAT = "Puts meow in a different headspace.",

        EYEOFTERROR = "An oversized eyeball, great.",
        EYEOFTERROR_MINI = "Stop looking at meow.",
        EYEOFTERROR_MINI_GROUNDED = "Stomp that, stomp that.",

        FROZENBANANADAIQUIRI = "A drink's a drink.",
        BUNNYSTEW = "Can't run away from meow anyamore.",
        MILKYWHITES = "Nyuck, gross.",

        CRITTER_EYEOFTERROR = "If I was him I would've ended myeowself at birth.",

        SHIELDOFTERROR ="It's more for just beating stuff up with.",
        TWINOFTERROR1 = "The eye is probably its weakspot.",
        TWINOFTERROR2 = "The eye is probably its weakspot.",

		-- Cult of the Lamb
		COTL_TRINKET = "That could suit meow.",
		TURF_COTL_GOLD = "There's better ways to signal your status.",
		TURF_COTL_BRICK = "The road's all bricked up.",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "Must be a religious figure.",
			GENERIC = "Light it up.",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "Too bad I don't care about religion.",
			GENERIC = "Light it up.",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "Unless the religion involves spiked bracelets...",
			GENERIC = "Light it up.",
		},

        -- Year of the Catcoon
        CATTOY_MOUSE = "Who do you think I am.",
        KITCOON_NAMETAG = "Who volunteers to be named \"Supershit\".",

		KITCOONDECOR1 =
        {
            GENERIC = "That's not even a real bird.",
            BURNT = "Yeah, sucks doesn't it.",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Hey, as long as they're off my back.",
            BURNT = "Yeah, sucks doesn't it.",
        },

		KITCOONDECOR1_KIT = "How do I put this together, the hell...",
		KITCOONDECOR2_KIT = "How do I put this together, the hell...",

        -- WX78
        WX78MODULE_MAXHEALTH = "Robot insides.",
        WX78MODULE_MAXSANITY1 = "Robot insides.",
        WX78MODULE_MAXSANITY = "Robot insides.",
        WX78MODULE_MOVESPEED = "Robot insides.",
        WX78MODULE_MOVESPEED2 = "Robot insides.",
        WX78MODULE_HEAT = "Robot insides.",
        WX78MODULE_NIGHTVISION = "Robot insides.",
        WX78MODULE_COLD = "Robot insides.",
        WX78MODULE_TASER = "Robot insides.",
        WX78MODULE_LIGHT = "Robot insides.",
        WX78MODULE_MAXHUNGER1 = "Robot insides.",
        WX78MODULE_MAXHUNGER = "Robot insides.",
        WX78MODULE_MUSIC = "Robot insides.",
        WX78MODULE_BEE = "Robot insides.",
        WX78MODULE_MAXHEALTH2 = "Robot insides.",

        WX78_SCANNER =
        {
            GENERIC ="This little thing makes meow uncomfortable.",
            HUNTING = "Huh, is it going to suicide bomb into something.",
            SCANNING = "Oh nevermind, it's just checking things out.",
        },

        WX78_SCANNER_ITEM = "I feel like thunderchucking it into water.",
        WX78_SCANNER_SUCCEEDED = "Oh my god, I get it I get it, shut up.",

        WX78_MODULEREMOVER = "I'll think about it, if things get even worse.",

        SCANDATA = "This is just straight unreadable.",

		-- QOL 2022
		JUSTEGGS = "Mhrmm, cooked bird babies.",
		VEGGIEOMLET = "I mean, I'll eat whatever, I guess.",
		TALLEGGS = "Mellows the pain inside of meow.",
		BEEFALOFEED = "Eat your pile of garbage, ungrateful cow.",
		BEEFALOTREAT = "Eat your pile of garbage, ungrateful cow.",

        -- Pirates
        BOAT_ROTATOR = "It's a metaphor for uh, how life spins... uhh. Whatever, forget it.",
        BOAT_ROTATOR_KIT = "Why do I have to place it.",
        BOAT_BUMPER_KELP = "Doesn't look like it kelps very myuch.",
        BOAT_BUMPER_KELP_KIT = "Why do I have to place it.",
		BOAT_BUMPER_SHELL = "Those shells she sold meow are put to use.",
        BOAT_BUMPER_SHELL_KIT = "Why do I have to place it.",
        BOAT_CANNON = {
            GENERIC = "It makes things explode, joy.",
            AMMOLOADED = "Oh you're gonna love this one, cupcake.",
            NOAMMO = "I need more of them balls.",
        },
        BOAT_CANNON_KIT = "Feels like more power than I should have.",
        CANNONBALL_ROCK_ITEM = "That spider kid will never bother meow to play dodgeball after this.",

        OCEAN_TRAWLER = {
            GENERIC = "Mhrmhrm, think of all the fish I could catch.",
            LOWERED = "I just have to wait for some dumb fish to wander into it.",
            CAUGHT = "My next meal's right there.",
            ESCAPED = "Dyamn you, why can't good things happen to meow.",
            FIXED = "It will do for now.",
        },
        OCEAN_TRAWLER_KIT = "Fish fear meow.",

        BOAT_MAGNET =
        {
            GENERIC = "Hmph, now to see what it does...",
            ACTIVATED = "HEY, HEY IT'S PULLING MEOW, HEY STOP IT! HELP!!",
        },
        BOAT_MAGNET_KIT = "I'm supposed to put this on a boat, supposedly.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "I think they forgot to explain to meow what this is.",
            ACTIVATED = "Why does it make my hair tingle.",
        },
        DOCK_KIT = "The less water in the world, the better.",
        DOCK_WOODPOSTS_ITEM = "I might trip and bash my head into that.",

        MONKEYHUT =
        {
            GENERIC = "Too many meownkeys, I feel uncomfortable.",
            BURNT = "Sucks to be whoever lived in that.",
        },
        POWDER_MONKEY = "Common laborer.",
        PRIME_MATE = "A prime example of a mate.",
		LIGHTCRAB = "Looks edible enough.",
        CUTLESS = "Almost got a smirk out of meow, congrats.",
        CURSED_MONKEY_TOKEN = "Oh great, like my life wasn't already bad enough.",
        OAR_MONKEY = "Sailing to the inevitable end.",
        BANANABUSH = "I sometime lob bananyas at other catcoons when I'm bored.",
        DUG_BANANABUSH = "I sometime lob bananyas at other catcoons when I'm bored.",
        PALMCONETREE = "Eh, nice haircut, I guess.",
        PALMCONE_SEED = "Ugh, more tree babies.",
        PALMCONE_SAPLING = "So small and helpless.",
        PALMCONE_SCALE = "Smooth as nya.",
        MONKEYTAIL = "Cat tails don't grow like that.",
        DUG_MONKEYTAIL = "So I can like, put this wherever I want.",

        MONKEY_MEDIUMHAT = "Last thing I want is to be in charge of something.",
        MONKEY_SMALLHAT = "I have to tuck my ears in a very ackward way for it to fit.",
        POLLY_ROGERSHAT = "Hey, pirates are pretty cool.",
        POLLY_ROGERS = "It's flying too close to the sun.",

        MONKEYISLAND_PORTAL = "Someone's lobbing junk at meow from the other side.",
        MONKEYISLAND_PORTAL_DEBRIS = "Don't trip.",
        MONKEYQUEEN = "Damn, what a fat... meownkey.",
        MONKEYPILLAR = "Is this the peak of their culture.",
        PIRATE_FLAG_POLE = "Not very welcoming, but it doesn't matter to meow.",

        BLACKFLAG = "That's my type of flag.",
        PIRATE_STASH = "Contraband.",
        STASH_MAP = "Hmph, time to get what's rightfuly mine.",

        BANANAJUICE = "How do you turn bananyas into juice, that's nyansense.",

        FENCE_ROTATOR = "Spins meow right round.",

        CHARLIE_STAGE_POST = "Here we are now, entertain us.",
        CHARLIE_LECTURN = "Time to read up on some history, I guess.",

        CHARLIE_HECKLER = "Oh my GOD SHUT THE NYUCK UUUUUUUP.",

        PLAYBILL_THE_DOLL = "Reading is boring.",
        STATUEHARP_HEDGESPAWNER = "A statue, held together by thoughts and prayers.",
        HEDGEHOUND = "Aggressive little thing.",
        HEDGEHOUND_BUSH = "That's one prikly bush.",

        MASK_DOLLHAT = "And don't forget to hide your intentions.",
        MASK_DOLLBROKENHAT = "And don't forget to hide your intentions.",
        MASK_DOLLREPAIREDHAT = "And don't forget to hide your intentions.",
        MASK_BLACKSMITHHAT = "And don't forget to hide your intentions.",
        MASK_MIRRORHAT = "And don't forget to hide your intentions.",
        MASK_QUEENHAT = "And don't forget to hide your intentions.",
        MASK_KINGHAT = "And don't forget to hide your intentions.",
        MASK_TREEHAT = "And don't forget to hide your intentions.",
        MASK_FOOLHAT = "And don't forget to hide your intentions.",

        COSTUME_DOLL_BODY = "If you hate yourself, just be someone else.",
        COSTUME_QUEEN_BODY = "If you hate yourself, just be someone else.",
        COSTUME_KING_BODY = "If you hate yourself, just be someone else.",
        COSTUME_BLACKSMITH_BODY = "If you hate yourself, just be someone else.",
        COSTUME_MIRROR_BODY = "If you hate yourself, just be someone else.",
        COSTUME_TREE_BODY = "If you hate yourself, just be someone else.",
        COSTUME_FOOL_BODY = "If you hate yourself, just be someone else.",

        STAGEUSHER =
        {
            STANDING = "Who could've seen that coming.",
            SITTING = "Yeah, that definitely looks convincing enough to pass as a table.",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "Shave your head and wear a dress.",
            BURNT = "Oh, it's dead.",
        },

		-- Waxwell
		MAGICIAN_CHEST = "Rummaging through magic garbage is a bad idea. Speaking from experience.",
		TOPHAT_MAGICIAN = "Not the tallest hat I've seen.",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "Ugh just put it wherever.",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "I prefer staying outta that.",
            PLAYING = "I better see blood and guts.",
        },

        YOTR_DECOR_1 = {
            GENERAL = "It's pretty for what it is... I guess.",
            OUT = "The fire's already gone and done.",
        },
        YOTR_DECOR_2 = {
            GENERAL = "It's pretty for what it is... I guess.",
            OUT = "The fire's already gone and done.",
        },

        HAREBALL = "Did I spit this out or-",
        YOTR_DECOR_1_ITEM = "Ugh just put it wherever.",
        YOTR_DECOR_2_ITEM = "Ugh just put it wherever.",

		--
		DREADSTONE = "I could make some sick earrings out of this.",
		HORRORFUEL = "Draining to the touch.",
		DAYWALKER =
		{
			GENERIC = " You selfish scum. I'll make. You. Pay.",
			IMPRISONED = "Those chains are making meow blush.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "There's cracks where there shouldn't be.",
			EXPOSED = "You'll crack eventually, all of us will.",
		},
		ARMORDREADSTONE = "That's metal as all hell.",
		DREADSTONEHAT = "Sure, make my headaches worse, why not.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "This world is so nyucked.",
        LUNARRIFT_CRYSTAL = "Prestine and serene.",

        LUNARTHRALL_PLANT = "So spiky and cool...",
        LUNARTHRALL_PLANT_VINE_END = "Sick tail, cupcake.",

		LUNAR_GRAZER = "I have a feeling this pest won't be dispatched so easily.",

        PUREBRILLIANCE = "How about I make it impure.",
        LUNARPLANT_HUSK = "The blasted thing is finally dead.",

		LUNAR_FORGE = "We work to earn the right to work.",
		LUNAR_FORGE_KIT = "Ticket to entering the meoown workforce.",

		LUNARPLANT_KIT = "I wish I could fix myeowself.",
		ARMOR_LUNARPLANT = "Guh, it's too itchy.",
		LUNARPLANTHAT = "There's literally no room for my ears.",
		BOMB_LUNARPLANT = "Rhythm bomb.",
		STAFF_LUNARPLANT = "Must feel really unfair, for my enyamies.",
		SWORD_LUNARPLANT = "The harder you hit them, the faster their pain ends.",
		PICKAXE_LUNARPLANT = "I mean, can't go wrong with this, I guess.",
		SHOVEL_LUNARPLANT = "This'll just double the workload.",

		BROKEN_FORGEDITEM = "You can still be fixed, unlike meow.",

        PUNCHINGBAG = "I can ease my inner turmoil, by beating the ever-loving nyuck out of it.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "I volunteer to jump into that.",

		SHADOW_FORGE = "The descent into the deeper dark.",
		SHADOW_FORGE_KIT = "Gotta set this up before long.",

        FUSED_SHADELING = "Oh hey, another way to die.",
        FUSED_SHADELING_BOMB = "I should dive onto that.",

		VOIDCLOTH = "Sexy shade of red.",
		VOIDCLOTH_KIT = "I wish I could fix myeowself.",
		VOIDCLOTHHAT = "I'm already wrapped in darkness, so why not go further.",
		ARMOR_VOIDCLOTH = "Heavy chains burden meow.",

        VOIDCLOTH_UMBRELLA = "Pretty...",
        VOIDCLOTH_SCYTHE = "That's so metal.",

		SHADOWTHRALL_HANDS = "That's some interesting fashion right there.",
		SHADOWTHRALL_HORNS = "Eat meow, I dare you.",
		SHADOWTHRALL_WINGS = "It's the wingman.",

        CHARLIE_NPC = "She's literally meow.",
        CHARLIE_HAND = "I'm not letting that pet meow.",

        NITRE_FORMATION = "Piss colored rock.",
        DREADSTONE_STACK = "From the pits of hell.",
        
        SCRAPBOOK_PAGE = "Some nerd garbage.",

        LEIF_IDOL = "Uh, I'd recognize that ugly frown anyawhere.",
        WOODCARVEDHAT = "No room for my ears?",
        WALKING_STICK = "Well it's a stick, it helps walk, yup.",

        IPECACSYRUP = "Could pull some legendary pranks with this.",
        BOMB_LUNARPLANT_WORMWOOD = "Big boom in town.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "R.I.P.",
        	GENERIC = "They're dead on the inside.",
        	HELD = "You're my property now.",
        	SLEEPING = "You little rat~",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "They're dead on the inside.",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "They're dead on the inside.",
			RIPE = "It's dead on the inside, but it might still taste good.",
			SLEEPING = "Try to sleep, and forget.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "Why can't you build yourself, huh, cupcake.",
        SUPPORT_PILLAR = "The weight can crush anyaaone.",
        SUPPORT_PILLAR_COMPLETE = "Temporary safety bubble.",
        SUPPORT_PILLAR_BROKEN = "We all crack at some point.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "Why can't you build yourself, huh, cupcake.",
		SUPPORT_PILLAR_DREADSTONE = "The weight can crush anyaone.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "It looks strong, but everything has a breaking point.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "Thought it'd be sturdier than that.",

        WOLFGANG_WHISTLE = "S-Stop, my ears.",

        -- Rifts 3

        MUTATEDDEERCLOPS = "This world is a cruel place.",
        MUTATEDWARG = "Creatures sick as you, should be put down.",
        MUTATEDBEARGER = "Sorry, for what I'm about to do.",

        LUNARFROG = "What an eyeballer.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Invaders must die.",
            BURNING  = "It's already dead so like, who cares.",
            REVIVING = "The wretch is being puppeteered!",
        },

        WARGCORPSE =
        {
            GENERIC  = "Invaders must die.",
            BURNING  = "It's already dead so like, who cares.",
            REVIVING = "Something has taken hold of it!",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Invaders must die.",
            BURNING  = "It's already dead so like, who cares.",
            REVIVING = "Brought back to life? How I do not envy you.",
        },

        BEARGERFUR_SACK = "I could fit into it if I wanted to.",
        HOUNDSTOOTH_BLOWPIPE = "Those jackasses have at least one use in their life huh.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Almost as cold as meow.",    -- Enabled.
            NOEYEBALL = "It needs eyes to ball.",  -- Disabled.
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = "I'll set it when I feel like it.",

        SECURITY_PULSE_CAGE = "As empty as meow.",
        SECURITY_PULSE_CAGE_FULL = "Well unfill yourself then.",

		CARPENTRY_STATION =
        {
            GENERIC = "Oh hey, litterbox filler generator.",
            BURNT = "That must've been painful for it.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "Trying to go against my instinct of flipping tables.",
            HAS_ITEM = "Trying to go against my instinct of flipping tables.",
            BURNT = "It's been consumed by the fires of hell.",
        },

        WOOD_CHAIR =
        {
            GENERIC = "I'd rather have a box.",
            OCCUPIED = "Enjoy resting your ass while you can, cupcake.",
            BURNT = "Sitting is no longer allowed.",
        },

        DECOR_CENTERPIECE = "What's the message behind this.",
        DECOR_LAMP = "It won't light up the darkness in my mind.",
        DECOR_FLOWERVASE =
        {
            GENERIC = "I'm picky when it comes to flowers. Some don't taste good.",
            EMPTY = "Flowers go into that.",
            WILTED = "It was pretty once, and now it's ugly. That's how it goes.",
            FRESHLIGHT = "Young. Bright. Joyful.",
            OLDLIGHT = "It's rotting, you know.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Ugh, turned out bad.",
            UNDRAWN = "Should I release my feeling upon this canvas.",
        },
        DECOR_PORTRAITFRAME = "Doesn't make meow feel anya better.",

        PHONOGRAPH = "Meowsic for the jilted generation.",
        RECORD = "If it's not Nyarvana, I don't care.",
        RECORD_CREEPYFOREST = "If it's not Nyarvana, I don't care.",
        RECORD_DANGER = "If it's not Nyarvana, I don't care.",
        RECORD_DAWN = "If it's not Nyarvana, I don't care.",
        RECORD_DRSTYLE = "If it's not Nyarvana, I don't care.",
        RECORD_DUSK = "If it's not Nyarvana, I don't care.",
        RECORD_EFS = "If it's not Nyarvana, I don't care.",
        RECORD_END = "If it's not Nyarvana, I don't care.",
        RECORD_MAIN = "If it's not Nyarvana, I don't care.",
        RECORD_WORKTOBEDONE = "If it's not Nyarvana, I don't care.",

        ARCHIVE_ORCHESTRINA_MAIN = "I'm too fancy for these halls.",

        WAGPUNKHAT = "What the hell, all this stuff makes meow dizzy.",
        ARMORWAGPUNK = "Tough stuff.",
        WAGSTAFF_MACHINERY = "What a whole lotta trash.",
        WAGPUNK_BITS = "I'm tempted to bring a few of these with meow.",
        WAGPUNKBITS_KIT = "Sometimes you need to fix garbage with garbage.",

        WAGSTAFF_MUTATIONS_NOTE = "Notes, nothing noteworthy.",
    },

    DESCRIBE_GENERIC = "Uhh, dunno. It's something.",
    DESCRIBE_TOODARK = "I swear I could see in the dark at some point, but not anyamore.",
    DESCRIBE_SMOLDERING = "It's got seconds before the fire takes over.",

    DESCRIBE_PLANTHAPPY = "Why does IT get to be happy.",
    DESCRIBE_PLANTVERYSTRESSED = "It's on the verge of a mental breakdown.",
    DESCRIBE_PLANTSTRESSED = "Stressed. Heh, yeah.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "This garden is a place of meowsery.",
    DESCRIBE_PLANTSTRESSORFAMILY = "It hates the companya of these other plants.",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "Hate crowds? Meow too.",
    DESCRIBE_PLANTSTRESSORSEASON = "You have to put up with the weather wether you like it or not.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "Why'd you want water, water's evil, it'll kill you.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "It wants greener pastures.",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "Unhappy. Too bad there's nothing to be happy about.",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Oh poor twisted meow.",
		WINTERSFEASTFUEL = "No chance that'll make meow happy.",
    },
}
