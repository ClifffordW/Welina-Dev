local intimidating_x = -215
local intimidating_y = 176
local unintimidating_x = 225
local unintimidating_y = 176
local affinity_x = 0
local affinity_y = 0

local ORDERS =
{
    {"intimidating",           { -214+18   , 176 + 30 }},
    {"unintimidating",         { -62       , 176 + 30 }}
}

--------------------------------------------------------------------------------------------------

local function BuildSkillsData(SkillTreeFns)
    local skills = 
    {
        -- Intimidating
        wildcard_intimidating_lock = {
            desc = "Get killed by your own insanity.",
            pos = {intimidating_x, intimidating_y},
            group = "intimidating",
            tags = {"intimidating"},
            lock_open = function(prefabname, activatedskills, readonly)
                if readonly then
                    return "question"
                end

                return TheGenericKV:GetKV("insanity_killed") == "1"
            end,
            root = true,
            connects = {
                "wildcard_intimidating_1"
            }
        },

        -- Row 1
        wildcard_intimidating_1 = {
            title = "Enchanted Haremancy",
            desc = "With a whimsical Wildcard's punch, chance weaves in the shadows, turning clueless foes into adorable friends.",
            icon = "skill_intimidating_1",
            pos = {intimidating_x, intimidating_y-52},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                    
            end,
            connects = {
                "wildcard_intimidating_4",
                "wildcard_intimidating_2",
                "wildcard_intimidating_3"
            },
        },

        wildcard_intimidating_2 = {
            title = "Insidious",
            desc = "Retain fear for longer.",
            icon = "skill_intimidating_2",
            pos = {intimidating_x, intimidating_y-104},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_5"
            }
        },

        wildcard_intimidating_3 = {
            title = "Knife Brutality",
            desc = "Increase the damages his knives inflict",
            icon = "skill_intimidating_3",
            pos = {intimidating_x, intimidating_y-158},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_6"
            }
        },

        -- Row 2
        wildcard_intimidating_4 = {
            title = "Feared",
            desc = "He has become feared in the constant.",
            icon = "skill_intimidating_4",
            pos = {intimidating_x + 52, intimidating_y-52},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_7"
            }
        },

        wildcard_intimidating_5 = {
            title = "Overwhelming Presence",
            desc = "His presence alone has started affecting other survivors.",
            icon = "skill_intimidating_5",
            pos = {intimidating_x + 52, intimidating_y-104},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_8"
            }
        },

        wildcard_intimidating_6 = {
            title = "Knifespiration",
            desc = "Increase sanity gain holding his knife",
            icon = "wilson_alchemy_gem_1",
            pos = {intimidating_x + 52, intimidating_y-158},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_9"
            }
        },

        -- Row 3
        wildcard_intimidating_7 = {
            title = "Monsterous",
            desc = "Become a monster.",
            icon = "skill_intimidating_7",
            pos = {intimidating_x + 104, intimidating_y-52},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_10"
            }
        },

        wildcard_intimidating_8 = {
            title = "Overwhelming Presence",
            desc = "His presence alone has started affecting other survivors.",
            icon = "wilson_alchemy_gem_1",
            pos = {intimidating_x + 104, intimidating_y-104},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_11"
            }
        },

        wildcard_intimidating_9 = {
            title = "Knifespiration",
            desc = "Increase sanity gain holding his knife",
            icon = "wilson_alchemy_gem_1",
            pos = {intimidating_x + 104, intimidating_y-158},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_intimidating_12"
            }
        },

        -- Row 4
        wildcard_intimidating_10 = {
            title = "Feared",
            desc = "He has become feared in the constant.",
            icon = "wilson_alchemy_gem_1",
            pos = {intimidating_x + 158, intimidating_y-52},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
        },

        wildcard_intimidating_11 = {
            title = "Overwhelming Presence",
            desc = "His presence alone has started affecting other survivors.",
            icon = "wilson_alchemy_gem_1",
            pos = {intimidating_x + 158, intimidating_y-104},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
        },

        wildcard_intimidating_12 = {
            title = "Knifespiration",
            desc = "Increase sanity gain holding his knife",
            icon = "wilson_alchemy_gem_1",
            pos = {intimidating_x + 158, intimidating_y-158},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
        },

        -- Unintimidating
        wildcard_unintimidating_lock = {
            pos = {unintimidating_x, unintimidating_y},
            group = "unintimidating",
            tags = {"unintimidating"},
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountTags(prefabname, "intimidating", activatedskills) == 0
            end,
            root = true,
            connects = {
                "wildcard_unintimidating_1",
            }
        },

        -- Row 1
        wildcard_unintimidating_1 = {
            title = "Unintimidating",
            desc = "Makes wildcard even less intimidating",
            icon = "wilson_torch_time_1",
            pos = {unintimidating_x, unintimidating_y-52},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_4",
                "wildcard_unintimidating_2",
                "wildcard_unintimidating_3"
            }
        },

        wildcard_unintimidating_2 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x, unintimidating_y-104},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_5"
            }
        },

        wildcard_unintimidating_3 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x, unintimidating_y-158},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_6"
            }
        },

        -- Row 2
        wildcard_unintimidating_4 = {
            title = "Unintimidating",
            desc = "Makes wildcard even less intimidating",
            icon = "wilson_torch_time_1",
            pos = {unintimidating_x - 52, unintimidating_y-52},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_7"
            }
        },

        wildcard_unintimidating_5 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x - 52, unintimidating_y-104},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_8"
            }
        },

        wildcard_unintimidating_6 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x - 52, unintimidating_y-158},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_9"
            }
        },

        -- Row 3
        wildcard_unintimidating_7 = {
            title = "Unintimidating",
            desc = "Makes wildcard even less intimidating",
            icon = "wilson_torch_time_1",
            pos = {unintimidating_x - 104, unintimidating_y-52},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_10"
            }
        },

        wildcard_unintimidating_8 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x - 104, unintimidating_y-104},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_11"
            }
        },

        wildcard_unintimidating_9 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x - 104, unintimidating_y-158},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "wildcard_unintimidating_12"
            }
        },

        -- Row 4
        wildcard_unintimidating_10 = {
            title = "Unintimidating",
            desc = "Makes wildcard even less intimidating",
            icon = "wilson_torch_time_1",
            pos = {unintimidating_x - 158, unintimidating_y-52},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
        },

        wildcard_unintimidating_11 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x - 158, unintimidating_y-104},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end
        },

        wildcard_unintimidating_12 = {
            title = "Safe Aura",
            desc = "wildcard gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x - 158, unintimidating_y-158},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end
        },
    }

    return {
        SKILLS = skills,
        ORDERS = ORDERS,
    }
end

--------------------------------------------------------------------------------------------------

return BuildSkillsData