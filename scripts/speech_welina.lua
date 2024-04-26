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
			INUSE = "H-Hurry up, will y-you.",
            NOTMASTERCHEF = "I'm like, terrible at this stuff.",
		},
        CONSTRUCT =
        {
            INUSE = "Can you like, nyack off",
            NOTALLOWED = "I ain't building anything with this here.",
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
        	WRONGKEY = "Huh, are you kitten me right meow?",
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
            NOMOON = "It's like, not going to do anything in here..",
			PIGKINGGAME_MESSY = "It's way too mewssy.",
			PIGKINGGAME_DANGER = "There's like, meowre important things, like, yeah...",
			PIGKINGGAME_TOOLATE = "Too late, meowch...",
			CARNIVALGAME_INVALID_ITEM = "What do you want from me dyammit.",
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
            INUSE = "Let me do it, I'll make it worse.",
        },
        DRAW =
        {
            NOIMAGE = "Drawing from meowmory is like, really hard.",
        },
        CHANGEIN =
        {
            GENERIC = "Can't, like, get any better than this.",
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
            BAD_TIMING1 = "Dyammit, focus Wels!",
            BAD_TIMING2 = "Dyamn I'm terrible at this.",
        },
        LOWER_SAIL_FAIL =
        {
            "I messed ny-up",
            "If only I could stop disappointing myeowself.",
            "Are you kitten me.",
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
            WEBBERONLY = "I'm no spider for spiders to listen to me.",
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
			NO_TOPHAT = "It needs a hat, and not just any hat.",
		},

		CASTAOE =
		{
			NO_MAX_SANITY = "Myeow mind's going blank!",
		},
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "Kyah, when is it ever enough.",
		NO_TECH = "I'm too stupid to myake this",
		NO_STATION = "I can't just make this in the middle of nyowhere.",
	},

	ACTIONFAIL_GENERIC = "It didn't wanna work.",
	ANNOUNCE_BOAT_LEAK = "Nyack- Water's pouring in.",
	ANNOUNCE_BOAT_SINK = "ACK HELP, HELPHELPHLEPHELP AAAAAAAA-",
	ANNOUNCE_DIG_DISEASE_WARNING = "That takes care of that.", --removed
	ANNOUNCE_PICK_DISEASE_WARNING = "How putrid!", --removed
	ANNOUNCE_ADVENTUREFAIL = "I'm alive again? Lame.",
    ANNOUNCE_MOUNT_LOWHEALTH = "You're as good as dead, just like meow.",

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
	ANNOUNCE_CRAFTING_FAIL = "Kah- I messed somethin' up.",
	ANNOUNCE_DEERCLOPS = "Someone, or something, is not happy.",
	ANNOUNCE_CAVEIN = "There's something nyaup there!",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"The ground's shaking all of a sudden.",
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
        YUCKY = "That's not even food anymore.",

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
        "Ack... Gah...",
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
		"Did i do something bad or what.",
		"That probably means things are, like, real bad.",
		"This place is going to hell.",
	},
    ANNOUNCE_RUINS_RESET = "Wah-What, everything's back here!",
    ANNOUNCE_SNARED = "I'm already used to living in a prison.",
    ANNOUNCE_SNARED_IVY = "Kah- what's wrong with you plant!",
    ANNOUNCE_REPELLED = "There's no way I'll break through.",
	ANNOUNCE_ENTER_DARK = "I can't see a thing dyammit.",
	ANNOUNCE_ENTER_LIGHT = "Phew-, light.",
	ANNOUNCE_FREEDOM = "No rest for the wicked.",
	ANNOUNCE_HIGHRESEARCH = "Too much knowledge for me to handle.",
	ANNOUNCE_HOUNDS = "Nyaouu, they want to eat me again.",
	ANNOUNCE_WORMS = "That's a lethal company if i've ever heard one.",
	ANNOUNCE_HUNGRY = "There's a hole in my heart... and stomach.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Smells like prey.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Gyaah it escaped.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Too hard to track with all this mud.",
    ANNOUNCE_HUNT_START_FORK = "Someone might've got to my food first.",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "Time for some fine dining.",
    ANNOUNCE_HUNT_WRONG_FORK = "Outsmarted by something like... that...",
    ANNOUNCE_HUNT_AVOID_FORK = "It's better to take the safer route, i think.",
	ANNOUNCE_INV_FULL = "That's way too much load!",
	ANNOUNCE_KNOCKEDOUT = "Uhhmmm-m-meow??",
	ANNOUNCE_LOWRESEARCH = "Boring!",
	ANNOUNCE_MOSQUITOS = "Annoying!.",
    ANNOUNCE_NOWARDROBEONFIRE = "Ah- A bit late for that...",
    ANNOUNCE_NODANGERGIFT = "There's myeowre important stuff right meow.",
    ANNOUNCE_NOMOUNTEDGIFT = "No way i can open it on this thing.",
	ANNOUNCE_NODANGERSLEEP = "How am i going to sleep when the bell is getting louder?",
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
	ANNOUNCE_FAN_OUT = "Dyamn, i broke it.",
    ANNOUNCE_COMPASS_OUT = "The compass thing broke down.",
	ANNOUNCE_TRAP_WENT_OFF = "GYAh-ah~",
	ANNOUNCE_UNIMPLEMENTED = "This one's not done yet.",
	ANNOUNCE_WORMHOLE = "Bleh, i've seen things i shouldn't have seen",
	ANNOUNCE_TOWNPORTALTELEPORT = "It's about time.",
	ANNOUNCE_CANFIX = "\nIt looks lonely, I can fix that.",
	ANNOUNCE_ACCOMPLISHMENT = "Yay whatever.",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Who cares.",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Needs more poop or something.",
	ANNOUNCE_TOOL_SLIP = "Myack-.",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Nyah-hah, can't hit me now.",
	ANNOUNCE_TOADESCAPING = "Dumb frog, death isn't an \"if\", it's a \"when\".",
	ANNOUNCE_TOADESCAPED = "Death will come for you, just you wait.",


	ANNOUNCE_DAMP = "Ughhh, water....",
	ANNOUNCE_WET = "Kah- I'm getting uncomfortably wet...",
	ANNOUNCE_WETTER = "I'm wetter than i have any business being!",
	ANNOUNCE_SOAKED = "Aaaaaa- i hate being wet.",

	ANNOUNCE_WASHED_ASHORE = "Noooo- I'm all wet now, ugh.",

    ANNOUNCE_DESPAWN = "My time... has finally come....",
	ANNOUNCE_BECOMEGHOST = "oOooooOO!!",
	ANNOUNCE_GHOSTDRAIN = "The voices won't let up!",
	ANNOUNCE_PETRIFED_TREES = "Someone scared these trees stiff.",
	ANNOUNCE_KLAUS_ENRAGE = "Oh. See nya.",
	ANNOUNCE_KLAUS_UNCHAINED = "Huh, i thought only cats had more lives!",
	ANNOUNCE_KLAUS_CALLFORHELP = "A little crowded for my liking",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "It's calling to me...",
		GLASS_LOW = "The voices....",
		GLASS_REVEAL = "Oh, hello there.",
		IDOL_MED = "It's calling to me...",
		IDOL_LOW = "The voices....",
		IDOL_REVEAL = "Oh, hello there.",
		SEED_MED = "It's calling to me...",
		SEED_LOW = "The voices....",
		SEED_REVEAL = "Oh, hello there.",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "The hell...?",
	ANNOUNCE_BRAVERY_POTION = "I wasn't scared anyway.",
	ANNOUNCE_MOONPOTION_FAILED = "Doesn't work on me, ugh whatever.",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "I'd rather be alone... really...",
	ANNOUNCE_WINTERS_FEAST_BUFF = "This really hits the spot.",
	ANNOUNCE_IS_FEASTING = "Oh nice, fancy food.",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "I'm back to feeling dreadful.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Get UP...",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Thank me, nyow...",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Ugh, alive again.",

    ANNOUNCE_FLARE_SEEN = "Am i supposed to run up to it or what.",
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

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "My hair's all tingly.",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "I feel kinda stronger?",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "I feel like i could go out in public, okay maybe not.",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Myeow focus has gotten better!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "I won't get soggy anymore? Nice!",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "I can't close myeow eyes, the hell.",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Phew, it's back to normal.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Oh, i feel like crap again, all's right.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "I almost felt like going out, almost.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "I can't focus like a moment ago anymore!",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Nooo, my water resistance!",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "I'm drowsy as usual nyow...",

	ANNOUNCE_OCEANFISHING_LINESNAP = "You dyamn fish, it took my tackle!",
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
        "Go the other way dyamn it!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "GET UP AND KILL THEM ALL!",
    ANNOUNCE_CARRAT_ERROR_WALKING = "Go go go goooo!",
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

	ANNOUNCE_POCKETWATCH_PORTAL = "I think myeow future self just told me to kill myeowself.",

--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
--fallback to speech_wilson.lua 	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "This world has so many useless secrets ugh.",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "This is old myews.",
    ANNOUNCE_ARCHIVE_NO_POWER = "It needs powering up.",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "I feel almyost dirty looking so deep into this.",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "Hope it grows into something good.",

    ANNOUNCE_FERTILIZER_RESEARCHED = "Oh hell nyo, i know what poop it likes eating now.",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"I feel like i'll explode.",
		"I'm burning up, jeez!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "Phew... i feel better meow.",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "Can you hurry up, cupcake?",
        "Hm... how would she do it... Uh, grow big and... i'll kiss you, darling?",
		"Uhh, grow... big, or something.",
        "Hurry up, what's taking to long!",
        "I wish i could live like you... buried in the ground.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "We're starting now??",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "What do you want from me, cupcake.",
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
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "Take your time, Welina!",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "Dyamn, i lost...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "There's no way they'd run so far out.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "This place should be better.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "What are YOU doing here, cupcake",

	ANNOUNCE_TICOON_START_TRACKING	= "Give me a paw.",
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
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Don't think I won't find you, I will!",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "This curse is such a pain!",
    ANNOUNCE_MONKEY_CURSE_1 = "Ohh i don't feel as catty anymore.",
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

    ANNOUNCE_CHAIR_ON_FIRE = "Ohh, i'll burn to death!",

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
		SPIDER_WARRIOR = "You'll thank meow for this.",
		DEER = "That's it for you.",
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
        MOONROCKIDOL = "Can't have anything for free in this world.",
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

        BALLOONS_EMPTY = "They remind me of happiness, hate that.",
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
        BOOK_WEB = "It doesn't make anything explode or combust, lame!",
        BOOK_TEMPERATURE = "Helps stay cool, too bad i'm already always cool.",
        BOOK_LIGHT = "It's unironically light..",
        BOOK_RAIN = "It could help keep meow dry forever!",
        BOOK_MOON = "How does a book summon a full moon, that's dumb.",
        BOOK_BEES = "Beeslavery here.",
        
        BOOK_HORTICULTURE_UPGRADED = "This means i have to spend less time in a garden, right?",
        BOOK_RESEARCH_STATION = "This much knowledge would make my brain explode.",
        BOOK_LIGHT_UPGRADED = "This one's even lighter.",

        FIREPEN = "This really how pens work?",

        PLAYER =
        {
            GENERIC = "What's up cupcake.",
            ATTACKER = "%s, you're and evil one...",
            MURDERER = "You love killing boys don't you.",
            REVIVER = "%s is a good person.",
            GHOST = "%s needs a heart.",
            FIRESTARTER = "%s why are you burning stuff.",
        },
        WILSON =
        {
            GENERIC = "'Sup, spike-head %s.",
            ATTACKER = "Why would you hurt someone like that!",
            MURDERER = "This is it, if i don't end you here, no one will!",
            REVIVER = "%s is really nice.",
            GHOST = "Do you really want to come back to this world.",
            FIRESTARTER = "You're starting more trouble than it's worth...",
        },
        WOLFGANG =
        {
            GENERIC = "Hey, big man %s.",
            ATTACKER = "You have to be more careful around others, %s!",
            MURDERER = "You. Murderer.",
            REVIVER = "%s is actually pretty nice.",
            GHOST = "I gotta find a heart.",
            FIRESTARTER = "You really want to stir up trouble, %s?",
        },
        WAXWELL =
        {
            GENERIC = "That face looks so familiar, so... punchable.",
            ATTACKER = "What the hell, he's back causing trouble!",
            MURDERER = "Murderer, you will pay for this.",
            REVIVER = "This has to be some sort of trick, %s.",
            GHOST = "%s is looking quite dead.",
            FIRESTARTER = "Why are you wrecking all our stuff, %s!",
        },
        WX78 =
        {
            GENERIC = "Yo, tin can %s.",
            ATTACKER = "If you wanna fight, i'm ready for it!",
            MURDERER = "I will rip you to bits, killer tin can!",
            REVIVER = "%s is not really bad? Crazy...",
            GHOST = "How can robots be ghosts like that?",
            FIRESTARTER = "%s wasn't joking about burning the world down??",
        },
        WILLOW =
        {
            GENERIC = "Hey, crazy girl %s.",
            ATTACKER = "%s you're not my friend...",
            MURDERER = "You killer, prepare to die.",
            REVIVER = "%s you're really good with ghosts.",
            GHOST = "I gotta find a heart for y-you, %s.",
            FIRESTARTER = "Uh-oh, she's really starting fires, unironically.",
        },
        WENDY =
        {
            GENERIC = "'Sup dead-sis kid.",
            ATTACKER = "%s is already killing people!",
            MURDERER = "You think i won't kill a child, cupcake? Nya-hah!",
            REVIVER = "%s defies death itself... cool.",
            GHOST = "%s, you're the spitting image of your sister now. ",
            FIRESTARTER = "Keep clear of torches next time, cupcake.",
        },
        WOODIE =
        {
            GENERIC = "What's up, hair-ball %s.",
            ATTACKER = "%s why are you acting so strange.",
            MURDERER = "Axe murderer! So cool.",
            REVIVER = "%s is quite in touch with the spirits.",
            GHOST = "I'll have to find you a heart...",
            BEAVER = "Nya-hah, how he turn into... that.",
            BEAVERGHOST = "Does this count as roadkill?",
            MOOSE = "Nya-hah, how did he turn into... that.",
            MOOSEGHOST = "Does this count as roadkill?",
            GOOSE = "Nya-hah, how did he turn into... that.",
            GOOSEGHOST = "Does this count as roadkill?",
            FIRESTARTER = "You shouldn't be throwing a torch around like that!",
        },
        WICKERBOTTOM =
        {
            GENERIC = "'Sup, grandmeow %s.",
            ATTACKER = "%s, you're acting up a little.",
            MURDERER = "You grandmeow are taking things too far.",
            REVIVER = "%s is a really relyable person.",
            GHOST = "I'll help you right away, %s.",
            FIRESTARTER = "I didn't think you were the type to destroy stuff.",
        },
        WES =
        {
            GENERIC = "I was told to stay away from people that look \"french\".",
            ATTACKER = "%s he's so... creepy!",
            MURDERER = "Do you hate everynyan too?",
            REVIVER = "%s is good at heart...",
            GHOST = "Well, at least you have don't have only nyaine lives %s...",
            FIRESTARTER = "Can you STOP BURNING things.",
        },
        WEBBER =
        {
            GENERIC = "Ugh, another spider. Wait no, that's %s.",
            ATTACKER = "Hey kid, you're looking a little worked up...",
            MURDERER = "He's just a spider, i can stomp him to death easily!",
            REVIVER = "You know what, cupcake, you're not that bad.",
            GHOST = "Oh someowne squashed %s good.",
            FIRESTARTER = "Bet you find burning stuff up fun huh?",
        },
        WATHGRITHR =
        {
            GENERIC = "Hey, red-head %s.",
            ATTACKER = "I don't like you, %s.",
            MURDERER = "She's bloodthirsty, for my blood, kill her!",
            REVIVER = "%s is more reliable than me, for sure.",
            GHOST = "Do you want me to get a heart, %s?",
            FIRESTARTER = "You better keep away from those torches!",
        },
        WINONA =
        {
            GENERIC = "Hi, build-a-girl %s.",
            ATTACKER = "%s, i don't think i like your attitude...",
            MURDERER = "I'll kill you for my own sake, %s!",
            REVIVER = "%s is a good friend, in a pinch.",
            GHOST = "Heh, cat got your tongue, %s.",
            FIRESTARTER = "You're a little careless, with torches, %s.",
        },
        WORTOX =
        {
            GENERIC = "Hey, demon-boy %s.",
            ATTACKER = "You could get in trouble for acting like that.",
            MURDERER = "Time to find out if you bleed, monster!",
            REVIVER = "You have a soft spot for others, huh.",
            GHOST = "Look on the bright side, and go towards the light.",
            FIRESTARTER = "I don't like how you smell of charcoal and ash, %s.",
        },
        WORMWOOD =
        {
            GENERIC = "Hi, %s.",
            ATTACKER = "Ugh, not just a useless plant, but a KILLER useless plant.",
            MURDERER = "All good, %s. I'll meowk it QUICK.",
            REVIVER = "You can be helpful too, i guess.",
            GHOST = "Didn't know plants die like that.",
            FIRESTARTER = "%s i thought you didn't like fires, cupcake, what's up?",
        },
        WARLY =
        {
            GENERIC = "What's up, curly-hair %s.",
            ATTACKER = "%s, i don't like your twisted grin.",
            MURDERER = "Are you one of those people that eat cats!?",
            REVIVER = "You're a reliable one, %s.",
            GHOST = "Oh no, the cook got cooked.",
            FIRESTARTER = "%s, the fires should stay IN the KITCHEN.",
        },

        WURT =
        {
            GENERIC = "Heyo, fish-a-fish %s.",
            ATTACKER = "You don't seem real friendly, fishy.",
            MURDERER = "%s, just like all the other merms, disgusting.",
            REVIVER = "Doing good work out there kiddo, %s.",
            GHOST = "Is that what they call a \"fish in a barrel\" or something?",
            FIRESTARTER = "I can't believe this fish is starting fires around.",
        },

        WALTER =
        {
            GENERIC = "Hey, kid.",
            ATTACKER = "This lil' kid's throewing punches? Hah.",
            MURDERER = "Sorry kid, it's the end of the line.",
            REVIVER = "Doing good work there, kid.",
            GHOST = "Hm, i could revive you... or rather...",
            FIRESTARTER = "All that talk about fire safety and YOU'RE the one causing trouble.",
        },

        WANDA =
        {
            GENERIC = "It's that nerdy time grandmeow, %s.",
            ATTACKER = "You seem rather dangerous, %s?",
            MURDERER = "She's a killer, and she'll kill meow too!",
            REVIVER = "I appreciate your help, %s.",
            GHOST = "Deaths catches up to everyone.",
            FIRESTARTER = "Your methods seem a bit dangerous, %s.",
        },

        WONKEY =
        {
            GENERIC = "Oh god, the meownkey has returned for ME.",
            ATTACKER = "Hey, meownkey, you can't just go around attacking people.",
            MURDERER = "Alright, now you've done it, ape.",
            REVIVER = "This meownkey's more reliable than i thought.",
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
            GENERIC = "It seems to be happy, disgusting.",
            SLEEPING = "This thing is so carelessly happy, UGHHH.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "All these flowers look the same to me.",
            DEAD = "It turned sad and gray.",
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

		WEBBERSKULL = "Don't tell me all spiders have a skull inside, ugh.",
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
			ABOVEGROUND = "MEOW'S THE TIME TO STRIKE.",
		},
		MOLEHILL = "You can't escape me, rat.",
		MOLEHAT = "I used to be able to see in the dark at one point.",

		EEL = "I could gobble it whole.",
		EEL_COOKED = "I'm watering at my meowth.",
		UNAGI = "This is one of the few things that bring any semblance of joy in life.",
		EYETURRET = "It's a slave, my slave.",
		EYETURRET_ITEM = "I should throw it in the ocean, end its misery.",
		MINOTAURHORN = "That's one less creature in this miserable world.",
		MINOTAURCHEST = "Is this what that beast was guarding?",
		THULECITE_PIECES = "It takes a few to make a whole.",
		POND_ALGAE = "Some underground plant or whatever.",
		GREENSTAFF = "Meow one should be capable of undoing their mistakes.",
		GIFT = "This does not bring joy, only misery.",
        GIFTWRAP = "I could wrap myself with this... to a tree.",
		POTTEDFERN = "Decoration, it's supposed to bring happiness or something.",
        SUCCULENT_POTTED = "That pot is protecting it from the cruelty of the world.",
		SUCCULENT_PLANT = "Succulent huh.",
		SUCCULENT_PICKED = "Oh this meowst suck-ulent.",
		SENTRYWARD = "Some kind of magic what-now.",
        TOWNPORTAL =
        {
			GENERIC = "Get you around... at a cost.",
			ACTIVE = "The time has come.",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "There's a shiny hidden in that.",
			ACTIVE = "The time has come.",
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
		RUINSHAT = "Being a ruler would have me crushed by the weight of the world.",
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
		KNIGHT_NIGHTMARE = "Should i just end its pathetic life?",
		MINOTAUR = "It must have a story to tell, too bad i don't care.",
		SPIDER_DROPPER = "At least they're chestless.",
		NIGHTMARELIGHT = "This seems awfully inconvinient if you're trying to light a place up.",
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

        LICHEN = "A plant is able to remain careless, i cannot.",
		CUTLICHEN = "It works, i guess.",

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
            BURNT = "What a shame.",
        },
        SLEEPBOMB = "If only i could sleep meowself with it, eternally.",
        MUSHROOMBOMB = "This certainly bombs meow plans.",
        SHROOM_SKIN = "It stinks of... I don't even know what this smell is.",
        TOADSTOOL_CAP =
        {
            EMPTY = "The hole from meow heart, but in the ground.",
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
            BURNT = "Surely this won't backfire.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "These things make meow dread a keen sense of smell.",
            BLOOM = "How gross.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "It's the meowtaphorical middle of the pack",
            BLOOM = "DON'T, do that next to me.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "It's almost as tall as me.",
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
            GENERIC = "Red makes me feel more aggressive.",
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
            BURNT = "Didn't make it fireproof, i guess.",
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
        STALAGMITE = "Always more rocks, anywhere and everywhere.",
        STALAGMITE_TALL = "Always more rocks, anywhere and everywhere.",

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

        TURF_SHELLBEACH = "It's the very ground we walk on.",

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
        CAVE_ENTRANCE_RUINS = "Curiosity won't kill me, surely.",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "That wasn't very bright of me...",
            OPEN = "Will curiosity kill me?",
            FULL = "T-There's one too many on the other end.",
        },
        CAVE_EXIT =
        {
            GENERIC = "Simply go towards the light",
            OPEN = "The only way is to keep going.",
            FULL = "T-Too many... people, on that other side.",
        },

		MAXWELLPHONOGRAPH = "It's a tool for playing meowsic.",--single player
		BOOMERANG = "My actions always end up harming me.",
		PIGGUARD = "A de meownority of pigmen.",
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
		ARMORMARBLE = "It's unbearably heavy.",
		ARMORWOOD = "The middle ground of armors.",
		ARMOR_SANITY = "My head hurts from all this nightmare stuff.",
		ASH =
		{
			GENERIC = "It's weirdly soothing.",
			REMAINS_GLOMMERFLOWER = "It's weirdly soothing.",
			REMAINS_EYE_BONE = "It's weirdly soothing.",
			REMAINS_THINGIE = "It's weirdly soothing.",
		},
		AXE = "My axe is my friend, it helps me relax.",
		BABYBEEFALO =
		{
			GENERIC = "Seeing you suddenly made me feel better about my looks, cupcake.",
		    SLEEPING = "Keep dreaming, death will catch up to you soon.",
        },
        BUNDLE = "What's trapped in there is a meowstery.",
        BUNDLEWRAP = "Pyacking things for a longer trip.",
		BACKPACK = "Helps meow carry hoard stuff around.",
		BACONEGGS = "You're telling meow this was baken on eggs?",
		BANDAGE = "It's pain that relives pain, how weird.",
		BASALT = "That's one fat rock.", --removed
		BEARDHAIR = "I think it's the equivalent of fur on humans.",
		BEARGER = "...Big brother..?",
		BEARGERVEST = "Almost enough to forget about the dark, cold world.",
		ICEPACK = "It's a portable cold-maker.",
		BEARGER_FUR = "Scratchy stuff.",
		BEDROLL_STRAW = "This will have me wake up with a burning back pain.",
		BEEQUEEN = "Kill the queen bee, plunge them into anarchy.",
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
            GENERIC = "Don't really care about arts and all.",
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
			BURNT = "Burnt honey probably doesn't taste good.",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "The meowshrooms have taken control of the log.",
			LOTS = "That's a lot of meowshrooms in that.",
			SOME = "Oh they're growing alright.",
			EMPTY = "Smells... \"piney\".",
			ROTTEN = "Time has taken its toll on it.",
			BURNT = "Complete massacre.",
			SNOWCOVERED = "The meowshrooms don't take kindly to these conditions.",
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
            MYPARTNER = "Don't mind meow, i'll just be using you for a bit, cupcake.",
		},

		BEEFALOHAT = "Makes you part of the pack.",
		BEEFALOWOOL = "A carpet out of this would be real nice.",
		BEEHAT = "An underhanded tactic against the bees.",
        BEESWAX = "I hate how it feels, ugh.",
		BEEHIVE = "They're all gathered in that.",
		BEEMINE = "Awaiting further instructions.",
		BEEMINE_MAXWELL = "Maybe I shouldn't have put that there.",--removed
		BERRIES = "They taste like, uh... berries.",
		BERRIES_COOKED = "Sticky and meowshy, a little distasteful.",
        BERRIES_JUICY = "They taste like, uh... well they taste berrier.",
        BERRIES_JUICY_COOKED = "Oh these go bad fast.",
		BERRYBUSH =
		{
			BARREN = "It's gotta get some fertilizer.",
			WITHERED = "If you can't stand the heat, don't get planted in the kitchen.",
			GENERIC = "This could be berry good.",
			PICKED = "How can it afford to grow so slow, when life is so short.",
			DISEASED = "What has brought this blight upon my world?",--removed
			DISEASING = "Looks a little off, if you ask me.",--removed
			BURNING = "I'll send my condolences to its family.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It's gotta get some fertilizer.",
			WITHERED = "If you can't stand the heat, don't get planted in the kitchen.",
			GENERIC = "This one's a tall bush.",
			PICKED = "How can it afford to grow so slow, when life is so short.",
			DISEASED = "What has brought this blight upon my world?",--removed
			DISEASING = "Looks a little off, if you ask me.",--removed
			BURNING = "I'll send my condolences to its family.",
		},
		BIGFOOT = "Now that is surely fuel for nightmares.",--removed
		BIRDCAGE =
		{
			GENERIC = "That's just life.",
			OCCUPIED = "They're trying to keep it safe from me.",
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
			INGROUND = "It's hiding from me.",
			PICKED = "No new inhabitants yet?",
		},
		BOARDS = "Some moewshed together logs.",
		BONESHARD = "Must've been alive at one point.",
		BONESTEW = "It's a filling meal.",
		BUGNET = "Sometimes you need them alive.",
		BUSHHAT = "Artificially boosting the bush population.",
		BUTTER = "I wanted butterfly wings, what the hell is this.",
		BUTTERFLY =
		{
			GENERIC = "It's pretty tasty-looking.",
			HELD = "Ripping their wings is pretty fun.",
		},
		BUTTERFLYMUFFIN = "This butterfly isn't going to be flying any time soon.",
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
		CACTUS_MEAT = "This would pain me all the way down.",
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
		CANE = "Speed is of the essence.",
		CATCOON = "They remind meow of myeowself, i hate myeowself.",
		CATCOONDEN =
		{
			GENERIC = "I find those pretty uncomfortable.",
			EMPTY = "Nothing lasts in this cursed world.",
		},
		CATCOONHAT = "What I hate about meowself is that I'm unbothered by this.",
		COONTAIL = "A tale that has gone cold.",
		CARROT = "A long and sturdy vegetable.",
		CARROT_COOKED = "Better than raw, i guess.",
		CARROT_PLANTED = "It's been grounded.",
		CARROT_SEEDS = "These yield carrots, or something.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Drawing is calming.",
			BURNING = "It's just destruction for the sake of destruction.",
			BURNT = "No use out of this anymore.",
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
        CHESSPIECE_CRABKING = "Not much of a king anymore.",
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
        CHESSPIECE_BEARGER_MUTATED = "The moon did a number on this one.",

        CHESSJUNK1 = "Some unfinished rubble.",
        CHESSJUNK2 = "Who am i to judge art.",
        CHESSJUNK3 = "How does it exist with no sight or hearing.",
		CHESTER = "It's close enough to a dog for me to dislike it.",
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
        CANARY_POISONED = "It looks like it's rotting from the outside.",

		CRITTERLAB = "A suspicious looking rock.",
        CRITTER_GLOMLING = "It's an innocent fool.",
        CRITTER_DRAGONLING = "Not sure how I feel about getting followed by one of these.",
		CRITTER_LAMB = "So unpleasant to touch.",
        CRITTER_PUPPY = "Disgusting little mutt.",
        CRITTER_KITTEN = "It's judgements are clouded by child-like naivety.",
        CRITTER_PERDLING = "I made it clear to stay away from myeow berries.",
		CRITTER_LUNARMOTHLING = "It glows, that's cool i guess.",

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
		LAVA_POND = "One of these days I'll just go for a swim in that.",
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
			GENERIC = "It's the continuation of life.",
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
		DRAGONPIE = "The sweetness does not bring me joy.",
		DRUMSTICK = "The meat of the birds.",
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
			BURNT = "Another one bites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			POISON = "Don't even think about birchnutting all over meow.",
			GENERIC = "These trees look too whimsical for my taste.",
		},
		ACORN = "I let it begin a nyew life, but why would i.",
        ACORN_SAPLING = "It's probably content with such a life.",
		ACORN_COOKED = "Even it cracked under pressure.",
		BIRCHNUTDRAKE = "Very aggressive, for its size.",
		EVERGREEN =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one bites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			GENERIC = "Spiky, sturdy, green.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one bites the dust.",
			CHOPPED = "It probably won't just grow back like that.",
			GENERIC = "It reminds meow a lot of myeowself.",
		},
		TWIGGYTREE =
		{
			BURNING = "That's a shyame.",
			BURNT = "Another one bites the dust.",
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
			BURNT = "A harvest of ashes.",
		},
		FEATHERHAT = "I'm not on good terms with the birds.",
		FEATHER_CROW = "Black suits meow the most.",
		FEATHER_ROBIN = "Weird, it's kind of warm.",
		FEATHER_ROBIN_WINTER = "Seeing this feather reminds meow of the cold.",
		FEATHER_CANARY = "The tastiest birds, if you ask meow.",
		FEATHERPENCIL = "This is how people write, pretty creative.",
        COOKBOOK = "It's a book about cooking or whatever.",
		FEM_PUPPET = "Better her than me.", --single player
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
		FIRESTAFF = "So destructive, for what purpose.",
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
            GENERIC = "Too cutesy.",
            ROSE = "I've been compared to a rose before.",
        },
        FLOWER_WITHERED = "A reminder of injustice.",
		FLOWERHAT = "That's way out of my fashion.",
		FLOWER_EVIL = "Pretty.",
		FOLIAGE = "This won't feed anyone, I don't think.",
		FOOTBALLHAT = "It will keep meow in the fight for longer.",
        FOSSIL_PIECE = "Whatever it was once, is no longer.",
        FOSSIL_STALKER =
        {
			GENERIC = "Whatever that's supposed to be.",
			FUNNY = "Something's wrong here, isn't it.",
			COMPLETE = "Why do I get the feeling it will come to life and kill me.",
        },
        STALKER = "I hate when I'm right.",
        STALKER_ATRIUM = "We could've just kept it dead but nooo.",
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
		FROGLEGS_COOKED = "I doubt they'll have any more jump in them after this.",
		FRUITMEDLEY = "Fruits are kinda boring to meow.",
		FURTUFT = "Hey, that's not mine!",
		GEARS = "Some robot parts or whatever.",
		GHOST = "It's mad at the world.",
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
		GREEN_CAP = "I was told not to shove random meowshrooms in my meowth, anymore.",
		GREEN_CAP_COOKED = "This isn't that bad.",
		GREEN_MUSHROOM =
		{
			GENERIC = "A wild meowshroom.",
			INGROUND = "They come out at different times of day.",
			PICKED = "That's not growing back any time soon.",
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
			GENERIC = "\"You are here\"... I really wish i wasn't...",
            UNWRITTEN = "Should I write my feelings on it.",
			BURNT = "It tells a story, of destruction.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "\"Thataway\"... guh.",
            UNWRITTEN = "Should i write my feelings on it.",
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
		ICEHOUND = "How many gems did this one swallow.",
		INSANITYROCK =
		{
			ACTIVE = "Is this rock... alive?",
			INACTIVE = "It doesn't seem, or look normal.",
		},
		JAMMYPRESERVES = "Gross, it's all over my hands.",

		KABOBS = "Do I really deserve to enjoy food like this.",
		KILLERBEE =
		{
			GENERIC = "It doesn't forgive nor forget, I relate.",
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
		LIGHTER  = "It does not light up that much, for a lighter.",
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
		LUREPLANT = "A deceptively cruel plant.",
		LUREPLANTBULB = "I can make it work for meow now.",
		MALE_PUPPET = "Better him than me.", --single player

		MANDRAKE_ACTIVE = "It's like claws on a chalkboard to my sensitive ears",
		MANDRAKE_PLANTED = "I have an urge to rip it out of the ground.",
		MANDRAKE = "Meowndrake.",

        MANDRAKESOUP = "He has been souped.",
        MANDRAKE_COOKED = "He has been cooked.",
        MAPSCROLL = "Markings of previous travels.",
        MARBLE = "That's some tough stuff.",
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
            GENERIC = "Spiky. Unpleasant. Like me.",
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
        MONKEYBARREL = "How do they all fit in there.",
        MONSTERLASAGNA = "Nya-huh, that doesn't smell good at all.",
        FLOWERSALAD = "Sallad is... depressing.",
        ICECREAM = "Why ameow screaming? Why wouldn't I scream? If you were smart you'd be doing the same thing.",
        WATERMELONICLE = "Encased in ice, like my heart",
        TRAILMIX = "Some trash in a bag.",
        HOTCHILI = "Hot chili peppers.",
        GUACAMOLE = "That nyose sticks out like a sore... uh, nose.",
        MONSTERMEAT = "Sad, blue myeat.",
        MONSTERMEAT_DRIED = "Sad, dried blue myeat.",
        MOOSE = "Close enough to a bird for meow to wanna eat it.",
        MOOSE_NESTING_GROUND = "AUGHHHH it's where that thing gives birth.",
        MOOSEEGG = "That could be a huge omeowlette right there.",
        MOSSLING = "They look very tasty.",
        FEATHERFAN = "It's the wind meowker.",
        MINIFAN = "Is this meant to be \"fun\".",
        GOOSE_FEATHER = "Bleh, the feathers don't taste as good as the birds.",
        STAFF_TORNADO = "You spin meow right round.",
        MOSQUITO =
        {
            GENERIC = "They're here to drink meow blood.",
            HELD = "Got you, nyacker.",
        },
        MOSQUITOSACK = "Stretchy stuff.",
        MOUND =
        {
            DUG = "It's ready for meow to jump in.",
            GENERIC = "Someone's dead and buried here.",
        },
        NIGHTLIGHT = "Light I can stare into without being blinded.",
        NIGHTMAREFUEL = "That rabbit girl goes crazy for this stuff.",
        NIGHTSWORD = "No man should have all that power.",
        NITRE = "That's some deep rock.",
        ONEMANBAND = "My ears are really sensitive to meowsic.",
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
        PETALS = "What was once a pretty flower has now been destroyed.",
        PETALS_EVIL = "Dark, twisted petals.",
        PHLEGM = "Nyuck.",
        PICKAXE = "Am I even strong enough to move rocks.",
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
        PLANTMEAT = "It doesn't taste like meowt at all.",
        PLANTMEAT_COOKED = "It tastes meowtier now but it's still off.",
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
        PURPLEAMULET = "I feel insane as is.",
        PURPLEGEM = "Purple rock, rocks are cool, I guess.",
        RABBIT =
        {
            GENERIC = "Those rabbits bring only trouble.",
            HELD = "S-She won't come and punish meow for eating him, right?",
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
        RAINCOAT = "I won't get any water on meowself!",
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
            GENERIC = "But it has no cat ears!",
            BURNT = "No one's using that no myore.",
        },
        RESURRECTIONSTONE = "What a lively stone.",
        ROBIN =
        {
            GENERIC = "The red one tastes better, it's softer to chew.",
            HELD = "Shut up, no one asked you anything!",
        },
        ROBIN_WINTER =
        {
            GENERIC = "These ones taste a lot like snow.",
            HELD = "Brrr, cold to hold.",
        },
        ROBOT_PUPPET = "Better them than me.", --single player
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
        PETRIFIED_TREE = "Stone cold, emotionless, unmoved, like meow.",
        ROCK_PETRIFIED_TREE = "Stone cold, emotionless, unmoved, like meow.",
        ROCK_PETRIFIED_TREE_OLD = "Stone cold, emotionless, unmoved, like meow.",
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
			DISEASING = "Looks a little off, if you ask me.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "A hanged man, minus the hanged part.",
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
        SCULPTURE_KNIGHTHEAD = "Whatever that chunk of marble is supposed to be.",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "What is this even supposed to be.",
			UNCOVERED = "Oh, it looks worse now.",
			FINISHED = "Oh it's one of these...",
			READY = "You can tell someone's not happy in there.",
		},
        SCULPTURE_BISHOPHEAD = "Whatever that chunk of marble is supposed to be.",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "Eh, some kind of vase, or whatever.",
			UNCOVERED = "Just head to go ahead and break it.",
			FINISHED = "Oh it's one of these...",
			READY = "You can tell someone's not happy in there.",
		},
        SCULPTURE_ROOKNOSE = "Whatever that chunk of marble is supposed to be.",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "Whoever slapped this together has no talent at all.",
			UNCOVERED = "Oh, looks slightly familiar now.",
			FINISHED = "Oh it's one of these...",
			READY = "You can tell someone's not happy in there.",
		},
        GARGOYLE_HOUND = "Oh you poor thing, if only anyone cared about you.",
        GARGOYLE_WEREPIG = "Oh you poor thing, if only anyone cared about you",
		SEEDS = "Eh, i'm not a bird.",
		SEEDS_COOKED = "Cooked bird food",
		SEWING_KIT = "Patch up for clothes and such.",
		SEWING_TAPE = "Getting this stuff stuck to meow is agonizing.",
		SHOVEL = "I enjoy digging graves, it calms meow down.",
		SILK = "Silky smooth, hmph, nyaice.",
		SKELETON = "Looks like they've found the way out.",
		SCORCHED_SKELETON = "This one didn't go out pretty.",
		SKULLCHEST = "That chest is calling to me.", --removed
		SMALLBIRD =
		{
			GENERIC = "Stop! Stop following meow!!",
			HUNGRY = "Hi hungry, I'm Welinya.",
			STARVING = "Well find something to eat then.",
			SLEEPING = "It finally shut up.",
		},
		SMALLMEAT = "I'll need a bigger piece of meat to keep afloat.",
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
		SPIDERDEN = "It's where they get stupider.",
		SPIDEREGGSACK = "Nyuck, what are these spider balls.",
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
            TYPE3 = "Nyack, I was about to bite into that bird.", --bird bath type statue
        },
		STATUEHARP = "A statue or whatever.",
		STATUEMAXWELL = "Is he a big shot around here, or something.",
		STEELWOOL = "Some real stubborn wool.",
		STINGER = "Yet my heart still stings.",
		STRAWHAT = "I'd chew on this hat, but that'd ruin it.",
		STUFFEDEGGPLANT = "It's full of... uhh, eggs?",
		SWEATERVEST = "Too friendly looking for meow.",
		REFLECTIVEVEST = "Not the most comfortable, but eh.",
		HAWAIIANSHIRT = "I'm not getting anywhere near the ocean anyway.",
		TAFFY = "Chewy, sugary, sweet. Nyack, it makes meow feel happiness.",
		TALLBIRD = "I want long legs like that too.",
		TALLBIRDEGG = "Wonder what those babies taste like.",
		TALLBIRDEGG_COOKED = "It wasn't alive enough to feel pain anyway.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Hey, hey, I can't eat it frozen like that.",
			GENERIC = "What the- it's hatching.",
			HOT = "Alright alright, let it cook now.",
			LONG = "It'll be a while before anything comes outta that.",
			SHORT = "Come out, cupcake. Ain't nothing bad gonna happen to you.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "I'm really tempted to eat that child.",
			PICKED = "Mhmmm, I don't think I can lay eggs.",
		},
		TEENBIRD =
		{
			GENERIC = "Dyamn, that's a meal and a half.",
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
			GENERIC = "I see terrible things when I close my eyes.",
			BURNT = "Sucks to be that tent, I guess.",
		},
		SIESTAHUT =
		{
			GENERIC = "What if I fall asleep by accident.",
			BURNT = "I don't think it'll do much now.",
		},
		TENTACLE = "I was told to stay away from these things specifically.",
		TENTACLESPIKE = "Oh cool, I can whack stuff around with, uhh... that.",
		TENTACLESPOTS = "They spread around with this stuff.",
		TENTACLE_PILLAR = "Jeez, how much bigger can they get.",
        TENTACLE_PILLAR_HOLE = "Almost as big as the hole in my heart.",
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
		TRINKET_22 = "Ughh, at least something to look forward to in life.", --Frayed Yarn
		TRINKET_23 = "Shoes don't have horns, the nyack.", --Shoehorn
		TRINKET_24 = "You're telling me this jar is made out of a cat???", --Lucky Cat Jar
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

        HALLOWEENCANDY_1 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_2 = "Nyone of these bring joy anymore",
        HALLOWEENCANDY_3 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_4 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_5 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_6 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_7 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_8 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_9 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_10 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_11 = "Nyone of these bring joy anymore.",
        HALLOWEENCANDY_12 = "Nyone of these bring joy anymore.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Nyone of these bring joy anymore.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Nyone of these bring joy anymore.", --Hot Lava pepper candy
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
        DRAGONTAILHAT = "I don't deserve to be anywhere but behind.",
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
        HOUNDWHISTLE = "I'm not looking to befriend any of those ugly dogs any time soon.",
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
            BURNT = "I've no use for it anymore.",
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
            BURNT = "It's of no use to me like this.",
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
            RAT = "You will thank me for making you stronger.",
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
            BURNT = "What a shame.",
        },
        BEEFALO_GROOMER_ITEM = "Do I look like a common construction worker? Oh very well...",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "What do you have in store for me?",
            EMPTY = "It requires an offering.",
            BURNT = "A pity.",
        },
-- this shit later
        NIGHTCAPHAT = "I'm not going to, you won't make meow.",

        YOTR_FOOD1 = "It better be made out of real rabbits.",
        YOTR_FOOD2 = "This tastes like bunny puff.",
        YOTR_FOOD3 = "That fruit is not getting outta there anytime soon.",
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
			GENERIC = "That's not holding anything together for long.",
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
		WALRUS = "His darts pierce my heart...",
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
		WARG = "Get this dog out of my sight.",
        WARGLET = "Let me put you out of your horrible existence.",

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
            BURNT = "What a shame.",
            BURNING = "Dyamn, nice light show.",
            CANDECORATE = "NO, NO IT DOES NOT BRING MEOW ANY JOY, NYUCK OFF.",
            YOUNG = "You still have time to grow, cupcake.",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "Joy...?",
            BURNT = "What a shame.",
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
		CABBAGEROLLS = "It's a bunch of meat rolled in leaves.",
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
		LIVINGTREE = "I'd give you a reason to smile, but isn't one.",
		ICESTAFF = "Iced to meet you.",
		REVIVER = "A fake heart, because you're all fake anyway...",
		SHADOWHEART = "My very own heart.",
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
		LIFEINJECTOR = "It relieves the pain, temporarily.",
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

        REDMOONEYE = "Can notice that shine from anywhere.",
        PURPLEMOONEYE = "Can notice that shine from anywhere.",
        GREENMOONEYE = "Can notice that shine from anywhere.",
        ORANGEMOONEYE = "Can notice that shine from anywhere.",
        YELLOWMOONEYE = "Can notice that shine from anywhere.",
        BLUEMOONEYE = "Can notice that shine from anywhere.",
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
        LAVAARENA_LIGHTDAMAGERHAT = "That is not suited to me.",
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

        QUAGMIRE_HOE = "This is so very beneath me.",

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
			PICKED = "That's not growing back anytime soon.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "That will spice things up.",
		QUAGMIRE_SPOTSPICE_GROUND = "Spicy.",
		QUAGMIRE_SAPBUCKET = "It's already sticky.",
		QUAGMIRE_SAP = "I would rather not get that on my gloves.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Ah. It's ready.",
			GENERIC = "Any method to improve the food around here is welcome.",
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
		QUAGMIRE_PEBBLECRAB = "You can't hide from me.",


		QUAGMIRE_RUBBLE_CARRIAGE = "Carriage carnage.",
        QUAGMIRE_RUBBLE_CLOCK = "Time's up.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "They didn't pray hard enough.",
        QUAGMIRE_RUBBLE_PUBDOOR = "If only it lead somewhere.",
        QUAGMIRE_RUBBLE_ROOF = "It's no longer over anyone's head.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "A late clocktower.",
        QUAGMIRE_RUBBLE_BIKE = "A bicycle built askew.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's living there anymore.",
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

        QUAGMIRE_PORTAL = "Nobody listens to me.",
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
        QUAGMIRE_GRILL_ITEM = "No use to me here.",
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
        QUAGMIRE_PARKSPIKE = "Spikey. Like me.",
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
        	OFF = "Nothing runs without motivation.",
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

        BOATFRAGMENT03 = "Broken to bits.",
        BOATFRAGMENT04 = "Broken to bits.",
        BOATFRAGMENT05 = "Broken to bits.",
		BOAT_LEAK = "Nyoooo- someone plug it plug it PLUG IT.",
        MAST = "Mast my life be so hard.",
        SEASTACK = "I can bump into that full speed and pray I die.",
        FISHINGNET = "Not my preferred way to ensnare enemies.", --unimplemented
        ANTCHOVIES = "ANTCHOVIEEEEEEEEEEEEEEEEEEES BAYBEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE", --unimplemented
        STEERINGWHEEL = "We're all just going to die if I'm in charge.",
        ANCHOR = "Stand still, dyamn you.",
        BOATPATCH = "Boat-specific healing.",
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
            GENERIC = "They blossom in the moon light.",
        },
		MOON_TREE_BLOSSOM = "Pretty and lively...",

        MOONBUTTERFLY =
        {
        	GENERIC = "How can it stay so carefree.",
        	HELD = "Let meow show you the misery of life.",
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
            CLOSED = "It doesn't like being stepped on? Shame.",
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
            GENERIC = "Looks as edible as any other bird.",
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
        MEGAFLARE = "This is a horrible idea.",

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
        MOON_ALTAR_SEED = "I hate when rocks talk to me.",

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
        	DEAD = "Put out of its misery.",
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
        	SLEEPING = "Wonder how many diseases it has.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Slimy, wet. Green.",
            PICKED = "There's nothing to take off it.",
        },
		BULLKELP_ROOT = "A bit weird to use.",
        KELPHAT = "Nyahh, it'll get my hair wet.",
		KELP = "I guess this is all I deserve.",
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
        OCEANFISH_MEDIUM_9 = "Mhmmm, it's making me hungry.",

		PONDFISH = "Ohh, looks like you came to the wrong side of the pond, cupcake.",
		PONDEEL = "Exotic.",

        FISHMEAT = "Nothing beats that.",
        FISHMEAT_COOKED = "So good~",
        FISHMEAT_SMALL = "Hey, at least it's fyesh.",
        FISHMEAT_SMALL_COOKED = "Hmhm, appetizer. HAHAHAHAHAHAHA.",
		SPOILED_FISH = "Nyuck, what a waste.",

		FISH_BOX = "Prison for my fyesh.",
        POCKET_SCALE = "On a dreadfulness scale from one to ten, my life is a ten.",

		TACKLECONTAINER = "I have too many problems to tackle.",
		SUPERTACKLECONTAINER = "There's nothing super about it.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "Not all fyesh is built equal.",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nMhmmrm, smells fyeshy.",
			BURNING = "Good things never last.",
			BURNT = "Can't have anything in this world.",
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
        MOON_FISSURE_PLUGGED = "There's a way to plug just about anything.",


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
			GENERIC = "Hm, there can be beauty in meowsery.",
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
        SPICEPACK = "Spice makes anything a bit better.",
        SPICE_GARLIC = "The smell keeps others from getting close to me. Good.",
        SPICE_SUGAR = "I'm too sour to feel anything sweet.",
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
        TURNIP_SEEDS = "Seeds for whatever, I don't know anymore.",

        GARLIC = "It's .",
        GARLIC_COOKED = "I wonder if it still wards away the undead.",
        GARLIC_SEEDS = "Am I supposed to plant these?",

        ONION = "It's a pungent onion.",
        ONION_COOKED = "Take that, onion.",
        ONION_SEEDS = "Am I supposed to plant these?",

        POTATO = "It is in the nightshade family, you know.",
        POTATO_COOKED = "The potato may be eaten now.",
        POTATO_SEEDS = "Am I supposed to plant these?",

        TOMATO = "It's a red, red tomato.",
        TOMATO_COOKED = "It's a red, red roasted tomato.",
        TOMATO_SEEDS = "Am I supposed to plant these?",

        ASPARAGUS = "We must always eat our vegetables.",
        ASPARAGUS_COOKED = "Smells terrible.",
        ASPARAGUS_SEEDS = "Such labor is beneath me.",

        PEPPER = "Looks like the spicy kind.",
        PEPPER_COOKED = "Slightly more exciting than the usual vegetable.",
        PEPPER_SEEDS = "Am I supposed to plant these?",

        WEREITEM_BEAVER = "It seems he's learning to bend the curse to his will.",
        WEREITEM_GOOSE = "Ugh, it offends my eyes.",
        WEREITEM_MOOSE = "Almost as powerful as it is tacky.",

        MERMHAT = "This seems rather... fishy.",
        MERMTHRONE =
        {
            GENERIC = "Not especially impressive for a \"throne\".",
            BURNT = "Someone finally took care of that hideous throw rug.",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "What is that little creature up to?",
            BURNT = "Such a waste of time and energy.",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "It's slightly less offensive to my eyes than the others.",
            BURNT = "It's been burned to the ground.",
        },

        MERMWATCHTOWER_REGULAR = "They're flying the royal banner.",
        MERMWATCHTOWER_NOKING = "A kingdom without a king.",
        MERMKING = "A crown can be a heavy burden...",
        MERMGUARD = "I'd best try to stay on their good side.",
        MERM_PRINCE = "Kings are easily made around here.",

        SQUID = "I hope they stay close. But not too close.",

		GHOSTFLOWER = "I hope they found peace.",
        SMALLGHOST = "I'm so sorry.",

        CRABKING =
        {
            GENERIC = "Say, pal, why don't we try to work this out?",
            INERT = "I suppose we can't just leave well enough alone, can we?",
        },
		CRABKING_CLAW = "Best to avoid that.",

		MESSAGEBOTTLE = "Someone sensibly bottled up their feelings and tossed them out to sea.",
		MESSAGEBOTTLEEMPTY = "It's empty inside.",

        MEATRACK_HERMIT =
        {
            DONE = "Does she even have teeth?",
            DRYING = "Still moist.",
            DRYINGINRAIN = "Moist and staying that way.",
            GENERIC = "Perhaps if she were fed, she'd be less ill-tempered.",
            BURNT = "It's too brittle to hang meat on now.",
            DONE_NOTMEAT = "Like the desert.",
            DRYING_NOTMEAT = "Still moist.",
            DRYINGINRAIN_NOTMEAT = "Moist and staying that way.",
        },
        BEEBOX_HERMIT =
        {
            READY = "I've done enough, the old woman can brave the bees herself.",
            FULLHONEY = "I've done enough, the old woman can brave the bees herself.",
            GENERIC = "I think she made this herself.",
            NOHONEY = "Why do the bees not serve me?",
            SOMEHONEY = "I should wait a bit longer.",
            BURNT = "Honey roasted.",
        },

        HERMITCRAB = "I have better things to do than being berated by an old crab.",

        HERMIT_PEARL = "It's... strange to be so trusted.",
        HERMIT_CRACKED_PEARL = "Ah. I thought I'd run out of people to disappoint.",

        -- DSEAS
        WATERPLANT = "I'm sure its delicate appearance is just a ruse for us to let our guard down.",
        WATERPLANT_BOMB = "I was right.",
        WATERPLANT_BABY = "I should pluck you like the weed you are.",
        WATERPLANT_PLANTER = "Why would I want these to spread?",

        SHARK = "What a nasty creature. I wish I'd thought of it.",

        MASTUPGRADE_LAMP_ITEM = "Far more practical than setting a fire on our boat.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "Very prudent.",

        WATERPUMP = "Higgsbury, I think a bucket would have sufficed...",

        BARNACLE = "I wish they were oysters.",
        BARNACLE_COOKED = "It's an acquired taste.",

        BARNACLEPITA = "I suppose I'll eat it if there's nothing else.",
        BARNACLESUSHI = "At least it's an attempt at sophistication.",
        BARNACLINGUINE = "It's surprisingly delicious.",
        BARNACLESTUFFEDFISHHEAD = "I suppose anything is \"food\" now.",

        LEAFLOAF = "Exceptionally mediocre.",
        LEAFYMEATBURGER = "How pedestrian.",
        LEAFYMEATSOUFFLE = "I appreciate the attempt at presentation.",
        MEATYSALAD = "This seems suspect.",

        -- GROTTO

		MOLEBAT = "Indecent.",
        MOLEBATHILL = "Do I even want anything I find in there, knowing it spent time in a rodent's nostrils?",

        BATNOSE = "It smells.",
        BATNOSE_COOKED = "The things I must do to survive...",
        BATNOSEHAT = "Do I have no dignity left?",

        MUSHGNOME = "I don't trust anyone who walks so jauntily.",

        SPORE_MOON = "It reminds me of those infernal balloons.",

        MOON_CAP = "Strange, my eyelids are getting heavy just looking at it.",
        MOON_CAP_COOKED = "Odd, but not unpleasant.",

        MUSHTREE_MOON = "How garish.",

        LIGHTFLIER = "Finally, a mutation that's actually useful.",

        GROTTO_POOL_BIG = "Don't expect me to wade in there for some wretched moon glass.",
        GROTTO_POOL_SMALL = "I suppose it is quite picturesque.",

        DUSTMOTH = "Hmph. Just stay away from my suit, pal.",

        DUSTMOTHDEN = "So this is the source of the Thulecite... I must say, I'm underwhelmed.",

        ARCHIVE_LOCKBOX = "Impossible... I thought I was privy to all of Their secrets.",
        ARCHIVE_CENTIPEDE = "I get the sensation that we are not welcome here.",
        ARCHIVE_CENTIPEDE_HUSK = "A pile of worthless parts.",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "Wait for it...",
            COOKING_SHORT = "Here it comes!",
            DONE = "Finally, some quality grub.",
            EMPTY = "They didn't always live off of the fuel.",
            BURNT = "A bit overdone for my tastes.",
        },

        ARCHIVE_MOON_STATUE = "How did I not know of this place? Did They know?",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "These runes are... different.",
            LINE_2 = "I can only glean a hint of their meaning.",
            LINE_3 = "This symbol here keeps repeating...",
            LINE_4 = "\"To change?\" No. It's a name...",
            LINE_5 = "\"Alter\"?",
        },

        ARCHIVE_RESONATOR = {
            GENERIC = "It's leading us to something...",
            IDLE = "It fulfilled its purpose.",
        },

        ARCHIVE_RESONATOR_ITEM = "I have many questions.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "I always wondered where those parts came from.",
          GENERIC =  "Ah. I suppose I misinterpreted the original design.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "It's powerless.",
            GENERIC = "Hm. I have a bad feeling...",
        },

        ARCHIVE_SECURITY_PULSE = "Don't let it escape!",

        ARCHIVE_SWITCH = {
            VALID = "It saps power from the gems.",
            GEMS = "I suppose I'll need to find a suitable gem.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "It couldn't be...",
            GENERIC = "Still inactive. Curious.",
        },

        WALL_STONE_2 = "This will keep the riff-raff out.",
        WALL_RUINS_2 = "An ancient wall.",

        REFINED_DUST = "It may have some alchemical uses.",
        DUSTMERINGUE = "I'll pass.",

        SHROOMCAKE = "I suppose I've eaten worse.",

        NIGHTMAREGROWTH = "Charlie... what are you planning?",

        TURFCRAFTINGSTATION = "I despise getting my hands dirty.",

        MOON_ALTAR_LINK = "Events have been set into motion...",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "Disgusting.",
            WET = "It's nothing but foul wet slop.",
            DRY = "Positively arid.",
            BALANCED = "This should suffice.",
            BURNT = "It smells about as bad as you'd imagine.",
        },
        COMPOST = "I'd rather not get my hands dirty.",
        SOIL_AMENDER =
		{
			GENERIC = "It looks more like a science experiment than a fertilizer.",
			STALE = "Wonderful, it's putrefying.",
			SPOILED = "Ugh, the smell... can we just put it in the ground already?",
		},

		SOIL_AMENDER_FERMENTED = "It's reached the peak of its power... and its stench.",

        WATERINGCAN =
        {
            GENERIC = "Surely someone else can do these menial tasks?",
            EMPTY = "So I'm to traipse around looking for water, then?",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "I really don't care for gardening.",
            EMPTY = "Surely there must be some water nearby.",
        },

		FARM_PLOW = "Thankfully it seems capable of doing the work itself.",
		FARM_PLOW_ITEM = "Some kind of farming implement? I've no interest in such things.",
		FARM_HOE = "Am I to be reduced to a common farmhand?",
		GOLDEN_FARM_HOE = "A bit extravagant, don't you think?",
		NUTRIENTSGOGGLESHAT = "I suppose the Ancients were farmers once, before they turned to the fuel.",
		PLANTREGISTRYHAT = "I'm really supposed to put that contraption on my head?",

        FARM_SOIL_DEBRIS = "The blasted things spring up again just as fast as I can remove them.",

		FIRENETTLES = "Blasted nettles!",
		FORGETMELOTS = "Nothing but a common weed.",
		SWEETTEA = "I can't even remember the last time I had a decent cup of tea.",
		TILLWEED = "Nuisance.",
		TILLWEEDSALVE = "This will have to do.",
        WEED_IVY = "You have no place here.",
        IVY_SNARE = "I nearly got my suit caught on those thorns!",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "Do we not have infinitely more pressing things to do?",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nA moderately impressive display",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nI suppose it's an accomplishment.",
            HAS_ITEM_LIGHT = "The bar has been set low, I see.",
			BURNING = "...And now it's on fire.",
			BURNT = "Reduced to dust.",
        },

        CARROT_OVERSIZED = "A ludicrously oversized carrot.",
        CORN_OVERSIZED = "That's far too much corn for any reasonable person.",
        PUMPKIN_OVERSIZED = "How very spooky.",
        EGGPLANT_OVERSIZED = "An absurdly large eggplant.",
        DURIAN_OVERSIZED = "Far more than I'd like to have, quite honestly.",
        POMEGRANATE_OVERSIZED = "I'd imagine it would take quite a while to eat.",
        DRAGONFRUIT_OVERSIZED = "Utterly enormous.",
        WATERMELON_OVERSIZED = "Entirely too much watermelon.",
        TOMATO_OVERSIZED = "A preposterously sized tomato.",
        POTATO_OVERSIZED = "It has more starch than my best suit.",
        ASPARAGUS_OVERSIZED = "What am I supposed to do with all this asparagus?",
        ONION_OVERSIZED = "An unnecessarily large onion.",
        GARLIC_OVERSIZED = "An unreasonably enormous clump of garlic.",
        PEPPER_OVERSIZED = "It looks horribly spicy.",

        VEGGIE_OVERSIZED_ROTTEN = "It's no good to anyone now.",

		FARM_PLANT =
		{
			GENERIC = "Merely a plant.",
			SEED = "I'll have to be patient.",
			GROWING = "Nearly there.",
			FULL = "It's time to reap what I've sown.",
			ROTTEN = "Rotten.",
			FULL_OVERSIZED = "At last, my efforts are rewarded.",
			ROTTEN_OVERSIZED = "It's no good to anyone now.",
			FULL_WEED = "Not another blasted weed!",

			BURNING = "Not the garden!",
		},

        FRUITFLY = "Begone, pest!",
        LORDFRUITFLY = "Hmph, they let just anyone be a lord these days.",
        FRIENDLYFRUITFLY = "As long as it tends to the garden I'll leave it be.",
        FRUITFLYFRUIT = "So this is all it takes to lead.",

        SEEDPOUCH = "One more thing to lug from place to place.",

		-- Crow Carnival
		CARNIVAL_HOST = "Just look at him, strutting around like he owns the place.",
		CARNIVAL_CROWKID = "We're being overrun.",
		CARNIVAL_GAMETOKEN = "Fine. I'll play your silly little games.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "A prize ticket. How exciting.",
			GENERIC_SMALLSTACK = "I don't know why I'm dedicating so much time to this.",
			GENERIC_LARGESTACK = "Oh good. Now I can get some useless trinket from the Prize Booth.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "What are they hiding down there...",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "It requires payment.",
			PLAYING = "I'll play it, but I won't enjoy it.",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "I suppose I'm expected to set this up myself?",
		CARNIVALGAME_FEEDCHICKS_FOOD = "These props leave something to be desired.",

		CARNIVALGAME_MEMORY_KIT = "I suppose I'm expected to set this up myself?",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "It requires payment.",
			PLAYING = "A simple matter of memorization. I'll show you just how easy it is.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "What are they hiding down there...",
			PLAYING = "I'm almost certain it was this one...",
		},

		CARNIVALGAME_HERDING_KIT = "I suppose I'm expected to set this up myself?",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "It requires payment.",
			PLAYING = "Such pointless frivolity...",
		},
		CARNIVALGAME_HERDING_CHICK = "Get back here, you blasted contraption!",

		CARNIVALGAME_SHOOTING_KIT = "I suppose I'm expected to set this up myself?",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "It requires payment.",
			PLAYING = "Another mindless diversion.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "What are they hiding down there...",
			PLAYING = "I'm certain it's rigged.",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "It requires payment.",
			PLAYING = "Well, I suppose a bit of destruction might be relaxing.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "I suppose I'm expected to set this up myself?",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "It requires payment.",
			PLAYING = "A meaningless victory.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "I suppose I'm expected to set this up myself?",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "It requires payment.",
			PLAYING = "I imagine some people might find this amusing.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "Must I do everything around here?",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "I somehow doubt they'd have anything I want.",
		},

		CARNIVALCANNON_KIT = "Must I do everything around here?",
		CARNIVALCANNON =
		{
			GENERIC = "This place is turning into a circus.",
			COOLDOWN = "That's more than enough cheer for one day.",
		},

		CARNIVAL_PLAZA_KIT = "It's so... ugh... whimsical.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "It's about as festive as I like it. Which is not at all.",
			LEVEL_2 = "The birds seem to enjoy it. Some creatures just lack any taste.",
			LEVEL_3 = "I think that's about as much clutter as one could possibly throw on a tree.",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "There's no end to the work around here, it seems.",
		CARNIVALDECOR_EGGRIDE = "Wonderful. It's even tackier than I imagined it would be.",

		CARNIVALDECOR_LAMP_KIT = "There's no end to the work around here, it seems.",
		CARNIVALDECOR_LAMP = "A paltry light source. But it will do.",
		CARNIVALDECOR_PLANT_KIT = "There's no end to the work around here, it seems.",
		CARNIVALDECOR_PLANT = "At least it's small and somewhat manageable.",
		CARNIVALDECOR_BANNER_KIT = "There's no end to the work around here, it seems.",
		CARNIVALDECOR_BANNER = "Oh good. Wouldn't want anyone thinking we've got taste around here, would we?",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "What exactly is so fantastic about it?",
			UNCOMMON = "Measly things. In my time I made proper statues...",
			GENERIC = "One more thing to clutter the ground.",
		},
		CARNIVALDECOR_FIGURE_KIT = "Curiosity always seems to get the better of me.",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "Curiosity always seems to get the better of me.",

        CARNIVAL_BALL = "How novel.", --unimplemented
		CARNIVAL_SEEDPACKET = "About as pleasant as you'd expect.",
		CARNIVALFOOD_CORNTEA = "Surely you're not serious?",

        CARNIVAL_VEST_A = "Far too jaunty for my taste.",
        CARNIVAL_VEST_B = "At least it will give me some respite from this wretched heat.",
        CARNIVAL_VEST_C = "It affords some protection from the sun's burning rays.",

        -- YOTB
        YOTB_SEWINGMACHINE = "I'm more of an appreciator of fine clothes than a maker of them.",
        YOTB_SEWINGMACHINE_ITEM = "Why must these things come unassembled?",
        YOTB_STAGE = "Hmph. What makes him think he's qualified to pass judgement?",
        YOTB_POST =  "Enjoy your time in the spotlight while you can.",
        YOTB_STAGE_ITEM = "Oh good, something more to build.",
        YOTB_POST_ITEM =  "This seems like a dreadful amount of effort.",


        YOTB_PATTERN_FRAGMENT_1 = "I'll have to combine them before they'll reveal their secrets.",
        YOTB_PATTERN_FRAGMENT_2 = "I'll have to combine them before they'll reveal their secrets.",
        YOTB_PATTERN_FRAGMENT_3 = "I'll have to combine them before they'll reveal their secrets.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "I've no need for such things. Perhaps one of the children might take it.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "I've no need for such things.",
            YOTB = "This might be of interest to the judge.",
        },

        WAR_BLUEPRINT = "This could be useful.",
        DOLL_BLUEPRINT = "I can only imagine how grotesque this will look...",
        FESTIVE_BLUEPRINT = "Positively garish.",
        ROBOT_BLUEPRINT = "Is this the robot's doing?",
        NATURE_BLUEPRINT = "Florals. How saccharine.",
        FORMAL_BLUEPRINT = "These garments are absolutely wasted on such base creatures.",
        VICTORIAN_BLUEPRINT = "Hmph. Rather outdated.",
        ICE_BLUEPRINT = "Chilling.",
        BEAST_BLUEPRINT = "I'd say luck is in rather short supply around here.",

        BEEF_BELL = "It appears to have some kind of hypnotic effect on beefalo.",

		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "A house for kitcoons? Can the pitiful little things not climb trees yet?",
            BURNT = "No place to hide anymore.",
			PLAYING_HIDEANDSEEK = "They are not here, they are out hiding.",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "We are nearly out of time to find all of the rascals.",
		},

		KITCOONDEN_KIT = "I don't see why I need to build them a house. They need to learn to climb trees like adults.",

		TICOON =
		{
			GENERIC = "This high status catcoon has a talent for finding the kits. I respect him only marginally more.",
			ABANDONED = "I didn't need his help anyway.",
			SUCCESS = "Well done, great beast!",
			LOST_TRACK = "Blasted, we weren't fast enough! Sniff faster, beast!",
			NEARBY = "A-ha... there's a kitcoon afoot.",
			TRACKING = "He seems onto something. I shall let him take the lead.",
			TRACKING_NOT_MINE = "That ticoon is not working for me. Yet.",
			NOTHING_TO_TRACK = "There's nothing left to find.",
			TARGET_TOO_FAR_AWAY = "His nose may be good, but I doubt it's good enough to track that far.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "I suppose even a thief has its admirers.",
            EMPTY = "It seems we're supposed to offer it something.",
            BURNT = "Seems not everyone appreciates the little thieves.",
        },

		KITCOON_FOREST = "What a pathetic little creature. It's encumbered by excess fur.",
		KITCOON_SAVANNA = "What a pathetic little creature. It's pretending to be a much more respectable beast.",
		KITCOON_MARSH = "What a pathetic little creature. It smells of sulphur.",
		KITCOON_DECIDUOUS = "What a pathetic little creature. It will likely grow up to pick my pockets.",
		KITCOON_GRASS = "What a pathetic little creature. Just looking at it makes me itch.",
		KITCOON_ROCKY = "What a pathetic little creature. It doesn't even have the grace of a catcoon.",
		KITCOON_DESERT = "What a pathetic little creature. Those ears are ridiculous.",
		KITCOON_MOON = "What a pathetic little creature. It requires dental work.",
		KITCOON_YOT = "What a pathetic little creature, and in such a gaudy outfit.",

        -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "It seems our actions have been noticed.",
            DEAD = "Something doesn't feel right...",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "It toys with us.",
            DEAD = "Come on now. You're not fooling anyone.",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "It's trying to ensnare us.",
        ALTERGUARDIAN_PHASE3 = "At last you reveal your true self.",
        ALTERGUARDIAN_PHASE3TRAP = "I'd do well to avoid those.",
        ALTERGUARDIAN_PHASE3DEADORB = "This power, it feels like... but it couldn't be...",
        ALTERGUARDIAN_PHASE3DEAD = "I don't know what to believe. All this time, I thought that They were...",

        ALTERGUARDIANHAT = "It makes me uneasy... but I can't deny its power.",
        ALTERGUARDIANHATSHARD = "Even shattered, it holds power.",

        MOONSTORM_GLASS = {
            GENERIC = "It's been turned to glass.",
            INFUSED = "Hm. This may be useful."
        },

        MOONSTORM_STATIC = "What is he meddling with?",
        MOONSTORM_STATIC_ITEM = "There's power trapped inside.",
        MOONSTORM_SPARK = "They give off a rather unsettling sensation.",

        BIRD_MUTANT = "That creature has seen better days.",
        BIRD_MUTANT_SPITTER = "You dare spit at me?!",

        WAGSTAFF_NPC = "What is he up to now?",

        WAGSTAFF_NPC_MUTATIONS = "Oh I'm sorry, were you saying something? I was too busy fighting for my life.",
        WAGSTAFF_NPC_WAGPUNK = "The old goat should watch his step.",

        ALTERGUARDIAN_CONTAINED = "Ah, now I see...",

        WAGSTAFF_TOOL_1 = "Hmph. So I'm to fetch his tools for him now?",
        WAGSTAFF_TOOL_2 = "I suppose that must be what he's looking for.",
        WAGSTAFF_TOOL_3 = "Finally. That must be what he's looking for.",
        WAGSTAFF_TOOL_4 = "Is this what he wants? Why couldn't that old fool have been more descriptive?!",
        WAGSTAFF_TOOL_5 = "Could this be what he's looking for?",

        MOONSTORM_GOGGLESHAT = "There are hardly enough inventors brave enough to harness the power of potatoes.",

        MOON_DEVICE = {
            GENERIC = "That old fool...",
            CONSTRUCTION1 = "I don't see why I must be the one to do all the work.",
            CONSTRUCTION2 = "How odd to be the one laboring on a machine for an unknown purpose...",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "Careful, madam. I know where this trail ultimately leads.",
			RECHARGING = "It looks like she'll have to wait, for once.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "Careful, madam. I know where this trail ultimately leads.",
			RECHARGING = "It looks like she'll have to wait, for once.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "Careful, madam. I know where this trail ultimately leads.",
			RECHARGING = "It looks like she'll have to wait, for once.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "Careful, madam. I know where this trail ultimately leads.",
			RECHARGING = "It looks like she'll have to wait, for once.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "Careful, madam. I know where this trail ultimately leads.",
			RECHARGING = "It looks like she'll have to wait, for once.",
--fallback to speech_wilson.lua 			UNMARKED = "only_used_by_wanda unmarked",
--fallback to speech_wilson.lua 			MARKED_SAMESHARD = "only_used_by_wanda same shard",
--fallback to speech_wilson.lua 			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "That... looks like it would hurt.",
--fallback to speech_wilson.lua 			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "She doesn't understand the full extent of the power she's toying with.",
        POCKETWATCH_DISMANTLER = "Little hand tools, how quaint.",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "At least it doesn't smell, like some other modes of transportation.",
			DIFFERENTSHARD = "At least it doesn't smell, like some other modes of transportation.",
		},
        POCKETWATCH_PORTAL_EXIT = "Hmph. I think she puts it up there on purpose.",

        -- Waterlog
        WATERTREE_PILLAR = "When did this get here?",
        OCEANTREE = "An aquatic tree, what next?",
        OCEANTREENUT = "I have no interest in lugging that thing around. Back in the drink you go.",
        WATERTREE_ROOT = "I've found the root of the problem.",

        OCEANTREE_PILLAR = "It could use a good pruning.",

        OCEANVINE = "It's just hanging around.",
        FIG = "A fruit for more refined tastes.",
        FIG_COOKED = "Quite decadent.",

        SPIDER_WATER = "Well aren't you a delight!",
        MUTATOR_WATER = "I'm not eating that.",
        OCEANVINE_COCOON = "It looks like someone's already made themselves comfortable here.",
        OCEANVINE_COCOON_BURNT = "Not quite so comfortable anymore.",

        GRASSGATOR = "Quite a skittish creature.",

        TREEGROWTHSOLUTION = "Looks like you're in a bit of a jam, pal.",

        FIGATONI = "Exquisite.",
        FIGKABAB = "Pleasantly sweet.",
        KOALEFIG_TRUNK = "I hope it was well cleaned before we stuffed the figs inside.",
        FROGNEWTON = "This recipe has legs.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "My, this is some strange magic, even for me.",
            CRIMSON = "The fuel has taken hold.",
            ENABLED = "Just what manner of magic is this?!",
			WAITING_FOR_DARK = "Its power is coalescing.",
			COOLDOWN = "I'd bet it was that insufferable imp who brought it here.",
			SPAWN_DISABLED = "Let it stay banished.",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "Hmph. I suppose some people are impressed by shows of brute strength.",
            BURNT = "The show's over.",
        },

        DUMBBELL = "I have no interest in such things.",
        DUMBBELL_GOLDEN = "It's not that impressive.",
		DUMBBELL_MARBLE = "It's not that impressive.",
        DUMBBELL_GEM = "It's not that impressive.",
        POTATOSACK = "Potatoes are powerful things, not to be underestimated.",

        DUMBBELL_HEAT = "You won't catch me lugging it around.",
        DUMBBELL_REDGEM = "It has all the grace and subtlety I'd expect from the strongman.",
        DUMBBELL_BLUEGEM = "It has all the grace and subtlety I'd expect from the strongman.",

        TERRARIUMCHEST =
		{
			GENERIC = "It's just my style.",
			BURNT = "That seemed unnecessary.",
			SHIMMER = "How... unusual.",
		},

		EYEMASKHAT = "How deliciously macabre.",

        EYEOFTERROR = "Don't look at me, it's definitely not one of mine.",
        EYEOFTERROR_MINI = "We're going to be up to our eyeballs in... eyeballs.",
        EYEOFTERROR_MINI_GROUNDED = "I should dispose of it before it hatches.",

        FROZENBANANADAIQUIRI = "There are better beverages to make.",
        BUNNYSTEW = "Good until the last hop.",
        MILKYWHITES = "Nauseating. It must still contain some evil energy.",

        CRITTER_EYEOFTERROR = "Tell me, what is it you see, little one?",

        SHIELDOFTERROR ="At least dealing with that monstrosity was good for something.",
        TWINOFTERROR1 = "Ah. Just what we needed, a fresh pair of eyes...",
        TWINOFTERROR2 = "Ah. Just what we needed, a fresh pair of eyes...",

		-- Cult of the Lamb
		COTL_TRINKET = "Not my size, sadly.",
		TURF_COTL_GOLD = "A bit gaudy, but it certainly makes an impression.",
		TURF_COTL_BRICK = "Some quality stonework.",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "A homely statue. Perhaps it can be improved.",
			GENERIC = "Let's add a little fire for dramatic effect.",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "How delightfully ominous.",
			GENERIC = "Let's add a little fire for dramatic effect.",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "There's something captivating about it.",
			GENERIC = "Let's add a little fire for dramatic effect.",
		},

        -- Year of the Catcoon
        CATTOY_MOUSE = "The classic game of catcoon and mechanical mouse.",
        KITCOON_NAMETAG = "I've named so many creatures at this point, the novelty has worn off.",

		KITCOONDECOR1 =
        {
            GENERIC = "Those creatures are so feeble of mind they can't tell a real bird from a wooden one.",
            BURNT = "Whatever will we do without it.",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "At least it should keep them occupied.",
            BURNT = "A pity.",
        },

		KITCOONDECOR1_KIT = "Surely someone else can set it up.",
		KITCOONDECOR2_KIT = "Physical labor is what underlings are for.",

        -- WX78
        WX78MODULE_MAXHEALTH = "That robot needs to pull themselves together.",
        WX78MODULE_MAXSANITY1 = "That robot needs to pull themselves together.",
        WX78MODULE_MAXSANITY = "That robot needs to pull themselves together.",
        WX78MODULE_MOVESPEED = "That robot needs to pull themselves together.",
        WX78MODULE_MOVESPEED2 = "That robot needs to pull themselves together.",
        WX78MODULE_HEAT = "That robot needs to pull themselves together.",
        WX78MODULE_NIGHTVISION = "That robot needs to pull themselves together.",
        WX78MODULE_COLD = "That robot needs to pull themselves together.",
        WX78MODULE_TASER = "That robot needs to pull themselves together.",
        WX78MODULE_LIGHT = "That robot needs to pull themselves together.",
        WX78MODULE_MAXHUNGER1 = "That robot needs to pull themselves together.",
        WX78MODULE_MAXHUNGER = "That robot needs to pull themselves together.",
        WX78MODULE_MUSIC = "They wouldn't...",
        WX78MODULE_BEE = "That robot needs to pull themselves together.",
        WX78MODULE_MAXHEALTH2 = "That robot needs to pull themselves together.",

        WX78_SCANNER =
        {
            GENERIC ="I feel like it's watching me...",
            HUNTING = "Where does it think it's going?",
            SCANNING = "Hmph. Good luck unraveling the mysteries of my creations.",
        },

        WX78_SCANNER_ITEM = "Something about it is just so temptingly kickable.",
        WX78_SCANNER_SUCCEEDED = "That constant blinking light is testing my patience.",

        WX78_MODULEREMOVER = "Nerves of steel, that one.",

        SCANDATA = "Well... fine. I suppose that sums it all up, more or less.",

		-- QOL 2022
		JUSTEGGS = "We couldn't even spare a little salt?",
		VEGGIEOMLET = "At least it's hot.",
		TALLEGGS = "It's been a while since I've had a good Scotch egg.",
		BEEFALOFEED = "I suppose I'd better keep the stupid beast fed.",
		BEEFALOTREAT = "Best to keep the beast placated for now.",

        -- Pirates
        BOAT_ROTATOR = "If I hear one word of complaint, I'm turning this boat around.",
        BOAT_ROTATOR_KIT = "Do I look like a common shipwright? Oh, very well...",
        BOAT_BUMPER_KELP = "I don't know if the smell is worth the protection it offers.",
        BOAT_BUMPER_KELP_KIT = "Ugh. These menial tasks do not suit me.",
		BOAT_BUMPER_SHELL = "Seashells. The sturdiest building material known to man.",
        BOAT_BUMPER_SHELL_KIT = "Ugh. These menial tasks do not suit me.",
        BOAT_CANNON = {
            GENERIC = "It's useless if it isn't loaded.",
            AMMOLOADED = "Don't test me.",
            NOAMMO = "Tragically, I can't just summon cannonballs out of thin air.",
        },
        BOAT_CANNON_KIT = "Fine. I suppose the task of building it is left to me.",
        CANNONBALL_ROCK_ITEM = "That looks heavy. Someone should load it into the cannon.",

        OCEAN_TRAWLER = {
            GENERIC = "Some fresh seafood would be a welcome sight.",
            LOWERED = "The trap is set.",
            CAUGHT = "That went surprisingly well.",
            ESCAPED = "Of course.",
            FIXED = "It will do for now.",
        },
        OCEAN_TRAWLER_KIT = "Another irksome chore, left to me.",

        BOAT_MAGNET =
        {
            GENERIC = "If it saves me from having to row myself, I'll give it a chance.",
            ACTIVATED = "Shockingly, it seems to work.",
        },
        BOAT_MAGNET_KIT = "Blast it Higgsbury, I can barely read these scribbled instructions.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "This feels ridiculous.",
            ACTIVATED = "Somehow, it's working.",
        },
        DOCK_KIT = "So I'm to be a dock builder now, am I?",
        DOCK_WOODPOSTS_ITEM = "Do I look like a common laborer to you?",

        MONKEYHUT =
        {
            GENERIC = "This place is infested with those monkey miscreants.",
            BURNT = "They've been smoked out.",
        },
        POWDER_MONKEY = "You're not one of mine... where did you come from?!",
        PRIME_MATE = "They'll put anyone in charge nowadays.",
		LIGHTCRAB = "Oh good. The island is crawling with vermin.",
        CUTLESS = "Very funny.",
        CURSED_MONKEY_TOKEN = "Disgusting!",
        OAR_MONKEY = "Careful where you're paddling, pal.",
        BANANABUSH = "Bananas that don't grow in caves? Preposterous.",
        DUG_BANANABUSH = "Bananas that don't grow in caves? Preposterous.",
        PALMCONETREE = "I'm beginning to forget what real palm trees looked like.",
        PALMCONE_SEED = "One day it might grow into something useful.",
        PALMCONE_SAPLING = "A runt of a tree.",
        PALMCONE_SCALE = "It fell from the tree. Perhaps I'll make use of it.",
        MONKEYTAIL = "I don't trust it.",
        DUG_MONKEYTAIL = "I still don't trust it.",

        MONKEY_MEDIUMHAT = "I'm sure it's full of fleas.",
        MONKEY_SMALLHAT = "Ugh, it makes me look like a common deckhand.",
        POLLY_ROGERSHAT = "A bit theatrical, isn't it?",
        POLLY_ROGERS = "There will be no perching on my shoulder. Got that, pal?",

        MONKEYISLAND_PORTAL = "Something is wrong with it.",
        MONKEYISLAND_PORTAL_DEBRIS = "Someone has been meddling.",
        MONKEYQUEEN = "Hmph. I'd hardly call that a throne.",
        MONKEYPILLAR = "How quaint.",
        PIRATE_FLAG_POLE = "That's not exactly a welcome sight.",

        BLACKFLAG = "Black never goes out of style.",
        PIRATE_STASH = "Hooray.",
        STASH_MAP = "Now I suppose I'll have to go out and fetch what was stolen from me.",

        BANANAJUICE = "It doesn't do much for my refined palate.",

        FENCE_ROTATOR = "What insidious magic. It draws power from eye rolls and groans.",

        CHARLIE_STAGE_POST = "Just like the old days.",
        CHARLIE_LECTURN = "Misdirection, the oldest trick in the book. Well played, Charlie.",

        CHARLIE_HECKLER = "Tough crowd.",

        PLAYBILL_THE_DOLL = "I think she's enjoying this a bit too much.",
        STATUEHARP_HEDGESPAWNER = "This place is really going to seed.",
        HEDGEHOUND = "The critics here will really eat you alive.",
        HEDGEHOUND_BUSH = "Nice try.",

        MASK_DOLLHAT = "How very dramatic.",
        MASK_DOLLBROKENHAT = "How very dramatic.",
        MASK_DOLLREPAIREDHAT = "How very dramatic.",
        MASK_BLACKSMITHHAT = "How very dramatic.",
        MASK_MIRRORHAT = "How very dramatic.",
        MASK_QUEENHAT = "How very dramatic.",
        MASK_KINGHAT = "How very dramatic.",
        MASK_TREEHAT = "How very dramatic.",
        MASK_FOOLHAT = "How very dramatic.",

        COSTUME_DOLL_BODY = "It seems the costumes are provided.",
        COSTUME_QUEEN_BODY = "It seems the costumes are provided.",
        COSTUME_KING_BODY = "I think that one will fit me nicely.",
        COSTUME_BLACKSMITH_BODY = "It seems the costumes are provided.",
        COSTUME_MIRROR_BODY = "It seems the costumes are provided.",
        COSTUME_TREE_BODY = "It seems the costumes are provided.",
        COSTUME_FOOL_BODY = "It seems the costumes are provided.",

        STAGEUSHER =
        {
            STANDING = "Hmph. Impressive sleight of hand.",
            SITTING = "This must be the work of an unseen hand.",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "Finally, someone who'll carry my things.",
            BURNT = "Someone should clean that up.",
        },

		-- Waxwell
		MAGICIAN_CHEST = "If you're worried about getting stuck inside, don't rummage through my things.",
		TOPHAT_MAGICIAN = "Tall, dark and dapper.",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "Surely that's a job for someone else?",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "Absolutely not.",
            PLAYING = "I do enjoy watching people make fools of themselves.",
        },

        YOTR_DECOR_1 = {
            GENERAL = "Such unrefined decor.",
            OUT = "Now it's not even useful.",
        },
        YOTR_DECOR_2 = {
            GENERAL = "Such unrefined decor.",
            OUT = "Now it's not even useful.",
        },

        HAREBALL = "You must be joking.",
        YOTR_DECOR_1_ITEM = "Someone should set that up.",
        YOTR_DECOR_2_ITEM = "Someone should set that up.",

		--
		DREADSTONE = "Petrified nightmares.",
		HORRORFUEL = "That's the good stuff.",
		DAYWALKER =
		{
			GENERIC = "Say pal, why don't we talk this out?",
			IMPRISONED = "You went nosing around places you shouldn't have, didn't you?",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "I can just make out something dark within.",
			EXPOSED = "That stone would be useful, if only it could be broken.",
		},
		ARMORDREADSTONE = "Black never goes out of style.",
		DREADSTONEHAT = "Darkness is never far from my mind.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "I don't like the look of this.",
        LUNARRIFT_CRYSTAL = "Crystals? How very Bohemian.",

        LUNARTHRALL_PLANT = "I don't think it's from around here.",
        LUNARTHRALL_PLANT_VINE_END = "Some aggressive pruning might be in order.",

		LUNAR_GRAZER = "I have a feeling this pest won't be dispatched so easily.",

        PUREBRILLIANCE = "I wonder if she knows about this...",
        LUNARPLANT_HUSK = "The blasted thing is finally dead.",

		LUNAR_FORGE = "To work, then.",
		LUNAR_FORGE_KIT = "There's more to be done.",

		LUNARPLANT_KIT = "Some things can be repaired.",
		ARMOR_LUNARPLANT = "Does no one else find this armor oddly itchy?",
		LUNARPLANTHAT = "It looks wonderfully ominous.",
		BOMB_LUNARPLANT = "Someone's about to have a very bad day.",
		STAFF_LUNARPLANT = "More magic to add to the arsenal.",
		SWORD_LUNARPLANT = "Such power!",
		PICKAXE_LUNARPLANT = "It works surprisingly well.",
		SHOVEL_LUNARPLANT = "I'd rather let someone else do my dirty work.",

		BROKEN_FORGEDITEM = "It's of no use to me like this.",

        PUNCHINGBAG = "A crude test of my weapons' power.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "Mind the gap.",

		SHADOW_FORGE = "What shall I fashion from the shadows?",
		SHADOW_FORGE_KIT = "There is work to be done.",

        FUSED_SHADELING = "They grow up so fast.",
        FUSED_SHADELING_BOMB = "That is one persistent tail.",

		VOIDCLOTH = "It would be a shame to let this material go to waste.",
		VOIDCLOTH_KIT = "Some things can be repaired.",
		VOIDCLOTHHAT = "Darkness is an often underrated accessory.",
		ARMOR_VOIDCLOTH = "The fabric really breathes.",

        VOIDCLOTH_UMBRELLA = "It's just my style.",
        VOIDCLOTH_SCYTHE = "If menial tasks must be done, they should be done in style.",

		SHADOWTHRALL_HANDS = "You think you're the master of sleight of hand?",
		SHADOWTHRALL_HORNS = "I'll leave a bitter taste in your mouth, pal.",
		SHADOWTHRALL_WINGS = "You think you can look down on me?",

        CHARLIE_NPC = "She's literally meow.",
        CHARLIE_HAND = "I'll... see to it.",

        NITRE_FORMATION = "A large growth of nitre.",
        DREADSTONE_STACK = "It comes from the depths below.",
        
        SCRAPBOOK_PAGE = "Curious. It may yield some useful information.",

        LEIF_IDOL = "How very folksy.",
        WOODCARVEDHAT = "Too rugged for my tastes.",
        WALKING_STICK = "Lucy does fine work.",

        IPECACSYRUP = "Disgusting.",
        BOMB_LUNARPLANT_WORMWOOD = "Its power has been amplified...", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "Disgusting.",
        	GENERIC = "That carrot is revolting!",
        	HELD = "You thought you could fool me?",
        	SLEEPING = "I'm sure it is diseased.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "Finally, a mutation that's actually useful.",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "They aren't very sociable.",
			RIPE = "I bet it's delicious.",
			SLEEPING = "Sleep is only a temporary escape.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "There is work to be done. For someone else.",
        SUPPORT_PILLAR = "It's buckling under the weight.",
        SUPPORT_PILLAR_COMPLETE = "It will hold, for now.",
        SUPPORT_PILLAR_BROKEN = "It couldn't withstand the pressure.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "There is work to be done. For someone else.",
		SUPPORT_PILLAR_DREADSTONE = "It's buckling under the weight.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "Hope it's as strong as it looks.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "Surprise, surprise.",

        WOLFGANG_WHISTLE = "Ah yes. What could be more motivating than the shriek of a whistle?",

        -- Rifts 3

        MUTATEDDEERCLOPS = "That creature has seen better days.",
        MUTATEDWARG = "I don't care for the new look.",
        MUTATEDBEARGER = "It's even more brutish than before.",

        LUNARFROG = "Repulsive.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Disgusting.",
            BURNING  = "It's best to be rid of it.",
            REVIVING = "The wretch is being puppeteered!",
        },

        WARGCORPSE =
        {
            GENERIC  = "Best to dispose of it, quickly.",
            BURNING  = "That takes care of that.",
            REVIVING = "Something has taken hold of it!",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Ugh. I can't just leave that lying around.",
            BURNING  = "That's one problem solved.",
            REVIVING = "The \"moon's\" influence is growing...",
        },

        BEARGERFUR_SACK = "Portable indeed. Wilson can carry it.",
        HOUNDSTOOTH_BLOWPIPE = "Houndstooth? Both deadly and debonair.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Keeps it cold like my heart.",    -- Enabled.
            NOEYEBALL = "Don't say I didn't warn you when it all goes up in flames.",  -- Disabled.
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = "Do I have to do everything around here?",

        SECURITY_PULSE_CAGE = "It's empty. Someone do something.",
        SECURITY_PULSE_CAGE_FULL = "It's full. Someone do something.",

		CARPENTRY_STATION =
        {
            GENERIC = "I never cared for woodworking. The sawdust gets everywhere.",
            BURNT = "Too bad.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "Someone should really set this table.",
            HAS_ITEM = "Someone should really set this table.",
            BURNT = "It didn't go with the decor anyway.",
        },

        WOOD_CHAIR =
        {
            GENERIC = "I'm appalled by the idea of sitting for some reason.",
            OCCUPIED = "Good. You sit. Forever.",
            BURNT = "Better that way.",
        },

        DECOR_CENTERPIECE = "Bland.",
        DECOR_LAMP = "Who's afraid of the dark?",
        DECOR_FLOWERVASE =
        {
            GENERIC = "Purely decorative.",
            EMPTY = "An empty vessel awaiting decoration or light.",
            WILTED = "Every lovely flower must one day wilt.",
            FRESHLIGHT = "A temporary reprieve from the shadow.",
            OLDLIGHT = "I believe it is Wilson's turn to fetch bulbs.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Uninspired.",
            UNDRAWN = "If only life were that simple.",
        },
        DECOR_PORTRAITFRAME = "My my, aren't we special.",

        PHONOGRAPH = "That accursed thing!",
        RECORD = "Destroy it!",
        RECORD_CREEPYFOREST = "Forgive me if I've lost my taste for music.",
        RECORD_DANGER = "Silence would be preferable.",
        RECORD_DAWN = "Forgive me if I've lost my taste for music.",
        RECORD_DRSTYLE = "Silence would be preferable.",
        RECORD_DUSK = "Silence would be preferable.",
        RECORD_EFS = "Silence would be preferable.",
        RECORD_END = "Forgive me if I've lost my taste for music.",
        RECORD_MAIN = "Silence would be preferable.",
        RECORD_WORKTOBEDONE = "Forgive me if I've lost my taste for music.",

        ARCHIVE_ORCHESTRINA_MAIN = "Rather devious.",

        WAGPUNKHAT = "This machine really thinks it can tell me what to do?",
        ARMORWAGPUNK = "What it lacks in style it almost makes up for in pure, stubborn resilience.",
        WAGSTAFF_MACHINERY = "The interloper could at least clean up after himself.",
        WAGPUNK_BITS = "Someone should collect this bric-à-brac and put it to use.",
        WAGPUNKBITS_KIT = "A machine to fix a machine? What is this world coming to?",

        WAGSTAFF_MUTATIONS_NOTE = "What have we here? More of that lunacy?",
    },

    DESCRIBE_GENERIC = "You tell me.",
    DESCRIBE_TOODARK = "I can't see in the dark!",
    DESCRIBE_SMOLDERING = "Won't be long before it lights on fire.",

    DESCRIBE_PLANTHAPPY = "It seems reasonably healthy.",
    DESCRIBE_PLANTVERYSTRESSED = "Just what do you have to be upset about?",
    DESCRIBE_PLANTSTRESSED = "Everyone's got problems, pal.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "Maybe if the garden wasn't filled with weeds...",
    DESCRIBE_PLANTSTRESSORFAMILY = "It needs to be surrounded by others of its ilk.",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "The garden might be overcrowded. Perhaps I should thin it out a bit.",
    DESCRIBE_PLANTSTRESSORSEASON = "The weather is too harsh for it.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "It needs water again? Ugh, the toiling never ends.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "Richer soil might be needed.",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "I'd better have a word with that underperforming plant...",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "That tasted about as good as you'd expect.",
		WINTERSFEASTFUEL = "It tastes bitter.",
    },
}
