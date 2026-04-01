-- Welina's speech file
-- The strings here are also used when other characters are missing a line.
-- If you've added an object to the mod, this is where to add placeholder strings.
-- Keep things organized.

ANNOUNCE = GLOBAL.STRINGS.CHARACTERS.WELINA
DESCRIBE = GLOBAL.STRINGS.CHARACTERS.WELINA.DESCRIBE
ACTIONFAIL = GLOBAL.STRINGS.CHARACTERS.WELINA.ACTIONFAIL


-- [ Welinas Descriptions ]--

ANNOUNCE.DREADEYE_SPOOKED = "Oh, I'm so shaking right nyow."
ANNOUNCE.ANNOUNCE_HARDCORE_RES = "That's just not gonna work"
ANNOUNCE.ANNOUNCE_WINONAGEN = "I stay away from wires."
ANNOUNCE.ANNOUNCE_RATRAID = "What is that I smell.... Rats."
ANNOUNCE.ANNOUNCE_RATRAID_SPAWN = "Is this some kind of suicide run."
ANNOUNCE.ANNOUNCE_RATRAID_OVER = "Are there any left, I haven't had my fill."
ANNOUNCE.ANNOUNCE_ACIDRAIN = {
    "The rain, it burns!", "Ack, acid rain!", "I need shelter!"
}
ANNOUNCE.ANNOUNCE_TOADSTOOLED = "The damn meowshrooms... Cough..."
-- FoodBuffs
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_LESSERELECTRICATTACK =
    ANNOUNCE.ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_ELECTRICRETALIATION =
    ANNOUNCE.ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_FROZENFURY = "My heart was already frozen solid."
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_VETCURSE = "Just as I thought I hit the bottom."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_LESSERELECTRICATTACK =
    ANNOUNCE.ANNOUNCE_DETACH_BUFF_ELECTRICATTACK
ANNOUNCE.ANNOUNCE_DETACH_BUFF_ELECTRICRETALIATION =
    ANNOUNCE.ANNOUNCE_DETACH_BUFF_ELECTRICATTACK
ANNOUNCE.ANNOUNCE_DETACH_BUFF_FROZENFURY = "To feel warmth again..."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_VETCURSE = "I don't wanna admit it but, I feel SLIGHTLY better."
ANNOUNCE.ANNOUNCE_RNEFOG = "I can never catch a break."
-- FoodBuffs

-- CaliforniaKing
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_CALIFORNIAKING = "It tastes as good as any other trash."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_CALIFORNIAKING = "Feeling... lighter. Huh."
DESCRIBE.CALIFORNIAKING = "I've downed worse.."
-- CaliforniaKing

-- Content Creators
DESCRIBE.CCTRINKET_DON = "I can only make out the words \"Don\" and \"Guide\"."
DESCRIBE.CCTRINKET_JAZZY = "Looks pretty jazzy."
DESCRIBE.CCTRINKET_FREDDO = "The name \"Freddo\" is etched onto it."
DESCRIBE.CCTRINKET_NAMES = "Someone probably needs this."

-- Content Creators
DESCRIBE.UNCOMPROMISING_RAT = "Why do you look so delicious."
DESCRIBE.UNCOMPROMISING_RATHERD = "Does it taste as good as the smaller ones."
DESCRIBE.UNCOMPROMISING_RATBURROW = "How not subtle, at all."
DESCRIBE.UNCOMPROMISING_WINKYBURROW =
"You could bury someowne in one of these."
DESCRIBE.UNCOMPROMISING_WINKYHOMEBURROW =
"Sure smells like her."

DESCRIBE.WINKY = {
    GENERIC = "Mhrmmhm- oh, 'sup %s.",
    ATTACKER = "Nyack- this one bites.",
    MURDERER = "Let's cut the formeowlities, I wanna find out what you taste like.",
    REVIVER = "I hate you slightly less, %s.",
    GHOST = "Let's keep it that way, %s.",
    FIRESTARTER = "She's causing trouble, told you I should've just eaten her."
}
DESCRIBE.WATHOM = {
    GENERIC = "'Sup, bugboy %s.",
    ATTACKER = "A little tough love from this guy, whatever.",
    MURDERER = "Take your best shot, %s.",
    REVIVER = "Hmph, showoff.",
    GHOST = "Why is %s black.",
    FIRESTARTER = "How about you DON'T burn stuff around meow."
}
DESCRIBE.WIXIE = {
    GENERIC = "'Sup, buckteeth %s.",
    ATTACKER = "Another toddler throwing a fit, great.",
    MURDERER = "If you wanna fight, no waterballoons, make it fair %s.",
    REVIVER = "I hate you but at least you're useful, %s.",
    GHOST = "I think that's my cue to laugh at %s.",
    FIRESTARTER = "Nyarson is not \"just kids being kids\"."
}

DESCRIBE.RATPOISONBOTTLE =
"\"Do not drink.\"Huh, why the hell not."
DESCRIBE.RATPOISON = "It would be so easy."

DESCRIBE.MONSTERSMALLMEAT = "You kitten meow, that's barely anyathing."
DESCRIBE.COOKEDMONSTERSMALLMEAT = "Looks slightly more edible I guess."
DESCRIBE.MONSTERSMALLMEAT_DRIED = "Still gonna fight its way down."

DESCRIBE.UM_MONSTEREGG = "Meownster egg, okay sure."
DESCRIBE.UM_MONSTEREGG_COOKED = "Probably tastes as bad as it looks."

DESCRIBE.MUSHROOMSPROUT_OVERWORLD = "There's the source of the pestilence!"
DESCRIBE.TOADLING = "It sure likes those weird trees."
DESCRIBE.UNCOMPROMISING_TOAD = "He's green because he can be placed."

DESCRIBE.GASMASK = "Blegh, how do you... use this thing."
DESCRIBE.MOCK_DRAGONFLY = DESCRIBE.DRAGONFLY
DESCRIBE.MOTHERGOOSE = DESCRIBE.MOOSE
DESCRIBE.UM_SPIDERQUEENCORPSE = "Whatever."
ANNOUNCE.ANNOUNCE_SNEEZE = "Nya-CHOOO!"
ANNOUNCE.ANNOUNCE_HAYFEVER = "Hmph, something's in the air."
ANNOUNCE.ANNOUNCE_HAYFEVER_OFF = "I can finally breathe, was that so myuch to ask for."
ANNOUNCE.ANNOUNCE_FIREFALL = {
    "It sure is heating up around here.", "Geez, that guys getting loud!",
    "I've got a bad feeling about this."
}
ANNOUNCE.ANNOUNCE_ROOTING = "Caged, probably for the best."
ANNOUNCE.ANNOUNCE_SNOWSTORM = "The storm from within threatens to break out."

ANNOUNCE.SHADOWTALKER = {
    "NO ONE WILL MISS ME WHEN I'M GONE", "JUST AN ENDLESS GAME OF CAT AND MOUSE",
    "IT'S ONLY A MATTER OF TIME", "A SWIFT END WOULD BE SO MUCH BETTER",
    "DOES ANYTHING I DO EVEN MATTER", "IT KEEPS GETTING WORSE",
    "WHO'D LISTEN TO ME ANYWAY", "I JUST WANT TO CLOSE MY EYES",
    "I REALLY NEVER CHANGE"
}

-- StantonStuff
ANNOUNCE.STANTON_GREET = {
    "Care to drink with the dead?",
    "Let's play a little game, how's about a drink?", "Come and drink with me.",
    "I pick the drinks, you knock 'em back."
}
ANNOUNCE.STANTON_GIVE = {
    "You seem willing, I'll drink with you.", "It'll be you then."
}
ANNOUNCE.STANTON_RESTOCK = {
    "Still awake? We can drink again.", "I can give you another."
}
ANNOUNCE.STANTON_RULES = { "I only drink with one at a time." }
ANNOUNCE.STANTON_GLOAT = { "Ha! I knew you were soft.", "Ha! You lose!" }

ANNOUNCE.STANTON_POET1 = {
    "When it's six to midnight and the boney hand of death is nigh."
}
ANNOUNCE.STANTON_POET2 = { "You better drink your drink and shut your mouth." }
ANNOUNCE.STANTON_POET3 = { "If you draw against his hand, you can never win." }
ANNOUNCE.STANTON_POET4 = { "Go ahead… drink with the living dead." }
ANNOUNCE.STANTON_POET5 = { "Drink with the living dead." }

ANNOUNCE.STANTON_IMPATIENT = {
    "I'm getting tired of waiting here.", "I ain't got all night!"
}
ANNOUNCE.STANTON_SUPERIMPATIENT = { "I'm done waiting." }
-- StantonStuff

ANNOUNCE.SHADOW_CROWN_CHALLENGE = "DEFEAT THIS CREATURE AND CLAIM YOUR PRIZE"
ANNOUNCE.ANNOUNCE_OVER_EAT = {
    STUFFED = "I'm full!",
    OVERSTUFFED = "Oooh... I shouldn't eat more!"
}
ANNOUNCE.CURSED_ITEM_EQUIP = "Meowsery."
DESCRIBE.VETSITEM = "Like I don't already have a thousand curses on meow"
DESCRIBE.SCREECHER_TRINKET = "Hmph, don't look at meow with those eyes."
DESCRIBE.TRINKET_WATHOM1 = "I'm not going to act like I know what this is."

DESCRIBE.UM_SAND = "Hate when it gets between my claws."
DESCRIBE.UM_SANDHILL = "A bunch of pretty tasty looking scorpions hiding in that."
DESCRIBE.SNOWPILE = "White, content and pure. The very opposite of meow"
DESCRIBE.SNOWGOGGLES = "Crazy how manya ways there are to skin a cat."

DESCRIBE.SNOWMONG = "I don't appreciate your companya."
DESCRIBE.SHOCKWORM = "Just being close to them gets my hair up."
DESCRIBE.ZASPBERRY = "We all end up as food for someowne in the end."
DESCRIBE.ZASPBERRYPARFAIT = "Looks tasty enough."
DESCRIBE.ICEBOOMERANG = "Right around and back into my face."

DESCRIBE.MINOTAUR_BOULDER = "Couldn't it fall on meow."
DESCRIBE.MINOTAUR_BOULDER_BIG =
"You had the chance, why didn't you crush meow?"
DESCRIBE.BUSHCRAB = "Can't even pick berries in peace anyamore."
DESCRIBE.LAVAE2 = DESCRIBE.LAVAE
DESCRIBE.DISEASECUREBOMB =
"It's filled with who-knows-what, but it works."
DESCRIBE.TOADLINGSPAWNER = "Better get rid of that."
DESCRIBE.VETERANSHRINE = "Every day I wake up is a curse."
DESCRIBE.VET_SKULL = "How poetic"
DESCRIBE.UM_BOSS_SOUL = "Some souls are simply worth more."
DESCRIBE.UM_DARK_VESTIGES = "Omeownous, but what do I know."
DESCRIBE.UM_VOXOLOPHONE = "I don't know you, shut up."

DESCRIBE.UM_EXHUMER = "Could be useful to someowne, that cares, probably."
DESCRIBE.UM_WINGSUIT = "Feeling less and less like a cat by the minute."
DESCRIBE.UM_MOONFLY_LANTERN = "What's anyother light to walk into."

DESCRIBE.WICKER_TENTACLE = "Summeowning tentacles isn't exactly an interesting passtime. Unless you're into that."
DESCRIBE.HONEY_LOG = "I'll shove it in Weeties meowth and he'll enjoy it."

DESCRIBE.RAT_TAIL = "At least you made a good myeal."
DESCRIBE.PLAGUEMASK = "Am I gonna choke on the spores."
DESCRIBE.SALTPACK = "Can't I get Weetie to do this."
DESCRIBE.SPOREPACK = "Smells horrible, not that I care too much."
DESCRIBE.SPIDER_TRAPDOOR = "Can you just let meow be, ugh."
DESCRIBE.TRAPDOOR = "Just a rock, probably."
DESCRIBE.HOODEDTRAPDOOR = DESCRIBE.TRAPDOOR
DESCRIBE.SHROOM_SKIN_FRAGMENT =
"Smells like a rotting corpse."
DESCRIBE.AIR_CONDITIONER = "It's just air in different flavors, what's the big deal."


DESCRIBE.SKELETONMEAT = "I draw a line somewhere around here too."
DESCRIBE.CHIMP = DESCRIBE.MONKEY
DESCRIBE.SWILSON = "My nightmares are trying to kill meow, again."
DESCRIBE.VAMPIREBAT = "Looks as tasty as the other ones."
DESCRIBE.CRITTERLAB_REAL = DESCRIBE.CRITTERLAB
DESCRIBE.CRITTERLAB_REAL_BROKEN = "Looks like meown rocks will do the trick."
DESCRIBE.CHARLIEPHONOGRAPH_100 = DESCRIBE.MAXWELLPHONOGRAPH
DESCRIBE.WALRUS_CAMP_SUMMER = DESCRIBE.WALRUS_CAMP

-- Swampyness
DESCRIBE.RICEPLANT = "Some kinda white plant."
DESCRIBE.RICE = "Doesn't look like I can stomach it like this."
DESCRIBE.RICE_COOKED = "Blyegh, tastes all wet."
DESCRIBE.SEAFOODPAELLA = "Just another plate of food to meow."

DESCRIBE.STUMPLING = "Don't like when small things give meow that kinda attitude."
DESCRIBE.BIRCHLING = DESCRIBE.STUMPLING
DESCRIBE.BUGZAPPER = "Wonder if it works on Weetie."
DESCRIBE.MOON_TEAR =
"I'd cry but I realised it's pointless."
DESCRIBE.SHADOW_TELEPORTER = "Now that's just gotta be bait."
DESCRIBE.POLLENMITEDEN = "Meow."
DESCRIBE.POLLENMITES = "Meow."
DESCRIBE.SHADOW_CROWN = "It gives me a headache, but I'm used to it at this point."
DESCRIBE.UM_SHADOW_AXE = "Meow."
DESCRIBE.RNEGHOST = DESCRIBE.GHOST
DESCRIBE.LICELOAF = "Bland, just like my day by day life."
DESCRIBE.SUNGLASSES = "I don't think I can get anya cooler."
DESCRIBE.TRAPDOORGRASS = DESCRIBE.GRASS
DESCRIBE.LUREPLAGUE_RAT = "Feel like eating that will give meow a disease."
DESCRIBE.MARSH_GRASS = "It's... ohh it's so scratchy..."
DESCRIBE.CURSED_ANTLER = "Making a meowkery of my enyamies."
DESCRIBE.BERNIEBOX = "Can't open that on my own."
DESCRIBE.HOODED_FERN = "There's always the same plant but bigger."
DESCRIBE.HOODEDWIDOW = "Needless bloodshed to satisfy the jaded."
DESCRIBE.GIANT_TREE = "What do you even gain from growing this big."
DESCRIBE.ANCIENTHOODEDTURF = DESCRIBE.TURF_FOREST
DESCRIBE.HOODEDMOSS = DESCRIBE.TURF_FOREST
DESCRIBE.WIDOWSGRASP = "Dibs on the everything."
DESCRIBE.WEBBEDCREATURE = "Don't know what's in there, but I want it."
ANNOUNCE.WEBBEDCREATURE = "Nyack, this web is tougher than I thought."

DESCRIBE.SILKSACK = "Is that spider ass."
DESCRIBE.SILKEN_BUNDLE = "Can we not wrap my stuff in silk."

DESCRIBE.SNAPDRAGON_BUDDY = "Probably thinking about its next myeal."
DESCRIBE.SNAPDRAGON = "Can you not spit at meow."
DESCRIBE.SNAPPLANT = "Pretty, stomp it."
DESCRIBE.WHISPERPOD = "Ugh, why do I need anyother one of these."
DESCRIBE.WHISPERPOD_NORMAL_GROUND = {
    GENERIC = "If you want seeds, get up and get them.",
    GROWING = "Some of us don't have that manya lives, can you hurry up and grow."
}
DESCRIBE.FRUITBAT = "It's tempting meow to chase it."
DESCRIBE.PITCHERPLANT = "They made sure I can't reach that."
DESCRIBE.APHID = "Perfectly sized to fit in my meowth."
DESCRIBE.NYMPH = "Kill that damn thing."
DESCRIBE.GIANT_TREE_INFESTED = "Oh hey it looks cooler now."
DESCRIBE.GIANT_BLUEBERRY = "I really don't want these blowing up in my face."
DESCRIBE.BLUEBERRYPANCAKES = "Blueberries were totally harmed in the making of this."
DESCRIBE.DEVILSFRUITCAKE = "Am I gonna die if I eat this or what."
DESCRIBE.SIMPSALAD = "Not what I'd call a filling meal."
DESCRIBE.BEEFALOWINGS = "So manya ways to cook a dish."
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_KNOCKBACKIMMUNE = "I know how to land on my feet already, thanks."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_KNOCKBACKIMMUNE =
"It's on these kinda days I wish to drop dead."
DESCRIBE.WIDOWSHEAD = "Lets meow see what I shouldn't see."
DESCRIBE.HOODED_MUSHTREE_TALL = DESCRIBE.MUSHTREE_TALL
DESCRIBE.HOODED_MUSHTREE_MEDIUM = DESCRIBE.MUSHTREE_MEDIUM
DESCRIBE.HOODED_MUSHTREE_SMALL = DESCRIBE.MUSHTREE_SMALL
DESCRIBE.WATERMELON_LANTERN = "So cool and meowtal."
DESCRIBE.SNOWCONE = "My existence is constant disappointment."

-- Viperstuff Quotes
DESCRIBE.VIPERWORM = "A different kinda flavor of worm."
DESCRIBE.VIPERFRUIT = "Can't possibly make whatever's going on in my head worse."
DESCRIBE.VIPERFRUIT_LESSER = DESCRIBE.VIPERFRUIT
DESCRIBE.VIPERJAM = "Life in a jar."

DESCRIBE.BLUEBERRYPLANT = {
    READY = "I'll have to be careful, don't want that spraying on meow.",
    FROZE = "One less thing to worry about.",
    REGROWING = "Why do they get to just come back after they kill themselves."
}

DESCRIBE.ANTIHISTAMINE = "Ehh, can't be the worst thing ever."

DESCRIBE.HEATROCK_LEVEL = {
    TINY = "It doesn't have anything to protect it from the harsh world.",
    SMALL = "Not gonna retain temperature like that for long.",
    MED = "Not doing the rock much favor but, could be worse.",
    LARGE = "It's kept pretty well.",
    HUGE = "The best treatment this rocks getting from meow."
}

DESCRIBE.DURABILITY_LEVEL = {
    QUARTER = "It's practically falling apart!",
    HALF = "It has some nasty holes in it.",
    THREEQUARTER = "Could use some stiching up.",
    FULL = "It's in perfect condition."
}

ACTIONFAIL.READ.GENERIC = "It seems the magic is inert in this state."
ACTIONFAIL.GIVE.NOTNIGHT = "I should wait until the moon is out."

-- Xmas Update
DESCRIBE.MAGMAHOUND = "I've already had enough of these mutts when they were not spitting fire."
DESCRIBE.LIGHTNINGHOUND = "I don't care, I'm not taking these bracelets off."
DESCRIBE.SPOREHOUND = "I don't want to put it out of its meowsery, it would be too civil."
DESCRIBE.GLACIALHOUND = "Cold as a corpse, unfortunately not one yet."
DESCRIBE.RNESKELETON = "I'm totally terrified."
DESCRIBE.RAT_WHIP = "Brought to meow by the corpses of my enyamies."
DESCRIBE.KLAUS_AMULET = "I should chain Weetie to a tree for fun."
DESCRIBE.CRABCLAW = "Looks like it's got sockets in it for something."
DESCRIBE.HAT_RATMASK = "These pests follow the smell of decay."

DESCRIBE.ORANGE_VOMIT = "Yeah, thanks."
DESCRIBE.GREEN_VOMIT = "Yeah, thanks."
DESCRIBE.RED_VOMIT = "Yeah, thanks."
DESCRIBE.PINK_VOMIT = "Yeah, thanks."
DESCRIBE.YELLOW_VOMIT = "Yeah, thanks."
DESCRIBE.PURPLE_VOMIT = "Yeah, thanks."
DESCRIBE.PALE_VOMIT = "Yeah, thanks."

DESCRIBE.WALRUS_CAMP_EMPTY = DESCRIBE.WALRUS_CAMP.EMPTY
DESCRIBE.PIGKING_PIGGUARD = {
    GUARD = DESCRIBE.PIGMAN.GUARD,
    WEREPIG = DESCRIBE.PIGMAN.WEREPIG
}
DESCRIBE.PIGKING_PIGTORCH = DESCRIBE.PIGTORCH

DESCRIBE.BIGHT = "What in the hell kinda abomeownation..."
DESCRIBE.KNOOK = "It looks like its in agony, thank god."
DESCRIBE.ROSHIP = "The kind of existence you deserve."

DESCRIBE.UM_PAWN = "Tempted to... chase it down...."
DESCRIBE.UM_PAWN_NIGHTMARE = "If they're not toys, why are they toy sized."

DESCRIBE.CAVE_ENTRANCE_SUNKDECID = DESCRIBE.CAVE_ENTRANCE
DESCRIBE.CAVE_ENTRANCE_OPEN_SUNKDECID = DESCRIBE.CAVE_ENTRANCE_OPEN
DESCRIBE.CAVE_EXIT_SUNKDECID = DESCRIBE.CAVE_EXIT

-- Blowgun stuff
DESCRIBE.UNCOMPROMISING_BLOWGUN = DESCRIBE.BLOWDART_PIPE
DESCRIBE.BLOWGUNAMMO_TOOTH = DESCRIBE.BLOWDART_PIPE
DESCRIBE.BLOWGUNAMMO_FIRE = DESCRIBE.BLOWDART_FIRE
DESCRIBE.BLOWGUNAMMO_SLEEP = DESCRIBE.BLOWDART_SLEEP
DESCRIBE.BLOWGUNAMMO_ELECTRIC = DESCRIBE.BLOWDART_YELLOW

DESCRIBE.ANCIENT_AMULET_RED = "Just delaying the inevitable."
DESCRIBE.UM_BEAR_TRAP = "How underhanded, I like it."
DESCRIBE.UM_BEAR_TRAP_OLD = "How underhanded, I like it."
DESCRIBE.UM_BEAR_TRAP_EQUIPPABLE_TOOTH = "My turn to have some fun."
DESCRIBE.UM_BEAR_TRAP_EQUIPPABLE_GOLD = "My turn to have some fun."
DESCRIBE.CORNCAN = "Not even my claws can open this."
DESCRIBE.SKULLCHEST_CHILD = "Hmph, meowrbid."

DESCRIBE.SLOBBERLOBBER = "Like a dragon."
DESCRIBE.GORE_HORN_HAT =
"Smears whatever is unfortunate enough to be in my way."
DESCRIBE.BEARGERCLAW = "An extra hand never hurt nobody, until nyow."
DESCRIBE.FEATHER_FROCK = "Feathers with no meat on them."

DESCRIBE.REDGEM_CRACKED = DESCRIBE.REDGEM ..
    "\n...There's not a lot to do with it like this."
DESCRIBE.BLUEGEM_CRACKED = DESCRIBE.BLUEGEM ..
    "\n...There's not a lot to do with it like this."
DESCRIBE.ORANGEGEM_CRACKED = DESCRIBE.ORANGEGEM ..
    "\n...There's not a lot to do with it like this."
DESCRIBE.GREENGEM_CRACKED = DESCRIBE.GREENGEM ..
    "\n...There's not a lot to do with it like this."
DESCRIBE.YELLOWGEM_CRACKED = DESCRIBE.YELLOWGEM ..
    "\n...There's not a lot to do with it like this."
DESCRIBE.PURPLEGEM_CRACKED = DESCRIBE.PURPLEGEM ..
    "\n...There's not a lot to do with it like this."
DESCRIBE.OPALPRECIOUSGEM_CRACKED = DESCRIBE.OPALPRECIOUSGEM ..
    "\n...There's not a lot to do with it like this."

DESCRIBE.RED_MUSHED_ROOM = "Meowshroom take-over."
DESCRIBE.GREEN_MUSHED_ROOM = "Meowshroom take-over."
DESCRIBE.BLUE_MUSHED_ROOM = "Meowshroom take-over."

DESCRIBE.HEAT_SCALES_ARMOR = "It's hot, just not in a way I want."

-- StantonStuff
DESCRIBE.SKULLFLASK = "Drink away the pain."
DESCRIBE.SKULLFLASK_EMPTY = "I need anyother fill."
DESCRIBE.STANTON_SHADOW_TONIC = "Knock meow out so I can forget it all."
DESCRIBE.STANTON_SHADOW_TONIC2 = DESCRIBE.STANTON_SHADOW_TONIC
DESCRIBE.STANTON = "All bones and bluffs."
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HYPERCOURAGE = "Nyeh, the only thing I'm afraid of is myeowself."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_HYPERCOURAGE = "Not that I was scared of anything in the first place."
-- StantonStuff

DESCRIBE.ARMORLAVAE = DESCRIBE.LAVAE

DESCRIBE.THEATERCORN = "I'd want something more filling."
DESCRIBE.DEERCLOPS_BARRIER = "I'll break through if I have to."

DESCRIBE.MOONMAW_DRAGONFLY = "MOONMEOW!?"
DESCRIBE.MOONMAW_LAVAE = "Off meow, pests."
DESCRIBE.SNAPPERTURTLE =
"It better not be thinking about how to eat meow."
DESCRIBE.SNAPPERTURTLEBABY =
"Kill it before it figures out how to feel pain."
DESCRIBE.SNAPPERTURTLENEST = "Meowst be where those things live."
DESCRIBE.GLASS_SCALES = "What other meoown-made horrors have I not seen."
DESCRIBE.MOONGLASS_GEODE = "Looks valuable, lets break it."
DESCRIBE.ARMOR_GLASSMAIL = "Sharp enough to slice flesh."
DESCRIBE.ARMOR_GLASSMAIL_SHARDS = "Right up my alley."
DESCRIBE.MOONMAW_GLASSSHARDS_RING = DESCRIBE.ARMOR_GLASSMAIL_SHARDS
DESCRIBE.MOONMAW_GLASSSHARDS = DESCRIBE.ARMOR_GLASSMAIL_SHARDS
DESCRIBE.MOONMAW_LAVAE_RING = DESCRIBE.MOONMAW_LAVAE

DESCRIBE.MUTATOR_TRAPDOOR = DESCRIBE.MUTATOR_WARRIOR

DESCRIBE.WOODPECKER = "At least someowne has their priorities in check."
DESCRIBE.SNOTROAST = "I've had worse, probably."
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_LARGEHUNGERSLOW = "My hunger fades."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_LARGEHUNGERSLOW = "The void inside meow stirs again."
ANNOUNCE.ANNOUNCE_ATTACH_BUFF_BOOMBERRYATTACKS = "It tastes... I can't put my finger on it, something... uhh..."
ANNOUNCE.ANNOUNCE_DETACH_BUFF_BOOMBERRYATTACKS = "...BLUE. It tastes very blue."
DESCRIBE.BOOK_RAIN_UM = "There's already enough rain in the world."
DESCRIBE.FLORAL_BANDAGE = "The wounds may heal but the pain remains."
DESCRIBE.DORMANT_RAIN_HORN =
"Something to keep meow dry for once."
DESCRIBE.RAIN_HORN = "Why didn't anyaone come up with this sooner?"
DESCRIBE.DRIFTWOODFISHINGROD = "I don't think the fyesh care that myuch what rod they're getting caught by."

ANNOUNCE.ANNOUNCE_NORATBURROWS = "No dens around, what a shame."
ANNOUNCE.ANNOUNCE_RATSNIFFER_ITEMS = {
    LEVEL_1 = "This base is ass."
}
ANNOUNCE.ANNOUNCE_RATSNIFFER_FOOD = {
    LEVEL_1 = "Might have visitors if I don't do some cleaning."
}
ANNOUNCE.ANNOUNCE_RATSNIFFER_BURROWS = {
    LEVEL_1 = "The air is ripe with pestilence."
}
DESCRIBE.PIED_RAT = "Meal and a half?"
DESCRIBE.PIED_PIPER_FLUTE = "I still have a shred of dignity."
DESCRIBE.UNCOMPROMISING_PACKRAT = "Stealing is not cool, cupcake."

ANNOUNCE.ANNOUNCE_PORTABLEBOAT_SINK = "I'm more important than that dyamn boat!!"

ACTIONFAIL.CHARGE_FROM = {
    NOT_ENOUGH_CHARGE = "Ugh, needs more power.",
    CHARGE_FULL = "It's charged full already."
}
ANNOUNCE.ANNOUNCE_CHARGE_SUCCESS_INSULATED = "Hmph, hair rising."
ANNOUNCE.ANNOUNCE_CHARGE_SUCCESS_ELECTROCUTED = "NY-ACK, UGH. To hell with it."

----UNDER THE WEATHER----
DESCRIBE.WINONA_TOOLBOX = "Don't know what's there, don't care."
ACTIONFAIL.WINONATOOLBOX = "It's not mine, why should I bother."
DESCRIBE.WINONA_CATAPULT_ITEM_UM = "It'll probably blow up if I touch it, or something."
DESCRIBE.WINONA_SPOTLIGHT_ITEM_UM = "It'll probably blow up if I touch it, or something."
DESCRIBE.WINONA_BATTERY_LOW_ITEM_UM = "It'll probably blow up if I touch it, or something."
DESCRIBE.WINONA_BATTERY_HIGH_ITEM_UM = "It'll probably blow up if I touch it, or something."
DESCRIBE.POWERCELL = "Looks edible enough."
DESCRIBE.WINONA_UPGRADEKIT_ELECTRICAL =
"Probably does something."
DESCRIBE.MINERHAT_ELECTRICAL = "Not everything needs to be made electric."
DESCRIBE.LANTERN_ELECTRICAL = "Because the old one was not good enough I guess."
DESCRIBE.OCEAN_SPEAKER = "Not like anyaone cares what I have to say anyaway." -- Lame guy. Lame quote.

DESCRIBE.OCUPUS_BEAK = "It's looking really beak."
DESCRIBE.OCUPUS_TENTACLE = "I like it better when it's dead."
DESCRIBE.OCUPUS_TENTACLE_EYE = "I'll be seeing you on the other side."
DESCRIBE.OCUPUS_TENTACLE_COOKED = "Anyathing to make it taste passable."
DESCRIBE.UM_OCUPUS_EYE = "I don't like the look of that."
DESCRIBE.UM_OCUPUS_EYETACLE = "Hard to focus while being stared at."
DESCRIBE.UM_OCUPUS_TENTACLE = "Not tentacles again...."
DESCRIBE.UM_OCUPUS_BEAK = "Whatever that is, I want it dead."
DESCRIBE.BEAKBASHER = "It's on a stick now, nyaice."
DESCRIBE.HOUNDIOUS_OBSERVIOUS = "Quit staring."

DESCRIBE.ARMOR_REED_UM = "Crazy itchy."
DESCRIBE.ARMOR_SHARKSUIT_UM = "Sharks are cool, I digress."
DESCRIBE.ROCKJAWLEATHER = "Hmph, hard, cold and smooth."

-- DESCRIBE.UM_SIREN = "Science says we may be able to \"help\" each other."
-- WHAT THE FUCK VARIANT
-- DESCRIBE.UM_SIREN = "Science says she may not be from around here."

DESCRIBE.EYEOFTERROR_MINI_ALLY = "Leave meow alone, go away."
DESCRIBE.EYEOFTERROR_MINI_GROUNDED_ALLY = DESCRIBE.EYEOFTERROR_MINI_GROUNDED

DESCRIBE.STUFFED_PEEPER_POPPERS = "Looks edible enough."
DESCRIBE.UM_DEVILED_EGGS = "They smell fowl."
DESCRIBE.LUSH_ENTRANCE =
"An escape from the cruel overworld."
DESCRIBE.CRITTER_FIGGY =
"I have to fight my inner demeowns just to not swallow it whole."
DESCRIBE.GIANT_TREE_BIRDNEST = "Hmph, mine now."
if ACTIONFAIL.UPGRADE == nil then ACTIONFAIL.UPGRADE = {} end
ACTIONFAIL.UPGRADE.NOT_HARVESTED = "Ugh, how about I clean it up first."

DESCRIBE.SLUDGE = "The smell is like a gut punch."
DESCRIBE.SLUDGE_OIL = "I should oil Weetie up and set him on fire."
DESCRIBE.SLUDGE_SACK = "There's less revolting ways to carry stuff."
DESCRIBE.CANNONBALL_SLUDGE_ITEM =
"More ways to blow something up."
DESCRIBE.BOAT_BUMPER_SLUDGE = "It's sturdy alright."
DESCRIBE.BOAT_BUMBER_SLUDGE_KIT =
"Does my boat deserve to be spoiled like this."
DESCRIBE.BOATPATCH_SLUDGE = "More ways to fight of water, thank god."
DESCRIBE.UM_COPPER_PIPE = "Pipe down."
DESCRIBE.BRINE_BALM = "Nothing can ever heal meow."
DESCRIBE.UNCOMPROMISING_FISHINGNET = DESCRIBE.FISHINGNET
DESCRIBE.UM_AMBER = "What's that in it."
DESCRIBE.UM_BEEGUN = "UGHHH, Weetie won't fit in it."
DESCRIBE.BULLETBEE = DESCRIBE.KILLERBEE
DESCRIBE.CHERRYBULLETBEE = DESCRIBE.KILLERBEE

DESCRIBE.SUNKENCHEST_ROYAL_RANDOM = "Why is this one royal of all things."
DESCRIBE.SUNKENCHEST_ROYAL_RED = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM
DESCRIBE.SUNKENCHEST_ROYAL_BLUE = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM
DESCRIBE.SUNKENCHEST_ROYAL_PURPLE = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM
DESCRIBE.SUNKENCHEST_ROYAL_GREEN = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM
DESCRIBE.SUNKENCHEST_ROYAL_ORANGE = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM
DESCRIBE.SUNKENCHEST_ROYAL_YELLOW = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM
DESCRIBE.SUNKENCHEST_ROYAL_RAINBOW = DESCRIBE.SUNKENCHEST_ROYAL_RANDOM

DESCRIBE.STEERINGWHEEL_COPPER = "Technyalogy marvel, huh."
DESCRIBE.STEERINGWHEEL_COPPER_ITEM = "It's meowtal, so it's better."
DESCRIBE.BOAT_BUMPER_COPPER =
"It's gonna take more beating, but they still break all the same."
DESCRIBE.BOAT_BUMPER_COPPER_KIT = "Yeah but would be cooler if it had spikes."
DESCRIBE.UM_DREAMCATCHER =
"I can only dream of my nightmares going away."
DESCRIBE.UM_BRINEISHMOSS = "Some sorta meowss."
DESCRIBE.UM_COALESCED_NIGHTMARE = "Ugh, like there's not enough nightmares in the world."
DESCRIBE.SLUDGE_CORK =
"Too big for a boat, too small for the hole in my heart."
DESCRIBE.SLUDGESTACK = "I could smell the stench from way back."
DESCRIBE.SPECTER_SHIPWRECK = "Life is cruel like that." -- TM

DESCRIBE.UNCOMPROMISING_HARPOON =
"Feel the piercing pain I'm forced to endure."
DESCRIBE.UNCOMPROMISING_HARPOON_HEAVY = "A much more inhumane meowthod of impalement."
DESCRIBE.UNCOMPROMISING_HARPOONREEL = "Get over here." -- I think he already has a quote that's exactly like this
DESCRIBE.UM_MAGNERANG = "Not a good day to be covered in meowtal."
DESCRIBE.UM_MAGNERANGREEL = "I'm not on good terms with meowgnets."
DESCRIBE.SIREN_THRONE =
"Someowne passed by here it seems.."
DESCRIBE.LAVASPIT_SLUDGE = "Burning hot gunk."

DESCRIBE.UM_BEEGUARD_SHOOTER = DESCRIBE.BEEGUARD
DESCRIBE.UM_BEEGUARD_SEEKER = DESCRIBE.BEEGUARD
DESCRIBE.UM_BEEGUARD_BLOCKER = "OUT of my way, cupcake."

DESCRIBE.PORTABLEBOAT_ITEM = "Shove meow in there too while you're at it."
DESCRIBE.MASTUPGRADE_WINDTURBINE_ITEM = "Anything to make sailing less of a pain."

DESCRIBE.UM_ORNAMENT_OPOSSUM = "Meowpossum."
DESCRIBE.UM_ORNAMENT_RAT = "Booo, why is it inedible."

DESCRIBE.CODEX_MANTRA = DESCRIBE.WAXWELLJOURNAL

-- WIXIE RELATED STRINGS
DESCRIBE.WIXIE_PIANO = "A piano, how not meowtal at all..."
DESCRIBE.WIXIE_CLOCK = "I don't need to be remeownded of the passage of time."
DESCRIBE.WIXIE_WARDROBE = "Doubt there's actual war going on in there."
DESCRIBE.CHARLES_T_HORSE = "A horse, or what remains of it."
DESCRIBE.THE_REAL_CHARLES_T_HORSE = "This must be the real deal."
DESCRIBE.SLINGSHOT_MATILDA = "I should just chuck it into a cave."
DESCRIBE.SLINGSHOT_GNASHER = "I should just chuck it into a cave."

DESCRIBE.SLINGSHOTAMMO_LAZY = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_SHADOW = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_FIRECRACKERS = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_HONEY = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_RUBBER = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_TREMOR = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_MOONROCK = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_MOONGLASS = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_SALT = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_SLIME = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_GOOP = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_FLARE = DESCRIBE.SLINGSHOTAMMO_ROCK

DESCRIBE.SLINGSHOTAMMO_INSANITY = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_LUNARVINE = DESCRIBE.SLINGSHOTAMMO_ROCK

DESCRIBE.SLINGSHOTAMMO_LIMESTONE = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_TAR = DESCRIBE.SLINGSHOTAMMO_ROCK
DESCRIBE.SLINGSHOTAMMO_OBSIDIAN = DESCRIBE.SLINGSHOTAMMO_ROCK

DESCRIBE.BAGOFMARBLES = "MRmhm- I... I mean no, I DON'T wanna play with those."

DESCRIBE.MEATRACK_HAT = {
    GENERIC = DESCRIBE.MEATRACK.GENERIC,

    DRYING = DESCRIBE.MEATRACK.DRYING,
    DRYINGINRAIN = DESCRIBE.MEATRACK.DRYINGINRAIN,

    DRYING_NOTMEAT = DESCRIBE.MEATRACK.DRYING_NOTMEAT,
    DRYINGINRAIN_NOTMEAT = DESCRIBE.MEATRACK.DRYINGINRAIN_NOTMEAT
}
DESCRIBE.FISHMEAT_DRIED = "Mrrhmmm~"
DESCRIBE.SMALLFISHMEAT_DRIED = "Fyesh is just the best, mrhhhmm..."

DESCRIBE.WIXIEGUN = "Outrun my gun."

ANNOUNCE.ATTACKED_CRABKING =
"Ugh, tough bastard-"

DESCRIBE.MARA_BOSS1 = "Uhh..."
DESCRIBE.UM_WITCH = "Added Supreme Calamitas."
ANNOUNCE.GAS_DAMAGE = "Nya-ack-ack.."

-- Pyre Nettle stuff
DESCRIBE.UM_PYRE_NETTLES = "Looks dangerous, probably is dangerous"
DESCRIBE.UM_SMOLDER_SPORE = "Now that is a ticking bomb."
ANNOUNCE.ANNOUNCE_SMOLDER_SPORE_EATEN = "UGHHH-Rghhhhh, the AGONY- I DESERVE."
ANNOUNCE.ANNOUNCE_SMOLDER_SPORE_INVENTORY_POP = "Nyucking- Ughh, the damn thing went off..."
DESCRIBE.UM_ARMOR_PYRE_NETTLES = "What exactly is this supposed to accomplish."
DESCRIBE.UM_BLOWDART_PYRE = "Set you on pyre."

-- Under the Weather Part 1
DESCRIBE.ALPHA_LIGHTNINGGOAT = "I don't think I like your attitude."
DESCRIBE.UM_TORNADO = "And I thought I've seen the worst of this world..."
DESCRIBE.UM_WATERFALL = "The water is indeed falling."
ANNOUNCE.ANNOUNCE_UM_NO_TORNADO = "It's clear enough, that's all I need to know."

DESCRIBE.UM_BOAT_ENGINE = {
    ON = "Take meow somewhere that's not here.",
    LOWFUEL = "It's getting thirsty for some fuel.",
    OVERHEATING = "Too hot for comfort."
}
DESCRIBE.GARBAGEPATCHFLOTSAM = "More trash in a sea of garbage."

-- Broiling Hills
DESCRIBE.BOULDER_CRAB =
{
    GENERIC = "I guess it's not a rock, dude.",
    NAKED = "Serves you right.",
}

DESCRIBE.BOULDER_CRAB_HOLE = "Get out of there before I get you out myeowself."

DESCRIBE.UM_HOTSPRING = "I'm not getting wet for a few minutes of comfort..."

DESCRIBE.UM_PLANT_HOTSPRINGS = DESCRIBE.MARSH_PLANT --POND_ALGAE

DESCRIBE.ROCK_LICHEN =
{
    GENERIC = "Growing on rocks of all places, what's new.",
    PICKED = "I'll be seeing you too.",
}

-- All things Snaildrake
DESCRIBE.SNAILDRAKE_MAGMA = "It'll sing a different tune if I set it on fire."
DESCRIBE.SNAILDRAKE_SLIME = DESCRIBE.SNAILDRAKE_MAGMA
DESCRIBE.SNAPALM = "Alright, I'm not eating that."
DESCRIBE.SNAILDRAKEHAT = "No headwear ever has holes for my ears..."
DESCRIBE.SNAILDRAKEBUCKET =
{
    GENERIC = "Probably does something, not that I care.",
    WATER = "Oh, it's filled with water, nyuck...",
    LAVA = "Filled with lava, hmph, cool.",
}
DESCRIBE.SNAILDRAKE_HOLE = "Holes in the middle of nyowhere are never a good sign."

-- All things Rimeweed
DESCRIBE.RIMEWEED_MAIN = "Always go for the heart of the problem."
DESCRIBE.RIMEWEED_BARRIER = "Don't like my kind of attitude on anyathing but meow.."

DESCRIBE.UM_RIMEWEED_ITEMVINE = "Spiky, cold, brash."
DESCRIBE.UM_RIMEWEED_ITEMFLOWER = "Eh, Weetie might find a use for this."

DESCRIBE.RIMEWEED_WHIP = "The frost bites when the whip cracks."

DESCRIBE.UM_RIMEWEED_TEQUILA = "As if I'm not already frozen on the inside."
DESCRIBE.UM_RIMEWEED_SPAGETT = "How... hngh, crunchy."

-- Lava Caves
DESCRIBE.MAGMAROCK1 = DESCRIBE.ROCKS
DESCRIBE.MAGMABONE = "Life's cruel, get used to it."

DESCRIBE.UM_COOKPOT_WAGSTAFF = {
    EMPTY = "Surely it knows about cooking more than meow.",
    COOKING_LONG = DESCRIBE.COOKPOT.COOKING_LONG,
    COOKING_SHORT = DESCRIBE.COOKPOT.COOKING_SHORT,
    DONE = DESCRIBE.COOKPOT.DONE,
    BURNT = DESCRIBE.COOKPOT.BURNT,
}
DESCRIBE.UM_COOKPOT_WAGSTAFF_DISPLAY = "Can't argue with that I guess."
DESCRIBE.UM_COOKPOT_WAGSTAFF_LEVER = "Let's see if it blows up or something."
DESCRIBE.UM_COOKPOT_WAGSTAFF_LEVER2 = "That's what we call insanity."

DESCRIBE.UM_RICE_PUDDING = "Rice from the ash."

DESCRIBE.UM_BOATBOTTLE = {
    FULL = "That's one too manya for a bottle like that.",
    EMPTY = "Trap meow within."
}

ANNOUNCE.ANNOUNCE_BUTTERFLY_SLIP = { "Why must I suck at everything.",
    "Why am I even trying.",
    "Can't even hit a dyamn butterfly.",
    "Might as well end myeowself.",
    "Oh you piece of-." }

DESCRIBE.WATHOM_CORPSE = "Pry him off the face of the earth."

DESCRIBE.WATHGRITHR_SHIELD_DREADSTONE = "I don't need anyaone standing up for meow."
ANNOUNCE.ANNOUNCE_WEAPON_TOOWEAK_ICESHIELD = "Nyucking- Ugghhh, always some kind of gimmick."
