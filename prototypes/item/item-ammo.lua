data:extend(
    {
        {
            type = "ammo",
            ammo_category = "bullet",
            name = "shattering-bullet-magazine",
            icon = "__FactorioExtended-Plus-Weaponry__/graphics/icons/shattering-bullet-magazine.png",
            ammo_type = {
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "instant",
                        source_effects = {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot"
                        },
                        target_effects = {
                            {
                                type = "create-entity",
                                entity_name = "explosion-hit",
                                offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
                                offsets = {{ 0, 1 }}
                            },
                            {
                                type = "damage",
                                damage = {amount = 16, type = "physical"}
                            },
                            {
                                deliver_category = "bullet",
                                type = "activate-impact"
                            }
                        }
                    }
                }
            },
            drop_sound = { filename = "__base__/sound/item/ammo-small-inventory-move.ogg", volume = 0.8},
            inventory_move_sound = { filename = "__base__/sound/item/ammo-small-inventory-move.ogg", volume = 0.8},
            pick_sound = {filename = "__base__/sound/item/ammo-small-inventory-pickup.ogg", volume = 0.7},
            magazine_size = 10,
            subgroup = "fb-weapons",
            order = "c-a",
            stack_size = 200,
            weight = 20000
        },
        --[[ {
            type = "ammo",
            name = "shattering-shotgun-shell",
            icon = "__FactorioExtended-Plus-Weaponry__/graphics/icons/shattering-shotgun-shell.png",
            ammo_type = {
                category = "shotgun-shell",
                target_type = "direction",
                source_effects = {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                },
                action = {
                    type = "direct",
                    repeat_count = 20,
                    action_delivery = {
                        type = "projectile",
                        projectile = "piercing-shotgun-pellet",
                        starting_speed = 1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 15
                    }
                }
            },
            magazine_size = 10,
            subgroup = "fb-weapons",
            order = "c-b",
            stack_size = 100
        } ]]
    })