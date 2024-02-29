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
            EMPTY = "Building something usually involves meowterials to, like, build with.",
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
            HOSTBUSY = "Oh... I guess I'm not importrant enough...",
            CARNIVAL_HOST_HERE = "A HUGE bird? Like, how huge?",
            NOCARNIVAL = "Nyeoww, i was gonna eat them.",
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
            SLEEPING = "I should let it sleep, i'm not important enough.",
            BUSY = "I guess I'm the least of its worries right meow.",
            ABIGAILHEART = "Life's unfair like that.",
            GHOSTHEART = "But it wants to kill meow.",
            NOTGEM = "Not the right thing, i guess.",
            WRONGGEM = "I'd rather keep the gems for, like, myeowself.", 
            NOTSTAFF = "That's nyot the right thing.",
            MUSHROOMFARM_NEEDSSHROOM = "It's a meowshroom planter. It's for MEOWshrooms",
            MUSHROOMFARM_NEEDSLOG = "Needs a living long to live log- wait what.",
            MUSHROOMFARM_NOMOONALLOWED = "What's wrong, just stick in there dyamnit.",
            SLOTFULL = "Ugh, just jam yourself in there, dyamn.",
            FOODFULL = "We've already placed something on the altar.",
            NOTDISH = "Not even i would eat this.",
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
            NOTAMONKEY = "But i'm not a myeownkey.",
            QUEENBUSY = "Hey, don't ignore me, cupcake.",
        },
        GIVETOPLAYER =
        {
            FULL = "Carrying a lot on your shoulder too?",
            DEAD = "They're off this world already.",
            SLEEPING = "Hey, wake up, wake up, wake up, wake up wake up wake up.",
            BUSY = "Oh, yeah, just ignore me, cupcake.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Carrying a lot on your shoulder too?",
            DEAD = "They're off this world already.",
            SLEEPING = "Hey, wake up, wake up, wake up, wake up wake up wake up.",
            BUSY = "Oh, yeah, just ignore me, cupcake.",
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
            NOOCCUPANT = "There's NO ONE.",
        },
        ATTUNE =
        {
            NOHEALTH = "Oh... I'm dying, I guess.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "A bit dangerous right meow.",
            INUSE = "It's already seeing some action alright.",
			SLEEPING = "Ugh, why do you always sleep when i NEED you.",
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
            EMPTY = "Should i wrap myeowself in it.",
        },
        PICKUP =
        {
			RESTRICTION = "I have like, no use for it, really.",
			INUSE = "It's like, in use, you know.",
--fallback to speech_wilson.lua             NOTMINE_SPIDER = "only_used_by_webber",
            NOTMINE_YOTC =
            {
                "But what about meow! AM I NOT GOOD ENOUGH??",
                "It's fine, i get it, i wouldn't hang around trash like me either.",
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
            BAD_TIMING1 = "Dyammit, focus Welina!",
            BAD_TIMING2 = "Dyamn I'm terrible at this.",
        },
        LOWER_SAIL_FAIL =
        {
            "I messed ny-up",
            "If only i could stop disappointing myeowself.",
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
            OVERSIZEDVEGGIES_TOO_SMALL = "You're almost as worthless as me.",
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
            BEEF_BELL_HAS_BEEF_ALREADY = "One's already too myuch for me.",
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
            DOESNTWORK = "H-Hello? Judge? Hello?",
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
	ANNOUNCE_CRAFTING_FAIL = "Kah- i messed somethin' up.",
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
        "Why... must... i suffer...",
        "Ack... Gah...",
        "I... deserve... this.",
        "I'll break... my bones...",
        "\"Are you... fine...?\" Do i look... FINE!?",
        "I swear... i just...",
        "...Need... a break...",
        "...Torture...",
        "Aghh.... damn... it...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"Did i do something bad or what.",
		"That probably means things are, like, real bad.",
		"This place is going to hell.",
	},
    ANNOUNCE_RUINS_RESET = "Wah-What, everything's back here!",
    ANNOUNCE_SNARED = "Agh- let go of meow!",
    ANNOUNCE_SNARED_IVY = "Kah- what's wrong with you plant!",
    ANNOUNCE_REPELLED = "There's no way i'll break through.",
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
		GENERIC = "C'mere, cupcake.",
		PIG = "Stupid pig, i'll chop you to bits.",
		PREY = "You're the prey, and i'm the predator.",
		SPIDER = "Stomp it, stomp it, stomp it!",
		SPIDER_WARRIOR = "This bug needs to die, now!",
		DEER = "Get outta here, cupcake!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "And dont't get in my away!",
		PIG = "He's harder to catch than i thought.",
		PREY = "I need to kill you to eat something, dyamn it!",
		SPIDER = "How does one of these outrun me...",
		SPIDER_WARRIOR = "I'm giving you only one chance.",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "It's how i got here.",
        MULTIPLAYER_PORTAL_MOONROCK = "It got encrusted by this moony stuff.",
        MOONROCKIDOL = "Can't have anything for free in this world.",
        CONSTRUCTION_PLANS = "I take it i'm supposed to assemble this myeowself?",

        ANTLION =
        {
            GENERIC = "O-Oh, it's the big bad.",
            VERYHAPPY = "It seems happy.",
            UNHAPPY = "Did i piss it off? It look pissed!",
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
        BOOK_BIRDS = "Birds summeowning? That's infinite food!",
        BOOK_TENTACLES = "This' just plain creepy!",
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
		BUTTERFLYMUFFIN = "That should stop its incessant flapping.",
		BUTTERFLYWINGS = "Ha ha ha. I got him!",
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
			OUT = "Another one falls.",
		},
		CAMPFIRE =
		{
			EMBERS = "I'm going to lose it.",
			GENERIC = "How comforting.",
			HIGH = "That will keep Charlie away for now.",
			LOW = "It needs fuel.",
			NORMAL = "Fiery.",
			OUT = "That's not coming back.",
		},
		CANE = "It has pictures of fast things carved into it.",
		CATCOON = "They don't like meow very much.",
		CATCOONDEN =
		{
			GENERIC = "Vermin housing.",
			EMPTY = "Well, I guess that's that.",
		},
		CATCOONHAT = "Dead head.",
		COONTAIL = "Tale of tails.",
		CARROT = "I'm not a fan of vegetables.",
		CARROT_COOKED = "A little more refined, at least.",
		CARROT_PLANTED = "How mundane.",
		CARROT_SEEDS = "Such labor is beneath me.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Mapmaking is a soothing pastime. Methodical.",
			BURNING = "Such directionless destruction.",
			BURNT = "Useless.",
		},
		WATERMELON_SEEDS = "I could probably plant these.",
		CAVE_FERN = "I'd like to step on it.",
		CHARCOAL = "Nothing will steal my carbon!",
        CHESSPIECE_PAWN = "I have no idea what that is.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "It's nice, but where's the rust? The exhaust pipes?",
            STRUGGLE = "The pieces are in motion!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "A dreadful lack of accordions.",
            STRUGGLE = "And I thought chivalry was dead!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Could use a few more mechanical bits in my opinion.",
            STRUGGLE = "The pieces are in motion!",
        },
        CHESSPIECE_MUSE = "Must everything be about my shortcomings?",
        CHESSPIECE_FORMAL = "What a well-dressed figure!",
        CHESSPIECE_HORNUCOPIA = "This seems cruel.",
        CHESSPIECE_PIPE = "Ceci n'est pas une pipe. Pity.",
        CHESSPIECE_DEERCLOPS = "I don't like winters.",
        CHESSPIECE_BEARGER = "A brute.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "What an imbecilic expression.",
        },
        CHESSPIECE_DRAGONFLY = "It never stood a chance.",
		CHESSPIECE_MINOTAUR = "Always keep things close to the chest, right pal?",
        CHESSPIECE_BUTTERFLY = "Rather elegant, I'd say.",
        CHESSPIECE_ANCHOR = "How kitsch.",
        CHESSPIECE_MOON = "I'm fairly partial to this one.",
        CHESSPIECE_CARRAT = "If only I had a mantle to set it on.",
        CHESSPIECE_MALBATROSS = "Such a fowl-tempered bird.",
        CHESSPIECE_CRABKING = "I am not that crabby!",
        CHESSPIECE_TOADSTOOL = "At least the statue doesn't smell as bad as the original.",
        CHESSPIECE_STALKER = "I do like this one.",
        CHESSPIECE_KLAUS = "Why bother?",
        CHESSPIECE_BEEQUEEN = "Does she really need a statue?",
        CHESSPIECE_ANTLION = "Is there a sinkhole I can bury this in?",
        CHESSPIECE_BEEFALO = "At least this version doesn't shed all over my poor suit.",
		CHESSPIECE_KITCOON = "This is a rather precarious design.",
		CHESSPIECE_CATCOON = "This animal commands respect through violence.",
        CHESSPIECE_MANRABBIT = "Who put this ridiculous thing here?",
        CHESSPIECE_GUARDIANPHASE3 = "How could I not have seen...",
        CHESSPIECE_EYEOFTERROR = "An eye could never best a master of illusion such as I.",
        CHESSPIECE_TWINSOFTERROR = "The most troublesome pair I've ever seen.",
        CHESSPIECE_DAYWALKER = "Seems like anyone can get a statue these days.",
        CHESSPIECE_DEERCLOPS_MUTATED = "I take great offense to anyone trying to improve on my designs.",
        CHESSPIECE_WARG_MUTATED = "It was a bad dog.",
        CHESSPIECE_BEARGER_MUTATED = "It'll scare away anyone with good taste.",

        CHESSJUNK1 = "There's a reason I never finished that.",
        CHESSJUNK2 = "That one was a jerk.",
        CHESSJUNK3 = "Didn't like that one's face.",
		CHESTER = "Annoying little monster. Has his uses, though.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Stop looking at me!",
			WAITING = "What is it waiting for?",
		},
		COOKEDMANDRAKE = "It has lost a lot of its power.",
		COOKEDMEAT = "It smells less like barnyard, now.",
		COOKEDMONSTERMEAT = "It's still filthy.",
		COOKEDSMALLMEAT = "Well, at least it's not moving anymore.",
		COOKPOT =
		{
			COOKING_LONG = "Wait for it...",
			COOKING_SHORT = "Here it comes!",
			DONE = "Finally, some quality grub.",
			EMPTY = "Just the thought makes my mouth water.",
			BURNT = "A bit overdone for my tastes.",
		},
		CORN = "High in fructose.",
		CORN_COOKED = "A little more refined, at least.",
		CORN_SEEDS = "Such labor is beneath me.",
        CANARY =
		{
			GENERIC = "How do these things keep getting into my world?",
			HELD = "Bait.",
		},
        CANARY_POISONED = "You look atrocious.",

		CRITTERLAB = "Am I being watched by that rock?",
        CRITTER_GLOMLING = "You are much too trusting, friend.",
        CRITTER_DRAGONLING = "Just like old times.",
		CRITTER_LAMB = "Quit nibbling my coattails.",
        CRITTER_PUPPY = "You're a slobbery little chap, aren't you?",
        CRITTER_KITTEN = "A wholly agreeable animal.",
        CRITTER_PERDLING = "You're as fowl as I am!",
		CRITTER_LUNARMOTHLING = "You had better not chew holes in my suit.",

		CROW =
		{
			GENERIC = "I don't know how they got here.",
			HELD = "Shhhh... My pretty.",
		},
		CUTGRASS = "The mundane stuff of the earth.",
		CUTREEDS = "I think I could build something useful from this.",
		CUTSTONE = "The building blocks of civilization.",
		DEADLYFEAST = "It smells... noxious.", --unimplemented
		DEER =
		{
			GENERIC = "Well it's certainly not deer to me.",
			ANTLER = "What a staggering sight!",
		},
        DEER_ANTLER = "Filthy.",
        DEER_GEMMED = "The gem imbues its attacks with a fearsome power.",
		DEERCLOPS = "Even I'm afraid of that guy.",
		DEERCLOPS_EYEBALL = "Deerclops are so myopic.",
		EYEBRELLAHAT =	"Eye to the sky.",
		DEPLETED_GRASS =
		{
			GENERIC = "That's not doing anyone any good.",
		},
        GOGGLESHAT = "Not my sort of fashion.",
        DESERTHAT = "Function over form.",
        ANTLIONHAT = "If the ground displeases me, I'll pull it up by the roots.",
--fallback to speech_wilson.lua 		DEVTOOL = "It smells of bacon!",
--fallback to speech_wilson.lua 		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "That looks out-of-place.",
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
		DRAGONFLY = "A fiery fly.",
		ARMORDRAGONFLY = "That's some fly mail.",
		DRAGON_SCALES = "Fiery.",
		DRAGONFLYCHEST = "Those scales sure are nifty.",
		DRAGONFLYFURNACE =
		{
			HAMMERED = "How undignified.",
			GENERIC = "Such a spiffy design!", --no gems
			NORMAL = "With only one gem it is only moderately scorching.", --one gem
			HIGH = "The red gems are producing a sweltering heat.", --two gems
		},

        HUTCH = "Stick your tongue in. You're getting slobber on my pantlegs.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Better him in that bowl than me.",
            WAITING = "His spirit is free now.",
        },
		LAVASPIT =
		{
			HOT = "Spitfire.",
			COOL = "It's cold and dry now.",
		},
		LAVA_POND = "A touch hot, but it could cook my food in a pinch.",
		LAVAE = "Foul beast! Know your place!",
		LAVAE_COCOON = "It's no threat in this state.",
		LAVAE_PET =
		{
			STARVING = "I think it's going to die!",
			HUNGRY = "It's hungry. Why is it hungry?",
			CONTENT = "It's happy with me, and I with it.",
			GENERIC = "You're not a hellbeast, are you? Nooo. Just misunderstood!",
		},
		LAVAE_EGG =
		{
			GENERIC = "It's alive in there.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I knew I would make a terrible pa-pa.",
			COMFY = "I can say with pride that it is comfy and cozy.",
		},
		LAVAE_TOOTH = "The lavae's baby tooth.",

		DRAGONFRUIT = "Exotic and delicious.",
		DRAGONFRUIT_COOKED = "A little more refined, at least.",
		DRAGONFRUIT_SEEDS = "Such labor is beneath me.",
		DRAGONPIE = "Simply exquisite.",
		DRUMSTICK = "It tastes strangely like berries.",
		DRUMSTICK_COOKED = "Still tastes like berries.",
		DUG_BERRYBUSH = "Do I look like a gardener?",
		DUG_BERRYBUSH_JUICY = "I could find a much better place for it.",
		DUG_GRASS = "Do I look like a gardener?",
		DUG_MARSH_BUSH = "Do I look like a gardener?",
		DUG_SAPLING = "I can't believe I'm reduced to this.",
		DURIAN = "It's an acquired taste.",
		DURIAN_COOKED = "A little more refined, at least.",
		DURIAN_SEEDS = "Such labor is beneath me.",
		EARMUFFSHAT = "They are at least warm.",
		EGGPLANT = "Just another boring plant.",
		EGGPLANT_COOKED = "A little more refined, at least.",
		EGGPLANT_SEEDS = "Such labor is beneath me.",

		ENDTABLE =
		{
			BURNT = "That was uncalled for.",
			GENERIC = "Purely decorative.",
			EMPTY = "An empty vessel awaiting decoration or light.",
			WILTED = "Every lovely flower must one day wilt.",
			FRESHLIGHT = "A temporary reprieve from the shadow.",
			OLDLIGHT = "I believe it is Wilson's turn to fetch bulbs.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "Oops.",
			BURNT = "Bathed in fire.",
			CHOPPED = "That's not about to grow back.",
			POISON = "Shut your maw!",
			GENERIC = "An acquaintance of mine describes them as \"leafy\".",
		},
		ACORN = "A more outdoorsy type might be able to make something of this.",
        ACORN_SAPLING = "Huh, it seems to belong in the ground.",
		ACORN_COOKED = "Over an open fire.",
		BIRCHNUTDRAKE = "A nut with legs! How terrifying!",
		EVERGREEN =
		{
			BURNING = "Oops.",
			BURNT = "Bathed in fire.",
			CHOPPED = "That's not about to grow back.",
			GENERIC = "An acquaintance of mine describes them as \"piney\".",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Oops.",
			BURNT = "Dust to dust.",
			CHOPPED = "I put it out of its misery.",
			GENERIC = "It looks sickly.",
		},
		TWIGGYTREE =
		{
			BURNING = "Oops.",
			BURNT = "Bathed in fire.",
			CHOPPED = "That's not about to grow back.",
			GENERIC = "The tree of an amateur.",
			DISEASED = "What has brought this blight upon my world?", --unimplemented
		},
		TWIGGY_NUT_SAPLING = "It's of no use in it's current state. Only time will tell.",
        TWIGGY_OLD = "Look at you. You're useless.",
		TWIGGY_NUT = "I could plant it... but why?",
		EYEPLANT = "The Meat Bulb's pawns.",
		INSPECTSELF = "I still look dapper, right? As if I need to check.",
		FARMPLOT =
		{
			GENERIC = "Do I look like a farmer?",
			GROWING = "I have better things to do than watch plants grow.",
			NEEDSFERTILIZER = "It needs to be... refreshed.",
			BURNT = "A harvest of ashes.",
		},
		FEATHERHAT = "I always considered myself the peacock of people.",
		FEATHER_CROW = "Black is the color of sleep.",
		FEATHER_ROBIN = "Red is the color of fire.",
		FEATHER_ROBIN_WINTER = "Grey is the color of pain.",
		FEATHER_CANARY = "Yellow is the color of naivety.",
		FEATHERPENCIL = "Not as elegant as a quill and inkwell, but it'll do.",
        COOKBOOK = "Very well. If I can master the dark arts, how hard could cooking be?",
		FEM_PUPPET = "Better her than me.", --single player
		FIREFLIES =
		{
			GENERIC = "How pretty.",
			HELD = "I could squish them if I wanted to.",
		},
		FIREHOUND = "I put fire gems in there as a joke.",
		FIREPIT =
		{
			EMBERS = "I should attend to that.",
			GENERIC = "A fire pit.",
			HIGH = "A roaring fire.",
			LOW = "It's getting low.",
			NORMAL = "It's hot.",
			OUT = "It's gone cold.",
		},
		COLDFIREPIT =
		{
			EMBERS = "Someone should attend to that.",
			GENERIC = "A fire pit.",
			HIGH = "A roaring, cold fire.",
			LOW = "It's getting low.",
			NORMAL = "It's cold.",
			OUT = "It's gone warm.",
		},
		FIRESTAFF = "A basic enchantment, but effective.",
		FIRESUPPRESSOR =
		{
			ON = "Begone, fire!",
			OFF = "Quiet before the storm.",
			LOWFUEL = "Not much fuel left.",
		},

		FISH = "Fresh from the murky depths.",
		FISHINGROD = "I will eat for a lifetime.",
		FISHSTICKS = "These should tide me over.",
		FISHTACOS = "Cooked fish in a crunchy shell.",
		FISH_COOKED = "It still stinks.",
		FLINT = "Ow! I cut my finger!",
		FLOWER =
		{
            GENERIC = "I am filled with the irrational urge to stomp upon it.",
            ROSE = "This is wrong.",
        },
        FLOWER_WITHERED = "It got what it deserved.",
		FLOWERHAT = "Definitely not my style.",
		FLOWER_EVIL = "I like that flower.",
		FOLIAGE = "A meal fit for a peasant.",
		FOOTBALLHAT = "Ready for the scrimmage.",
        FOSSIL_PIECE = "Perhaps it is best left in pieces.",
        FOSSIL_STALKER =
        {
			GENERIC = "The beginnings of some demonic beast.",
			FUNNY = "It will be the laughingstock of the demon community.",
			COMPLETE = "Was it wise to unleash this upon the world?",
        },
        STALKER = "There is no limit to the power of shadows.",
        STALKER_ATRIUM = "The Atrium's power restored his mind.",
        STALKER_MINION = "A being of living fuel.",
        THURIBLE = "Curious. It smells like roses.",
        ATRIUM_OVERGROWTH = "I can't believe I've forgotten how to read this.",
		FROG =
		{
			DEAD = "It croaked.",
			GENERIC = "It jumps and licks things.",
			SLEEPING = "It looks tired.",
		},
		FROGGLEBUNWICH = "Has a bit of a kick to it.",
		FROGLEGS = "Muscular.",
		FROGLEGS_COOKED = "Stringy.",
		FRUITMEDLEY = "This would be great with a simple cheese plate.",
		FURTUFT = "Not quite enough for a rug.",
		GEARS = "My pets! What has become of you?",
		GHOST = "It remembers me!",
		GOLDENAXE = "It gets sharper with every cut.",
		GOLDENPICKAXE = "This must be game logic.",
		GOLDENPITCHFORK = "I'm not sure this was a good investment.",
		GOLDENSHOVEL = "This shovel is worth a princely sum.",
		GOLDNUGGET = "This was important to me once.",
		GRASS =
		{
			BARREN = "Needs manure.",
			WITHERED = "You'd think grass could withstand this heat...",
			BURNING = "Oops.",
			GENERIC = "Tufty.",
			PICKED = "Nothing to harvest.",
			DISEASED = "What has brought this blight upon my world?", --unimplemented
			DISEASING = "Looks a little off, if you ask me.", --unimplemented
		},
		GRASSGEKKO =
		{
			GENERIC = "I'm sure its tail grows back.",
			DISEASED = "It's sickly and frail.", --unimplemented
		},
		GREEN_CAP = "I should eat it.",
		GREEN_CAP_COOKED = "Salty!",
		GREEN_MUSHROOM =
		{
			GENERIC = "Green fungus.",
			INGROUND = "When do those ones come up?",
			PICKED = "Been there. Done that.",
		},
		GUNPOWDER = "Now THIS I like.",
		HAMBAT = "An undignified weapon for a less refined time.",
		HAMMER = "It feels good to undo the work of others.",
		HEALINGSALVE = "Just a bit of venom and some dirty old ash.",
		HEATROCK =
		{
			FROZEN = "It's almost too cold to hold.",
			COLD = "Pleasantly cool.",
			GENERIC = "A pocketful of stone and temperature.",
			WARM = "Comfortably lukewarm.",
			HOT = "It's almost too hot to hold.",
		},
		HOME = "There's no place like it.",
		HOMESIGN =
		{
			GENERIC = "\"You are here\"... I wish I wasn't!",
            UNWRITTEN = "This requires profundity.",
			BURNT = "Somehow, it says even less now.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "\"Thataway\"... Ugh!",
            UNWRITTEN = "This requires profundity.",
			BURNT = "Somehow, it says even less now.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "\"Thataway\"... Ugh!",
            UNWRITTEN = "This requires profundity.",
			BURNT = "Somehow, it says even less now.",
		},
		HONEY = "Sticky and sweet.",
		HONEYCOMB = "It's full of bee maggots.",
		HONEYHAM = "Tender.",
		HONEYNUGGETS = "These look childish, but they're delicious.",
		HORN = "Call forth the beasts!",
		HOUND = "They don't recognize me!",
		HOUNDCORPSE =
		{
			GENERIC = "I wish we'd get rid of that.",
			BURNING = "Good riddance.",
			REVIVING = "It's coming alive again!",
		},
		HOUNDBONE = "Hungry devils, aren't they?",
		HOUNDMOUND = "It's a tunnel down to the hounds' nest.",
		ICEBOX = "A little piece of winter in a box.",
		ICEHAT = "Strap some ice on your head.",
		ICEHOUND = "I had a lot of surplus gems!",
		INSANITYROCK =
		{
			ACTIVE = "I can see its true nature now!",
			INACTIVE = "It only half-exists on this plane.",
		},
		JAMMYPRESERVES = "It's soiled my good gloves.",

		KABOBS = "Cooked to perfection.",
		KILLERBEE =
		{
			GENERIC = "What is that bee so angry about?",
			HELD = "I've caught a tiger by the tail.",
		},
		KNIGHT = "Such quality workmanship!",
		KOALEFANT_SUMMER = "A distant cousin of the beefalo.",
		KOALEFANT_WINTER = "It has its winter coat on.",
		KOALEFANT_CARCASS = "What else can I say about this dirty carcass?",
		KRAMPUS = "You won't catch me!",
		KRAMPUS_SACK = "It's really light.",
		LEIF = "Disgusting creature!",
		LEIF_SPARSE = "Disgusting creature!",
		LIGHTER  = "It does the job, I suppose.",
		LIGHTNING_ROD =
		{
			CHARGED = "Energy flows through it.",
			GENERIC = "A little bit of protection.",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "What's it always chewing on?",
			CHARGED = "Chaaarge!",
		},
		LIGHTNINGGOATHORN = "It'd make a nice horn.",
		GOATMILK = "It's charged with nutrients.",
		LITTLE_WALRUS = "A chip off the old block.",
		LIVINGLOG = "I like the noise they make when you burn them.",
		LOG =
		{
			BURNING = "Well. That was fun while it lasted.",
			GENERIC = "It's a piece of wood. What more is there to say?",
		},
		LUCY = "Ah. How have you been, Lucy?",
		LUREPLANT = "A vicious plant.",
		LUREPLANTBULB = "Perhaps I can use this to my advantage.",
		MALE_PUPPET = "Better him than me.", --single player

		MANDRAKE_ACTIVE = "Oh shut UP, will you?",
		MANDRAKE_PLANTED = "What a disturbing root.",
		MANDRAKE = "My ears are still ringing.",

        MANDRAKESOUP = "There'll be no more crying out of you.",
        MANDRAKE_COOKED = "Looks like I got the last meep.",
        MAPSCROLL = "There's nothing to be gleaned from this.",
        MARBLE = "It's strong stuff.",
        MARBLEBEAN = "Let me guess, it grows a marble stalk?",
        MARBLEBEAN_SAPLING = "Stone cold growth.",
        MARBLESHRUB = "I've found a shrubbery.",
        MARBLEPILLAR = "I've always wondered who built those.",
        MARBLETREE = "How whimsical.",
        MARSH_BUSH =
        {
			BURNT = "It is finished.",
            BURNING = "I should ask it questions.",
            GENERIC = "It's twisted and prickly, just like me!",
            PICKED = "That was painful.",
        },
        BURNT_MARSH_BUSH = "Utterly destroyed.",
        MARSH_PLANT = "What a generic little plant.",
        MARSH_TREE =
        {
            BURNING = "There it goes.",
            BURNT = "It's no use to anyone now.",
            CHOPPED = "Tree 0, Maxwell 1.",
            GENERIC = "A tree with a foul demeanor.",
        },
        MAXWELL = "Looking good!",--single player
        MAXWELLHEAD = "Hey, handsome.",--removed
        MAXWELLLIGHT = "Aw, it remembers me.",--single player
        MAXWELLLOCK = "It keeps the master in the chair.",--single player
        MAXWELLTHRONE = "It's less painful than it looks. Barely.",--single player
        MEAT = "I'm used to much finer fare.",
        MEATBALLS = "My compliments to the chef!",
        MEATRACK =
        {
            DONE = "Like the desert.",
            DRYING = "Still moist.",
            DRYINGINRAIN = "Moist and staying that way.",
            GENERIC = "It can dry meats so they'll last longer.",
            BURNT = "It's too brittle to hang meat on now.",
            DONE_NOTMEAT = "Like the desert.",
            DRYING_NOTMEAT = "Still moist.",
            DRYINGINRAIN_NOTMEAT = "Moist and staying that way.",
        },
        MEAT_DRIED = "My teeth are getting too old for this.",
        MERM = "They were already here when I arrived.",
        MERMHEAD =
        {
            GENERIC = "The eyes follow you around.",
            BURNT = "Roasted merm head. Delicious.",
        },
        MERMHOUSE =
        {
            GENERIC = "They copied the pigs, but they're even less intelligent.",
            BURNT = "Well, it burns just as well as the pigs' version.",
        },
        MINERHAT = "Eventually the firefly will starve.",
        MONKEY = "I don't have time for you!",
        MONKEYBARREL = "What a disgusting home.",
        MONSTERLASAGNA = "It would be unwise to ingest this.",
        FLOWERSALAD = "Leafy goodness.",
        ICECREAM = "Sundae, sundae, sundae!",
        WATERMELONICLE = "The case is cold on the melon.",
        TRAILMIX = "Nuts and berries. No bolts.",
        HOTCHILI = "Hot as heck!",
        GUACAMOLE = "There's a mole in the mix.",
        MONSTERMEAT = "How revolting.",
        MONSTERMEAT_DRIED = "My teeth are getting too old for this.",
        MOOSE = "It's definitely from the North, whatever that is.",
        MOOSE_NESTING_GROUND = "Filthy.",
        MOOSEEGG = "Ride the lightning, you big egg.",
        MOSSLING = "That's a fluffy... thing.",
        FEATHERFAN = "Is it windy out or is it just this fan?",
        MINIFAN = "This pathetic device... gets the job done.",
        GOOSE_FEATHER = "I could use a pillow filled with these.",
        STAFF_TORNADO = "Wind power.",
        MOSQUITO =
        {
            GENERIC = "Bloody bloodsucking bloodsuckers.",
            HELD = "I got him.",
        },
        MOSQUITOSACK = "A bloody sack. With blood in it.",
        MOUND =
        {
            DUG = "That one's already been done in.",
            GENERIC = "What lies beneath?",
        },
        NIGHTLIGHT = "It burns with a beautiful glow.",
        NIGHTMAREFUEL = "Ahhh. Refreshing.",
        NIGHTSWORD = "Snicker-snack!",
        NITRE = "One third of the way there...",
        ONEMANBAND = "It has a good beat, and you can dance to it.",
        OASISLAKE =
		{
			GENERIC = "Didn't think I'd ever come back here.",
			EMPTY = "It's not in season.",
		},
        PANDORASCHEST = "It's a trap.",
        PANFLUTE = "I'm going to sing a song of madness.",
        PAPYRUS = "A blank canvas.",
        WAXPAPER = "My interest in this wax paper wanes....",
        PENGUIN = "Nice tux.",
        PERD = "It is addicted to fermented berries.",
        PEROGIES = "They look superb.",
        PETALS = "I've a habit of destroying beautiful things, don't I?",
        PETALS_EVIL = "It's dripping with nightmare essence.",
        PHLEGM = "I need to put on gloves for this.",
        PICKAXE = "Everybody loves a little mining.",
        PIGGYBACK = "Oh, that's just demeaning.",
        PIGHEAD =
        {
            GENERIC = "Er... charming.",
            BURNT = "Pig roast!",
        },
        PIGHOUSE =
        {
            FULL = "I'd go inside too, if I was him.",
            GENERIC = "It is not a sound structure.",
            LIGHTSOUT = "I'll huff and I'll puff!",
            BURNT = "Let's see you hide in there now.",
        },
        PIGKING = "That's a man with his priorities in order!",
        PIGMAN =
        {
            DEAD = "I dub thee, \"Bacon\".",
            FOLLOWER = "He's simple, but he's mine.",
            GENERIC = "What a slobbering fool.",
            GUARD = "They're starting to organize.",
            WEREPIG = "That one's gone feral.",
        },
        PIGSKIN = "It was him or me.",
        PIGTENT = "That's just nasty.",
        PIGTORCH = "Great. Now they have fire.",
        PINECONE = "A more outdoorsy type might be able to make something of this.",
        PINECONE_SAPLING = "Huh, it seems to belong in the ground.",
        LUMPY_SAPLING = "Where did this appear from?",
        PITCHFORK = "The tool of choice for perfectionists.",
        PLANTMEAT = "A feeble attempt to trick the weak minded.",
        PLANTMEAT_COOKED = "The heat has made this a suitable meal.",
        PLANT_NORMAL =
        {
            GENERIC = "That is a generic plant.",
            GROWING = "It's growing.",
            READY = "It's ready.",
            WITHERED = "It wasn't hardy enough for the heat.",
        },
        POMEGRANATE = "Usually I'd get someone to seed this for me.",
        POMEGRANATE_COOKED = "A little more refined, at least.",
        POMEGRANATE_SEEDS = "Such labor is beneath me.",
        POND = "I can see my face reflected off the top.",
        POOP = "It's the way of all mortal life.",
        FERTILIZER = "It's not gentlemanly to carry manure in one's hands.",
        PUMPKIN = "Hallowe'en was always my favorite.",
        PUMPKINCOOKIE = "It's been eons since I had a good biscuit.",
        PUMPKIN_COOKED = "A little more refined, at least.",
        PUMPKIN_LANTERN = "Why hello, Mr. Crane.",
        PUMPKIN_SEEDS = "Such labor is beneath me.",
        PURPLEAMULET = "It speaks with the shadow.",
        PURPLEGEM = "Purple brings great power.",
        RABBIT =
        {
            GENERIC = "I've been here too long... it actually looks tasty.",
            HELD = "Don't worry, rabbit. Everything is under control.",
        },
        RABBITHOLE =
        {
            GENERIC = "There's a world going on under there.",
            SPRING = "The entrance has collapsed in on itself.",
        },
        RAINOMETER =
        {
            GENERIC = "I could just look up and learn the same thing.",
            BURNT = "The rain did not come in time.",
        },
        RAINCOAT = "Out, out rain!",
        RAINHAT = "Not the most dapper of hats, but quite necessary.",
        RATATOUILLE = "Roughage.",
        RAZOR = "If only the world had a single neck.",
        REDGEM = "Red brings fire.",
        RED_CAP = "I forget what this one does.",
        RED_CAP_COOKED = "Kind of bitter.",
        RED_MUSHROOM =
        {
            GENERIC = "It's a red mushroom.",
            INGROUND = "It'll have to come back for it.",
            PICKED = "It's all used up.",
        },
        REEDS =
        {
            BURNING = "Oops.",
            GENERIC = "There's wind in them there willows.",
            PICKED = "No more tubes.",
        },
        RELIC = "Remnants of an extinct civilization.",
        RUINS_RUBBLE = "A broken relic.",
        RUBBLE = "Everything eventually turns to dust.",
        RESEARCHLAB =
        {
            GENERIC = "I can't believe I forgot how to build those things.",
            BURNT = "The fire learned how to burn it down.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "It unlocks recipes of middling utility.",
            BURNT = "Flames have swallowed it whole.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "This is where I do my own personal research.",
            BURNT = "Research complete.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Quite a dapper machine.",
            BURNT = "That was its final act.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "I'm not above using this.",
            BURNT = "No one will be using that any longer.",
        },
        RESURRECTIONSTONE = "There's a story behind that...",
        ROBIN =
        {
            GENERIC = "The redbird comes from the fire lands.",
            HELD = "Silence, bird!",
        },
        ROBIN_WINTER =
        {
            GENERIC = "You're new.",
            HELD = "Nothing up my sleeve...",
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
            GENERIC = "Well it's not going to move itself.",
            RAISED = "We must deal with the others first.",
        },
        ROCK = "It's a rock.",
        PETRIFIED_TREE = "I think it looks much better this way.",
        ROCK_PETRIFIED_TREE = "I think it looks much better this way.",
        ROCK_PETRIFIED_TREE_OLD = "I think it looks much better this way.",
        ROCK_ICE =
        {
            GENERIC = "I could get a chip of ice off the old block.",
            MELTED = "It's just a puddle.",
        },
        ROCK_ICE_MELTED = "It's just a puddle.",
        ICE = "Baby glaciers.",
        ROCKS = "Hmmm. Now what do I do with them?",
        ROOK = "A castle for my home.",
        ROPE = "You'd think this would have more uses.",
        ROTTENEGG = "Disgusting. Why keep this around?",
        ROYAL_JELLY = "Unsettlingly wobbly.",
        JELLYBEAN = "I think there's seventeen in there.",
        SADDLE_BASIC = "But that means I'd have to touch the smelly thing.",
        SADDLE_RACE = "But is it fast enough to escape the judgmental stares?",
        SADDLE_WAR = "At least it affords some dignity to the rider.",
        SADDLEHORN = "And I may never put it back on.",
        SALTLICK = "So salty.",
        BRUSH = "It's like showing affection, without actually touching it.",
		SANITYROCK =
		{
			ACTIVE = "I can see its true nature now!",
			INACTIVE = "There are two ways to see that obstacle.",
		},
		SAPLING =
		{
			BURNING = "Oops.",
			WITHERED = "Nothing survives in this heat.",
			GENERIC = "A supple, woody stem.",
			PICKED = "It'll grow back.",
			DISEASED = "What has brought this blight upon my world?", --removed
			DISEASING = "Looks a little off, if you ask me.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "It's an empty shell of a man.",
			BURNING = "Nothing is safe.",
			BURNT = "The scarecrow has gone to a place where there is no fear.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "A block of marble might suffice.",
			BLOCK = "How I've missed the act of creation.",
			SCULPTURE = "Ah, yes. Not terrible.",
			BURNT = "To sculpt, to carve, no more.",
   		},
        SCULPTURE_KNIGHTHEAD = "That looks... familiar...",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "Waste of good marble if you ask me.",
			UNCOVERED = "My creations! How rude.",
			FINISHED = "Back as intended.",
			READY = "We'll get you out in a tick, friend.",
		},
        SCULPTURE_BISHOPHEAD = "I've seen that head before... but never in marble.",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "Hmph. I was never a fan of the Grecian look.",
			UNCOVERED = "Come now! I liked that one.",
			FINISHED = "That looks much better.",
			READY = "We'll get you out in a tick, friend.",
		},
        SCULPTURE_ROOKNOSE = "That's quite the schnozz.",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "Some truly questionable taste in decor.",
			UNCOVERED = "Why would anyone want to cover this up?",
			FINISHED = "Doesn't that feel better now?",
			READY = "We'll get you out in a tick, friend.",
		},
        GARGOYLE_HOUND = "Try and get me now. Ha!",
        GARGOYLE_WEREPIG = "Not so tough.",
		SEEDS = "I suppose these won't plant themselves.",
		SEEDS_COOKED = "Broiled the life out of 'em.",
		SEWING_KIT = "A fine and noble endeavor.",
		SEWING_TAPE = "The wilderness is tough on a tailor made suit.",
		SHOVEL = "This is some real advanced technology.",
		SILK = "Despite its origin, it could make some fine garments.",
		SKELETON = "Ha! I remember that one.",
		SCORCHED_SKELETON = "At least the fire cut down on the smell.",
		SKULLCHEST = "That chest is calling to me.", --removed
		SMALLBIRD =
		{
			GENERIC = "What!? What do you want?",
			HUNGRY = "You want some food?",
			STARVING = "He's so hungry!",
			SLEEPING = "He's finally asleep.",
		},
		SMALLMEAT = "This is barely a mouthful.",
		SMALLMEAT_DRIED = "My teeth are getting too old for this.",
		SPAT = "Ornery and tough as nails.",
		SPEAR = "It's a spear. Yup.",
		SPEAR_WATHGRITHR = "I can appreciate a finely crafted weapon.",
		WATHGRITHRHAT = "Well... it's no crown.",
		SPIDER =
		{
			DEAD = "Splat.",
			GENERIC = "It's mostly digestive system.",
			SLEEPING = "Shhhh! It will wake up hungry.",
		},
		SPIDERDEN = "They grow big here.",
		SPIDEREGGSACK = "Squishy.",
		SPIDERGLAND = "Distasteful.",
		SPIDERHAT = "Spiders have such malleable wills.",
		SPIDERQUEEN = "Maybe I'll just get out of her way.",
		SPIDER_WARRIOR =
		{
			DEAD = "Splat.",
			GENERIC = "It's a specialized form.",
			SLEEPING = "I don't want to wake that one.",
		},
		SPOILED_FOOD = "That used to be food until I wasted it.",
        STAGEHAND =
        {
			AWAKE = "Hmph. Impressive sleight of hand.",
			HIDING = "This must be the work of an unseen hand.",
        },
        STATUE_MARBLE =
        {
            GENERIC = "Hm. Stately.",
            TYPE1 = "Her tragedy does not define her.",
            TYPE2 = "She's still in there somewhere. I know it.",
            TYPE3 = "Needs something. Perhaps some long-stemmed roses...", --bird bath type statue
        },
		STATUEHARP = "Not my best work.",
		STATUEMAXWELL = "It seems silly now...",
		STEELWOOL = "Someone should use this to clean something.",
		STINGER = "It's dripping with venom.",
		STRAWHAT = "A hat fit for a peasant.",
		STUFFEDEGGPLANT = "A meal fit for a king... or at least someone with a throne.",
		SWEATERVEST = "It's no three-piece, but it's dapper enough.",
		REFLECTIVEVEST = "Safety before dapperness.",
		HAWAIIANSHIRT = "The dapperest of them all.",
		TAFFY = "It's almost entirely sugar.",
		TALLBIRD = "These were a failed experiment.",
		TALLBIRDEGG = "Tallbirds are territorial because of these things.",
		TALLBIRDEGG_COOKED = "It tastes like broken dreams.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "It's getting tepid.",
			GENERIC = "We've got a live one here.",
			HOT = "Hot enough for ya?",
			LONG = "It's going to be a while.",
			SHORT = "Any moment now...",
		},
		TALLBIRDNEST =
		{
			GENERIC = "Well. That's tempting.",
			PICKED = "It's made of dirty beefalo hair.",
		},
		TEENBIRD =
		{
			GENERIC = "It's less cute now that it's grown up.",
			HUNGRY = "They sure do eat a lot.",
			STARVING = "A hungry beast is a dangerous beast.",
			SLEEPING = "It's much easier to deal with like this.",
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
		TELESTAFF = "Magic can do amazing things, when funneled through the right channels.",
		TENT =
		{
			GENERIC = "That's a bit rustic for my taste.",
			BURNT = "That's a bit burned for my taste.",
		},
		SIESTAHUT =
		{
			GENERIC = "Rustic, but excellent shade.",
			BURNT = "So much for the shade thing.",
		},
		TENTACLE = "I'm glad the rest of it is still down there.",
		TENTACLESPIKE = "Ugh. This is so revolting.",
		TENTACLESPOTS = "This is how they reproduce.",
		TENTACLE_PILLAR = "How deep does this go?",
        TENTACLE_PILLAR_HOLE = "Ugh! How can it live down there?",
		TENTACLE_PILLAR_ARM = "Babies?",
		TENTACLE_GARDEN = "This one is odd.",
		TOPHAT = "Some fine haberdashery.",
		TORCH = "It keeps Charlie at bay.",
		TRANSISTOR = "I don't understand how it works, but it does.",
		TRAP = "Only the dumbest animals will fall for this.",
		TRAP_TEETH = "This one packs a wallop.",
		TRAP_TEETH_MAXWELL = "I'm... sure I had my reasons when I placed this.", --single player
		TREASURECHEST =
		{
			GENERIC = "A place to store loot.",
			BURNT = "It won't store anything now.",
		},
		TREASURECHEST_TRAP = "Hmmm. Looks suspicious.",
		SACRED_CHEST =
		{
			GENERIC = "A relic best forgotten.",
			LOCKED = "It seems I am to be judged.",
		},
		TREECLUMP = "I can't get through there.", --removed

		TRINKET_1 = "These must have been heated to an incredible temperature.", --Melted Marbles
		TRINKET_2 = "A complete and utter fraud...", --Fake Kazoo
		TRINKET_3 = "A tangled mess. Like life.", --Gord's Knot
		TRINKET_4 = "Don't look at me like that.", --Gnome
		TRINKET_5 = "A toy for a child's mind.", --Toy Rocketship
		TRINKET_6 = "I might hide those in the robot's bedroll if I get bored.", --Frazzled Wires
		TRINKET_7 = "Not something a grown man should be caught playing with.", --Ball and Cup
		TRINKET_8 = "I'd prefer a pocketwatch on a chain.", --Rubber Bung
		TRINKET_9 = "My suits don't deserve to be defaced with these tacky atrocities.", --Mismatched Buttons
		TRINKET_10 = "Is that a crack about my age?", --Dentures
		TRINKET_11 = "I'm not listening.", --Lying Robot
		TRINKET_12 = "I'm not touching that without several pairs of gloves.", --Dessicated Tentacle
		TRINKET_13 = "Don't look at me like that.", --Gnomette
		TRINKET_14 = "Perhaps I'll invite the librarian for a nice mandrake tea.", --Leaky Teacup
		TRINKET_15 = "Charlie was the only one who ever kept me in check.", --Pawn
		TRINKET_16 = "Charlie was the only one who ever kept me in check.", --Pawn
		TRINKET_17 = "The product of a very immature magician, perhaps.", --Bent Spork
		TRINKET_18 = "A metaphor, perhaps.", --Trojan Horse
		TRINKET_19 = "Admittedly, it's difficult to maintain balance when you're on top.", --Unbalanced Top
		TRINKET_20 = "Eliminates the use of the phrase \"You scratch my back, I'll scratch yours.\"", --Backscratcher
		TRINKET_21 = "I know when I've been beaten.", --Egg Beater
		TRINKET_22 = "The monster child gets tangled in this frequently.", --Frayed Yarn
		TRINKET_23 = "I was looking for that.", --Shoehorn
		TRINKET_24 = "It's been beheaded.", --Lucky Cat Jar
		TRINKET_25 = "The strongman's wardrobe is brimming with them, judging from the odor.", --Air Unfreshener
		TRINKET_26 = "This was important to one very specific person once.", --Potato Cup
		TRINKET_27 = "Finally. My suits were getting wrinkles. Wrinkles!", --Coat Hanger
		TRINKET_28 = "It is still beholden to the king.", --Rook
        TRINKET_29 = "It is still beholden to the king.", --Rook
        TRINKET_30 = "Not a pawn, but still a minion.", --Knight
        TRINKET_31 = "Not a pawn, but still a minion.", --Knight
        TRINKET_32 = "Amateur magic for children.", --Cubic Zirconia Ball
        TRINKET_33 = "The opposite of dapper.", --Spider Ring
        TRINKET_34 = "I'm done tampering with magical oddities, thank-you.", --Monkey Paw
        TRINKET_35 = "I'm not in the habit of imbibing strange liquids.", --Empty Elixir
        TRINKET_36 = "Permanently bared.", --Faux fangs
        TRINKET_37 = "I told you people, I am *not* a vampire!", --Broken Stake
        TRINKET_38 = "You are all ants in my eyes already.", -- Binoculars Griftlands trinket
        TRINKET_39 = "What a tacky glove.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "One hundred percent to scale.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "I've no idea what that is.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "It looks cheap.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "What use would I have of such a thing?", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "Rosebud.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "At least it's not ragtime.", -- Odd Radio ONI trinket
        TRINKET_46 = "Some harebrained invention of the scientist's, perhaps?", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "I'd better leave that be.",
        LOST_TOY_2  = "I'd better leave that be.",
        LOST_TOY_7  = "I'd better leave that be.",
        LOST_TOY_10 = "I'd better leave that be.",
        LOST_TOY_11 = "I'd better leave that be.",
        LOST_TOY_14 = "I'd better leave that be.",
        LOST_TOY_18 = "I'd better leave that be.",
        LOST_TOY_19 = "I'd better leave that be.",
        LOST_TOY_42 = "I'd better leave that be.",
        LOST_TOY_43 = "I'd better leave that be.",

        HALLOWEENCANDY_1 = "Oh good, it's solid candy. I feared something healthy had snuck in.",
        HALLOWEENCANDY_2 = "Waxy, just like me.",
        HALLOWEENCANDY_3 = "Who is making all this candy, exactly?",
        HALLOWEENCANDY_4 = "Black licorice, my favorite.",
        HALLOWEENCANDY_5 = "Almost endearing. Almost.",
        HALLOWEENCANDY_6 = "A mystery I'm not keen on solving.",
        HALLOWEENCANDY_7 = "I am much more disappointed than I thought I'd be.",
        HALLOWEENCANDY_8 = "No one is above enjoying a good lollipop.",
        HALLOWEENCANDY_9 = "How the tables have turned, worm.",
        HALLOWEENCANDY_10 = "No one is above enjoying a good lollipop.",
        HALLOWEENCANDY_11 = "Eating them makes me feel powerful.",
        HALLOWEENCANDY_12 = "Ah, maggots... how novel.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "It's not terrible.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Only ruffians enjoy torturing themselves like this.", --Hot Lava pepper candy
        CANDYBAG = "That's our sugar-sack.",

		HALLOWEEN_ORNAMENT_1 = "Oh joy. Is there really need for decoration?",
		HALLOWEEN_ORNAMENT_2 = "Such a burden to carry it. If only there were a place to leave it.",
		HALLOWEEN_ORNAMENT_3 = "I like the real ones better.",
		HALLOWEEN_ORNAMENT_4 = "Shouldn't it be hanging from somewhere.",
		HALLOWEEN_ORNAMENT_5 = "Ugh. These guys again.",
		HALLOWEEN_ORNAMENT_6 = "Why do I hear \"Nevermore\"?",

		HALLOWEENPOTION_DRINKS_WEAK = "Could be a little stronger.",
		HALLOWEENPOTION_DRINKS_POTENT = "Ah. This'll do the trick.",
        HALLOWEENPOTION_BRAVERY = "Takes away the horrors. But who would want that?",
		HALLOWEENPOTION_MOON = "A fine pot of tea, with a side of mutation.",
		HALLOWEENPOTION_FIRE_FX = "Might as well throw it in the fire.",
		MADSCIENCE_LAB = "How maddening.",
		LIVINGTREE_ROOT = "Ah. A chance to grow something horrible.",
		LIVINGTREE_SAPLING = "Just days away from dreadful.",

        DRAGONHEADHAT = "Quite formidable looking.",
        DRAGONBODYHAT = "I'm no middleman.",
        DRAGONTAILHAT = "The back end of a terrible beast.",
        PERDSHRINE =
        {
            GENERIC = "It seems my fortune's changing.",
            EMPTY = "Something else seems to be required.",
            BURNT = "It's no use to anyone now.",
        },
        REDLANTERN = "Not having a light would certainly be unlucky.",
        LUCKY_GOLDNUGGET = "Gold's gold as far as I'm concerned.",
        FIRECRACKERS = "Great for magic tricks.",
        PERDFAN = "Now I'll have no problem keeping my cool.",
        REDPOUCH = "A spot of luck.",
        WARGSHRINE =
        {
            GENERIC = "The preparations have been made.",
            EMPTY = "It requires a torch.",
--fallback to speech_wilson.lua             BURNING = "I should make something fun.", --for willow to override
            BURNT = "Burnt to cinders.",
        },
        CLAYWARG =
        {
        	GENERIC = "This earthen beast's all fired up.",
        	STATUE = "How delightfully disconcerting.",
        },
        CLAYHOUND =
        {
        	GENERIC = "I was wise to be suspicious.",
        	STATUE = "I don't trust it.",
        },
        HOUNDWHISTLE = "Howl I ever find a use for this?",
        CHESSPIECE_CLAYHOUND = "It's quite fetching.",
        CHESSPIECE_CLAYWARG = "What a gruesome maw.",

		PIGSHRINE =
		{
            GENERIC = "How quaint.",
            EMPTY = "It needs some kind of meat.",
            BURNT = "Not useful like this.",
		},
		PIG_TOKEN = "Those pigs are getting more and more clever.",
		PIG_COIN = "Perfect. I'll try not to spend it all in one place.",
		YOTP_FOOD1 = "Ah. I do enjoy a nice meal.",
		YOTP_FOOD2 = "Ugh. More fit for a creature than for me.",
		YOTP_FOOD3 = "Nothing fancy, but it will do.",

		PIGELITE1 = "He's a slippery fellow.", --BLUE
		PIGELITE2 = "A fiery one.", --RED
		PIGELITE3 = "Filthy.", --WHITE
		PIGELITE4 = "Rotten to the core.", --GREEN

		PIGELITEFIGHTER1 = "He's a slippery fellow.", --BLUE
		PIGELITEFIGHTER2 = "A fiery one.", --RED
		PIGELITEFIGHTER3 = "Filthy.", --WHITE
		PIGELITEFIGHTER4 = "Rotten to the core.", --GREEN

		CARRAT_GHOSTRACER = "Starting to feel left out?",

        YOTC_CARRAT_RACE_START = "I suppose this is what I must do for entertainment now.",
        YOTC_CARRAT_RACE_CHECKPOINT = "These posts will serve as adequate route markers.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "Such frivolity.",
            BURNT = "I've no use for it anymore.",
            I_WON = "I'd almost forgotten the sweet taste of victory.",
            SOMEONE_ELSE_WON = "{winner}'s racer was... superior to mine...",
        },

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

        NIGHTCAPHAT = "I can't remember the last time I slept well.",

        YOTR_FOOD1 = "Cake shaped like a rabbit, how novel.",
        YOTR_FOOD2 = "What a mysterious flavor.",
        YOTR_FOOD3 = "A small piece of fruit, imprisoned in gelatin.",
        YOTR_FOOD4 = "Far too sticky for my liking.",

        YOTR_TOKEN = "Care for a gentleman's duel?",

        COZY_BUNNYMAN = "I could have sworn I left you all underground.",

        HANDPILLOW_BEEFALOWOOL = "What is the thread count on this?",
        HANDPILLOW_KELP = "Looking at it is making me seasick.",
        HANDPILLOW_PETALS = "Can you rightfully call a sack of potpourri a pillow?",
        HANDPILLOW_STEELWOOL = "At least it will make a satisfying thwack.",

        BODYPILLOW_BEEFALOWOOL = "What is the thread count on this?",
        BODYPILLOW_KELP = "Looking at it is making me seasick.",
        BODYPILLOW_PETALS = "Can you rightfully call a sack of potpourri a pillow?",
        BODYPILLOW_STEELWOOL = "It will either protect me or cut me to ribbons.",

		BISHOP_CHARGE_HIT = "How DARE you!",
		TRUNKVEST_SUMMER = "It's more of a fall vest.",
		TRUNKVEST_WINTER = "It's so hard to look fashionable in the winter.",
		TRUNK_COOKED = "At least the mucus burned off.",
		TRUNK_SUMMER = "Full of summer mucus.",
		TRUNK_WINTER = "The trunk thickens in the winter to hold more mucus.",
		TUMBLEWEED = "Tumble on, weed.",
		TURKEYDINNER = "How festive.",
		TWIGS = "Common, but useful.",
		UMBRELLA = "It's crooked!",
		GRASS_UMBRELLA = "It's more \"pretty\" than \"dapper\".",
		UNIMPLEMENTED = "Just what are you up to now, Charlie?",
		WAFFLES = "An excellent start to the morning. Or evening.",
		WALL_HAY =
		{
			GENERIC = "It's a tinderbox.",
			BURNT = "I told you so.",
		},
		WALL_HAY_ITEM = "Pocket-sized wall pieces. Yup.",
		WALL_STONE = "This will keep the riff-raff out.",
		WALL_STONE_ITEM = "Pocket-sized wall pieces. Yup.",
		WALL_RUINS = "An ancient wall.",
		WALL_RUINS_ITEM = "Pocket-sized wall pieces. Yup.",
		WALL_WOOD =
		{
			GENERIC = "Moderately tough, but flammable.",
			BURNT = "Not tough, nor flammable.",
		},
		WALL_WOOD_ITEM = "Pocket-sized wall pieces. Yup.",
		WALL_MOONROCK = "I like to build walls between myself and the world.",
		WALL_MOONROCK_ITEM = "Where should I put this?",
		WALL_DREADSTONE = "Ah. Homey.",
		WALL_DREADSTONE_ITEM = "I appreciate the finer things.",
		FENCE = "My life is one obstacle after another.",
        FENCE_ITEM = "A fence for your pocket.",
        FENCE_GATE = "When one gate closes...",
        FENCE_GATE_ITEM = "A gate for your pocket.",
		WALRUS = "Don't you recognize me?",
		WALRUSHAT = "Made in Scotland.",
		WALRUS_CAMP =
		{
			EMPTY = "I best not linger when winter comes.",
			GENERIC = "The Walrusser can't be far.",
		},
		WALRUS_TUSK = "I'll put this to better use.",
		WARDROBE =
		{
			GENERIC = "Fashion without function.",
            BURNING = "Oops.",
			BURNT = "Dapperness is a state of mind.",
		},
		WARG = "The alpha!",
        WARGLET = "They're smaller than I remember... going soft on us, Charlie?",

		WASPHIVE = "That looks dangerous.",
		WATERBALLOON = "Do you have any idea how much this suit cost?",
		WATERMELON = "It's mostly water. Fibrous, sweet water.",
		WATERMELON_COOKED = "Grillermelon.",
		WATERMELONHAT = "This is one way to keep cool. And sticky.",
		WAXWELLJOURNAL =
		{
			GENERIC = "The show must go on.",
			NEEDSFUEL = "It hungers for the fuel.",
		},
		WETGOOP = "How uncultured.",
        WHIP = "Makes me feel like the master again.",
		WINTERHAT = "How disappointingly rustic.",
		WINTEROMETER =
		{
			GENERIC = "Not the most useful invention, is it?",
			BURNT = "Who cares?",
		},

        WINTER_TREE =
        {
            BURNT = "That's that, it seems.",
            BURNING = "It's a Winter's Feast miracle.",
            CANDECORATE = "How wretchedly jolly.",
            YOUNG = "Have we nothing better to do with our time?",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "How repulsively festive.",
            BURNT = "That's that, it seems.",
		},
        WINTER_ORNAMENT = "Gaudy, like the rest of this shindig.",
        WINTER_ORNAMENTLIGHT = "How frivolous.",
        WINTER_ORNAMENTBOSS = "What a thing to risk one's life for.",
		WINTER_ORNAMENTFORGE = "A volatile decoration.",
		WINTER_ORNAMENTGORGE = "There's something familiar about this...",

        WINTER_FOOD1 = "Stop looking at me, cookie fiend.", --gingerbread cookie
        WINTER_FOOD2 = "We're celebrating freezing to death, I see.", --sugar cookie
        WINTER_FOOD3 = "I don't even use a cane.", --candy cane
        WINTER_FOOD4 = "It is unbound from time.", --fruitcake
        WINTER_FOOD5 = "How, err... traditional.", --yule log cake
        WINTER_FOOD6 = "It's extremely rich.", --plum pudding
        WINTER_FOOD7 = "Glorified apple juice.", --apple cider
        WINTER_FOOD8 = "Such a decadent beverage.", --hot cocoa
        WINTER_FOOD9 = "My... favorite... she remembered.", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "Something about it... ah, I'm sure it's nothing.",
			COOKING = "What's it cooking up now?",
			ALMOST_DONE_COOKING = "I do wish it would hurry up.",
			DISH_READY = "Finally!",
		},
		BERRYSAUCE = "This seems like a lot of fuss for some mashed berries.",
		BIBINGKA = "It has a unique spongy texture.",
		CABBAGEROLLS = "Meat rolled in cabbage. How exciting.",
		FESTIVEFISH = "I don't know what's so festive about it.",
		GRAVY = "I have a tendency to overdo it on the gravy.",
		LATKES = "They're acceptable.",
		LUTEFISK = "It has an odd, yet strangely mouthwatering aroma.",
		MULLEDDRINK = "It brings a small respite from this wretched cold.",
		PANETTONE = "Fruitcake's more agreeable cousin.",
		PAVLOVA = "It has a certain elegance to it.",
		PICKLEDHERRING = "I suppose I can't be picky.",
		POLISHCOOKIE = "How quaint.",
		PUMPKINPIE = "Well... perhaps just a slice.",
		ROASTTURKEY = "I myself will carve this roast beast.",
		STUFFING = "Something to fill the void in my stomach.",
		SWEETPOTATO = "How very... rustic.",
		TAMALES = "They've got a bit of kick to them.",
		TOURTIERE = "I haven't had a meat pie since I left Liverpool.",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "Must we go through this production for a little food?",
			HAS_FOOD = "I suppose I'll have to share.",
			WRONG_TYPE = "The wrong place for this.",
			BURNT = "Humbug.",
		},

		GINGERBREADWARG = "Pretty brash for something so edible.",
		GINGERBREADHOUSE = "Entirely too gaudy.",
		GINGERBREADPIG = "Must you make me chase you?",
		CRUMBS = "It's falling apart.",
		WINTERSFEASTFUEL = "I prefer my fuel more nightmarish.",

        KLAUS = "My, what a magnificently horrific creature.",
        KLAUS_SACK = "What dark treasures lie within?",
		KLAUSSACKKEY = "Magic has done things to this beast's horn.",
		WORMHOLE =
		{
			GENERIC = "It's worse knowing what the other part looks like.",
			OPEN = "I assure you that it smells worse than it looks.",
		},
		WORMHOLE_LIMITED = "It looks ill.",
		ACCOMPLISHMENT_SHRINE = "Even They couldn't build something so devious.", --single player
		LIVINGTREE = "It's got a face.",
		ICESTAFF = "Cool staff.",
		REVIVER = "I'm not sure I really want to give this up.",
		SHADOWHEART = "A pulse of malice and betrayal beats within.",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "A picture of the city, before the fuel.",
			LINE_2 = "We all know what happens next.",
			LINE_3 = "They gained such an enviable power...",
			LINE_4 = "I know why you led me back here.",
			LINE_5 = "But it won't work.",
		},
        ATRIUM_STATUE = "There's a dreamlike quality to the material.",
        ATRIUM_LIGHT =
        {
			ON = "It feeds off the nightmare.",
			OFF = "No fuel, no power.",
		},
        ATRIUM_GATE =
        {
			ON = "This is a most wretched idea.",
			OFF = "It lacks a key.",
			CHARGING = "It is feeding off the dark energy.",
			DESTABILIZING = "Now we've gone and done it.",
			COOLDOWN = "Best not to overuse this power.",
        },
        ATRIUM_KEY = "It's strange to see it.",
		LIFEINJECTOR = "Who would put this filth in their veins?",
		SKELETON_PLAYER =
		{
			MALE = "A pity, %s. He was not prepared for %s.",
			FEMALE = "A pity, %s. She was not prepared for %s.",
			ROBOT = "A pity, %s. They were not prepared for %s.",
			DEFAULT = "A pity, %s. So ill-prepared for %s.",
		},
--fallback to speech_wilson.lua 		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
--fallback to speech_wilson.lua 		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
--fallback to speech_wilson.lua 		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		ROCK_MOON = "\"Moon\" rock.",
		MOONROCKNUGGET = "\"Moon\" rock.",
		MOONROCKCRATER = "This will make a decent magical vessel.",
		MOONROCKSEED = "Oooh, some new knowledge.",

        REDMOONEYE = "Its aura can be felt from anywhere. Quite useful.",
        PURPLEMOONEYE = "A decent enough use of the gem's power, I suppose.",
        GREENMOONEYE = "It's useful for keeping in contact with my... acquaintances.",
        ORANGEMOONEYE = "I have a feeling of being watched, even from a considerable distance away.",
        YELLOWMOONEYE = "A conveniently color-coded place marker.",
        BLUEMOONEYE = "That reminds me, I must practice my cold glare tonight!",

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

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "I could have thought of that.",
        	OFF = "It's useless out here without power.",
        	BURNING = "I'm going to pretend I don't see it.",
        	BURNT = "Oh. What a pity.",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "Well sure, if you want to take the easy way out.",
        	OFF = "It's useless out here without power.",
        	BURNING = "I'm going to pretend I don't see it.",
        	BURNT = "Oh. What a pity.",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "Where does she find the time to build all this.",
        	LOWPOWER = "I think it's losing power.",
        	OFF = "See? It wasn't so great after all.",
        	BURNING = "I'm going to pretend I don't see it.",
        	BURNT = "Oh. What a pity.",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "At least she has the sense to use gems.",
        	LOWPOWER = "I think it's losing power.",
        	OFF = "Magic isn't so easy, is it?",
        	BURNING = "I'm going to pretend I don't see it.",
        	BURNT = "Oh. What a pity.",
        },

        --Wormwood
        COMPOSTWRAP = "I'm utterly dung with all of this.",
        ARMOR_BRAMBLE = "Who's frail now?",
        TRAP_BRAMBLE = "Best laid traps.",

        BOATFRAGMENT03 = "Merely smithereens.",
        BOATFRAGMENT04 = "Merely smithereens.",
        BOATFRAGMENT05 = "Merely smithereens.",
		BOAT_LEAK = "Oh, great. Now we're going to drown.",
        MAST = "Every vessel mast have one.",
        SEASTACK = "It would be easy to wreck a vessel on one of those.",
        FISHINGNET = "Not my preferred way to ensnare enemies.", --unimplemented
        ANTCHOVIES = "What a miserable thing.", --unimplemented
        STEERINGWHEEL = "Why yes, you may call me the \"Captain\".",
        ANCHOR = "I can drop it to keep the boat in place.",
        BOATPATCH = "I detest such work.",
        DRIFTWOOD_TREE =
        {
            BURNING = "It seems to be burning.",
            BURNT = "It's in utter ruin.",
            CHOPPED = "We've chopped it up already.",
            GENERIC = "It appears to be a piece of drifted wood.",
        },

        DRIFTWOOD_LOG = "Oh good. More wood.",

        MOON_TREE =
        {
            BURNING = "It's burning.",
            BURNT = "A burnt tree stump.",
            CHOPPED = "Someone's chopped it down already.",
            GENERIC = "It's a moon tree.",
        },
		MOON_TREE_BLOSSOM = "It came from that odd tree.",

        MOONBUTTERFLY =
        {
        	GENERIC = "How wretchedly graceful.",
        	HELD = "You can't escape my villainous grasp!",
        },
		MOONBUTTERFLYWINGS = "What am I supposed to do with these?",
        MOONBUTTERFLY_SAPLING = "It's a small moon tree.",
        ROCK_AVOCADO_FRUIT = "I'd rather not shatter my teeth on that.",
        ROCK_AVOCADO_FRUIT_RIPE = "It's ripe enough to eat now.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It looks almost appetizing.",
        ROCK_AVOCADO_FRUIT_SPROUT = "How off-putting. It's grown a sprout.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "It is fruitless and useless now.",
			WITHERED = "It resembles Woodie, does it not?",
			GENERIC = "It labors to make my dinner.",
			PICKED = "What use are you to me if you don't have fruit?",
			DISEASED = "It's ill.", --unimplemented
            DISEASING = "I think it's sick or something.", --unimplemented
			BURNING = "Well that's a shame.",
		},
        DEAD_SEA_BONES = "Adapt or perish.",
        HOTSPRING =
        {
        	GENERIC = "I miss a good long bath.",
        	BOMBED = "How posh.",
        	GLASS = "I could make use of that glass.",
			EMPTY = "It's of no use to me like this.",
        },
        MOONGLASS = "But does it look as sharp as me?",
        MOONGLASS_CHARGED = "Nearly as sharp as I am, but with a garish glow.",
        MOONGLASS_ROCK = "\"Moon\" detritus.",
        BATHBOMB = "It smells quite nice, if I'm honest.",
        TRAP_STARFISH =
        {
            GENERIC = "It's just a silly starfish.",
            CLOSED = "Devious thing.",
        },
        DUG_TRAP_STARFISH = "What would be the most devilish place to put it?",
        SPIDER_MOON =
        {
        	GENERIC = "How monstrous.",
        	SLEEPING = "I'd rather not wake it.",
        	DEAD = "Good riddance.",
        },
        MOONSPIDERDEN = "I'd rather not peek inside.",
		FRUITDRAGON =
		{
			GENERIC = "They aren't very sociable.",
			RIPE = "I bet it's delicious.",
			SLEEPING = "Sleep is only a temporary escape.",
		},
        PUFFIN =
        {
            GENERIC = "It's a puffin.",
            HELD = "I'm gonna turn you into puffin' stuff.",
            SLEEPING = "Sleep is only a temporary escape.",
        },

		MOONGLASSAXE = "Go on. Axe me what the moon's made of.",
		GLASSCUTTER = "Sharp like my wit.",

        ICEBERG =
        {
            GENERIC = "Ice, ice, maybe.", --unimplemented
            MELTED = "It's melted.", --unimplemented
        },
        ICEBERG_MELTED = "It's melted.", --unimplemented

        MINIFLARE = "For those with a flare for the dramatic.",
        MEGAFLARE = "I'd have to be foolish or desperate to use that.",

		MOON_FISSURE =
		{
			GENERIC = "It's not shadow magic.",
			NOLIGHT = "I've more important things to deal with than holes in the ground.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "There is powerful energy pouring out of it.",
            GENERIC = "Yes. I desire the knowledge of the moon.",
        },

        MOON_ALTAR_IDOL = "Let me know your wishes, and I will oblige.",
        MOON_ALTAR_GLASS = "This is not its desired destination.",
        MOON_ALTAR_SEED = "Where shall I take you?",

        MOON_ALTAR_ROCK_IDOL = "The thing inside wants out.",
        MOON_ALTAR_ROCK_GLASS = "The thing inside wants out.",
        MOON_ALTAR_ROCK_SEED = "The thing inside wants out.",

        MOON_ALTAR_CROWN = "This powerful energy... I've seen it before.",
        MOON_ALTAR_COSMIC = "It is not yet time?",

        MOON_ALTAR_ASTRAL = "Why do I get the sense... ah, I'm sure it's nothing.",
        MOON_ALTAR_ICON = "I know where you need to be.",
        MOON_ALTAR_WARD = "I'll take you to the others.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "Now to see if Higgsbury's ideas hold water.",
            BURNT = "Well, it's useless now.",
        },
        BOAT_ITEM = "I've been reduced to a common shipyard laborer.",
        BOAT_GRASS_ITEM = "Am I building a boat or weaving a basket?",
        STEERINGWHEEL_ITEM = "Hard labor? Isn't that Winona's forte?",
        ANCHOR_ITEM = "Can't someone else assemble it?",
        MAST_ITEM = "Do I look like a shipyard laborer?",
        MUTATEDHOUND =
        {
        	DEAD = "That is probably for the best.",
        	GENERIC = "If anything ever looked evil, it's that.",
        	SLEEPING = "I don't desire to rouse it.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "Good riddance.",
			GENERIC = "What an atrocious beast.",
			SLEEPING = "May you never wake.",
		},
        CARRAT =
        {
        	DEAD = "Disgusting.",
        	GENERIC = "That carrot is revolting!",
        	HELD = "You thought you could fool me?",
        	SLEEPING = "I'm sure it is diseased.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Disgusting. I'll have someone else pick it.",
            PICKED = "We already took the food parts.",
        },
		BULLKELP_ROOT = "For keeping the peasantry in line.",
        KELPHAT = "You really expect me to wear this?",
		KELP = "Can I eat something that's not slimy for once?",
		KELP_COOKED = "This was not an improvement.",
		KELP_DRIED = "Sadly, I've eaten worse out here.",

		GESTALT = "It communes with us through them.",
        GESTALT_GUARD = "I think it would be best to keep my distance.",

		COOKIECUTTER = "Stay back, you!",
		COOKIECUTTERSHELL = "Hmph. I suppose this could be useful.",
		COOKIECUTTERHAT = "This doesn't look dapper at all.",
		SALTSTACK =
		{
			GENERIC = "Odd...",
			MINED_OUT = "It's been mined down to nothing.",
			GROWING = "It seems to be growing back...",
		},
		SALTROCK = "Am I to be a salt miner now?",
		SALTBOX = "This will extend the life of our supplies somewhat.",

		TACKLESTATION = "I suppose I could use a relaxing day of fishing.",
		TACKLESKETCH = "What forbidden fishing knowledge do you hold?",

        MALBATROSS = "I've no desire to do battle with that thing.",
        MALBATROSS_FEATHER = "This would be a nice feather in my cap.",
        MALBATROSS_BEAK = "Ugh, I don't want to touch that.",
        MAST_MALBATROSS_ITEM = "Must I do everything?",
        MAST_MALBATROSS = "A warning to any waterfowl that cross us.",
		MALBATROSS_FEATHERED_WEAVE = "Hopefully it catches the wind as well as the eye.",

        GNARWAIL =
        {
            GENERIC = "Perhaps it could be reasoned with.",
            BROKENHORN = "It seems you've lost something, pal.",
            FOLLOWER = "We've come to an agreement.",
            BROKENHORN_FOLLOWER = "Shame about your horn, pal.",
        },
        GNARWAIL_HORN = "Impressive.",

        WALKINGPLANK = "Jumping off would ruin what's left of my suit.",
        WALKINGPLANK_GRASS = "Jumping off would ruin what's left of my suit.",
        OAR = "I have no desire to toil like a common sailor.",
		OAR_DRIFTWOOD = "Hmph. I've never been one for manual lab-oar.",

		OCEANFISHINGROD = "A more in-depth approach to fishing.",
		OCEANFISHINGBOBBER_NONE = "It seems to be missing something.",
        OCEANFISHINGBOBBER_BALL = "How quaint.",
        OCEANFISHINGBOBBER_OVAL = "It's made of tougher stuff.",
		OCEANFISHINGBOBBER_CROW = "I used to see quill floats like this back in England.",
		OCEANFISHINGBOBBER_ROBIN = "I used to see quill floats like this back in England.",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "I used to see quill floats like this back in England.",
		OCEANFISHINGBOBBER_CANARY = "I used to see quill floats like this back in England.",
		OCEANFISHINGBOBBER_GOOSE = "A bit of extra flair goes a long way.",
		OCEANFISHINGBOBBER_MALBATROSS = "A bit of extra flair goes a long way.",

		OCEANFISHINGLURE_SPINNER_RED = "At least I don't have to use worms.",
		OCEANFISHINGLURE_SPINNER_GREEN = "At least I don't have to use worms.",
		OCEANFISHINGLURE_SPINNER_BLUE = "At least I don't have to use worms.",
		OCEANFISHINGLURE_SPOON_RED = "At least I don't have to use worms.",
		OCEANFISHINGLURE_SPOON_GREEN = "At least I don't have to use worms.",
		OCEANFISHINGLURE_SPOON_BLUE = "At least I don't have to use worms.",
		OCEANFISHINGLURE_HERMIT_RAIN = "Go fishing in the rain? And ruin my last good suit?",
		OCEANFISHINGLURE_HERMIT_SNOW = "Why would anyone want to fish while it's snowing?",
		OCEANFISHINGLURE_HERMIT_DROWSY = "I think Higgsbury already got too close to one of these.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "I'm reluctant to see what manner of fish would bite THAT.",

		OCEANFISH_SMALL_1 = "This was barely worth my time.",
		OCEANFISH_SMALL_2 = "Hardly bigger than a minnow.",
		OCEANFISH_SMALL_3 = "I was hoping for something bigger.",
		OCEANFISH_SMALL_4 = "Just a cold fish.",
		OCEANFISH_SMALL_5 = "Its smell oddly reminds me of the theater house...",
		OCEANFISH_SMALL_6 = "What an ugly thing.",
		OCEANFISH_SMALL_7 = "It seems more plant than fish.",
		OCEANFISH_SMALL_8 = "The sunfish! It burns!",
        OCEANFISH_SMALL_9 = "How vulgar.",

		OCEANFISH_MEDIUM_1 = "It looks positively revolting.",
		OCEANFISH_MEDIUM_2 = "It has a rather unsettling stare.",
		OCEANFISH_MEDIUM_3 = "I'd best take care to avoid those spines.",
		OCEANFISH_MEDIUM_4 = "I'm not sure it was worth the effort.",
		OCEANFISH_MEDIUM_5 = "What an odd creature.",
		OCEANFISH_MEDIUM_6 = "Don't be koi with me.",
		OCEANFISH_MEDIUM_7 = "Don't be koi with me.",
		OCEANFISH_MEDIUM_8 = "Stay frosty, pal.",
        OCEANFISH_MEDIUM_9 = "It seems we share an appreciation for figs.",

		PONDFISH = "Fresh from the murky depths.",
		PONDEEL = "It slithers all the way down.",

        FISHMEAT = "Ugh, it's still twitching.",
        FISHMEAT_COOKED = "Bland... but acceptable.",
        FISHMEAT_SMALL = "I'm reduced to scavenging scraps.",
        FISHMEAT_SMALL_COOKED = "That was barely an appetizer.",
		SPOILED_FISH = "How vile.",

		FISH_BOX = "Ugh, the smell... the things I do for a decent meal.",
        POCKET_SCALE = "I keep it next to my pocket watch and my pocket comb.",

		TACKLECONTAINER = "Can I really even call it a \"box\"?",
		SUPERTACKLECONTAINER = "Not the most refined design, but it's functional.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "Perhaps I might reign again... as the king of fishing!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nEnjoy your moment while it lasts...",
			BURNING = "No! NOO!",
			BURNT = "All my ambitions go up in smoke.",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nBow down before your fishing master!",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nImpressive, isn't it?",
		},

		OCEANFISHABLEFLOTSAM = "Disappointing.",

		CALIFORNIAROLL = "I don't think I truly appreciated those sunny shores.",
		SEAFOODGUMBO = "It looks passable.",
		SURFNTURF = "A very balanced meal, I suppose.",

        WOBSTER_SHELLER = "I'd prefer it without the sharp, pinching claws.",
        WOBSTER_DEN = "What manner of creature lives in there?",
        WOBSTER_SHELLER_DEAD = "Excellent.",
        WOBSTER_SHELLER_DEAD_COOKED = "I forgot my bib.",

        LOBSTERBISQUE = "Ah, I do enjoy the finer things.",
        LOBSTERDINNER = "Finally, something to suit my refined palate.",

        WOBSTER_MOONGLASS = "They didn't look like that when I was in charge.",
        MOONGLASS_WOBSTER_DEN = "I suppose life finds a way.",

		TRIDENT = "It seems to have struck a chord.",

		WINCH =
		{
			GENERIC = "We are to start dredging up what lies beneath now, are we?",
			RETRIEVING_ITEM = "It seems I've gotten a hold of something.",
			HOLDING_ITEM = "Interesting.",
		},

        HERMITHOUSE = {
            GENERIC = "What a sad little hovel.",
            BUILTUP = "It's an improvement.",
        },

        SHELL_CLUSTER = "That was not worth the effort.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Hm?",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "No, go on, keep playing that same note. It's not irritating at all.",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "I've quite lost my taste for music.",
        },

        CHUM = "Say, that chum doesn't look so good.",

        SUNKENCHEST =
        {
            GENERIC = "How whimsical.",
            LOCKED = "How annoying. It's locked.",
        },

        HERMIT_BUNDLE = "How... quaint.",
        HERMIT_BUNDLE_SHELLS = "Nautical decor was never my style.",

        RESKIN_TOOL = "Presto change-o! Ahem... old habit.",
        MOON_FISSURE_PLUGGED = "It's almost genius in its simplicity... but it does smell.",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "I'd rather not get hair all over my suit.",
            "I'd rather not get hair all over my suit.",
        },
        WOBYSMALL =
        {
            "She slobbers...",
            "She slobbers...",
        },
		WALTERHAT = "It's not quite my style.",
		SLINGSHOT = "A rather childish weapon, but quite effective in the right hands.",
		SLINGSHOTAMMO_ROCK = "Not particularly creative.",
		SLINGSHOTAMMO_MARBLE = "Not particularly creative.",
		SLINGSHOTAMMO_THULECITE = "Ah, now that might be interesting.",
        SLINGSHOTAMMO_GOLD = "Ah, now that might be interesting.",
        SLINGSHOTAMMO_SLOW = "Ah, now that might be interesting.",
        SLINGSHOTAMMO_FREEZE = "Ah, now that might be interesting.",
		SLINGSHOTAMMO_POOP = "Must he leave that lying around? I nearly ruined my shoes.",
        PORTABLETENT = "Oh, how I miss sleeping indoors.",
        PORTABLETENT_ITEM = "Surely someone else can set it up.",

        -- Wigfrid
        BATTLESONG_DURABILITY = "No. I do NOT sing.",
        BATTLESONG_HEALTHGAIN = "No. I do NOT sing.",
        BATTLESONG_SANITYGAIN = "No. I do NOT sing.",
        BATTLESONG_SANITYAURA = "No. I do NOT sing.",
        BATTLESONG_FIRERESISTANCE = "No. I do NOT sing.",
        BATTLESONG_INSTANT_TAUNT = "My acts were always a bit more improvisational.",
        BATTLESONG_INSTANT_PANIC = "My acts were always a bit more improvisational.",

        -- Webber
        MUTATOR_WARRIOR = "I'm not eating that.",
        MUTATOR_DROPPER = "How sickeningly endearing.",
        MUTATOR_HIDER = "I'm not eating that.",
        MUTATOR_SPITTER = "How sickeningly endearing.",
        MUTATOR_MOON = "I'm not eating that.",
        MUTATOR_HEALER = "How sickeningly endearing.",
        SPIDER_WHISTLE = "It's probably covered in spider spit.",
        SPIDERDEN_BEDAZZLER = "Careful child, it's a slippery slope towards a career in the arts.",
        SPIDER_HEALER = "I don't think that's one of mine.",
        SPIDER_REPELLENT = "If only loud noises were really enough to deter them.",
        SPIDER_HEALER_ITEM = "Just in case I lose my mind entirely and want to heal those little pests.",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "It appears someone has been toying with the dark arts and crafts.",
		GHOSTLYELIXIR_FASTREGEN = "It appears someone has been toying with the dark arts and crafts.",
		GHOSTLYELIXIR_SHIELD = "It appears someone has been toying with the dark arts and crafts.",
		GHOSTLYELIXIR_ATTACK = "It appears someone has been toying with the dark arts and crafts.",
		GHOSTLYELIXIR_SPEED = "It appears someone has been toying with the dark arts and crafts.",
		GHOSTLYELIXIR_RETALIATION = "It appears someone has been toying with the dark arts and crafts.",
		SISTURN =
		{
			GENERIC = "I can't help but wonder... no, it couldn't be.",
			SOME_FLOWERS = "Perhaps I should pay my respects as well.",
			LOTS_OF_FLOWERS = "It has a strangely calming effect.",
		},

        --Wortox
--fallback to speech_wilson.lua         WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "An instrument of the dark culinary arts.",
            DONE = "Let's hope something palatable has come of it.",

			COOKING_LONG = "I must exercise patience...",
			COOKING_SHORT = "It will be finished shortly.",
			EMPTY = "Dismally devoid of foodstuffs.",
        },

        PORTABLEBLENDER_ITEM = "Does it have to make such a horrible racket?",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Ah. The daily grind.",
            DONE = "Finally something with some taste.",
        },
        SPICEPACK = "I've been reduced to hauling my own foodstuffs.",
        SPICE_GARLIC = "Keeps everyone from getting too close.",
        SPICE_SUGAR = "I never was one for syrupy mush.",
        SPICE_CHILI = "Bit of a kick in the pants.",
        SPICE_SALT = "My doctor said I shouldn't have too much.",
        MONSTERTARTARE = "It's less than appetizing.",
        FRESHFRUITCREPES = "Deserves to be eaten with fine silverware. Sadly, I've just my hands.",
        FROGFISHBOWL = "At the end of the day, it's still frog.",
        POTATOTORNADO = "What an odd way to serve potatoes.",
        DRAGONCHILISALAD = "I'll permit him to stay so long as he keeps cooking.",
        GLOWBERRYMOUSSE = "What a nice change it is to know someone who cooks.",
        VOLTGOATJELLY = "Just because I'm old doesn't mean I like gelatin.",
        NIGHTMAREPIE = "I'm going to have dreams about this pie nightmare.",
        BONESOUP = "It's hearty and filling.",
        MASHEDPOTATOES = "I do love mashed potatoes.",
        POTATOSOUFFLE = "It's so delicate.",
        MOQUECA = "I've never had it before.",
        GAZPACHO = "It smells much nicer going in than coming back out.",
        ASPARAGUSSOUP = "I suppose you can make soup from anything.",
        VEGSTINGER = "I do enjoy a drink.",
        BANANAPOP = "Hm... I don't know what I was expecting.",
        CEVICHE = "A delightful, cultured dish.",
        SALSA = "A bit spicy for my delicate palate.",
        PEPPERPOPPER = "Pops right into my mouth!",

        TURNIP = "It's a big, bulbous turnip.",
        TURNIP_COOKED = "Hardly improves the taste.",
        TURNIP_SEEDS = "Am I supposed to plant these?",

        GARLIC = "I suppose that's why there are no vampires around.",
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

        CHARLIE_NPC = "Charlie...",
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
