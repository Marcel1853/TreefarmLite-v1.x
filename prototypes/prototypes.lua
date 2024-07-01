data:extend
({
    -- Fuel Categoy
    {
        type = "fuel-category",
        name = "treeseed"
    },

    -- Grouping
    -- Group
    {
        type = "item-group",
        name = "treefarm",
        order = "e",
        inventory_order = "e",
        icon = "__TreefarmLite__/graphics/icons/treefarm.png",
        icon_size = 32
    },

    -- Subgroup
    {
        type = "item-subgroup",
        name = "tf-seeds",
        group = "treefarm",
        order = "a",
    },
    {
        type = "item-subgroup",
        name = "tf-buildings",
        group = "treefarm",
        order = "b",
    },
    {
        type = "item-subgroup",
        name = "tf-raw-materials",
        group = "treefarm",
        order = "c",
    },
    {
        type = "item-subgroup",
        name = "tf-intermediate",
        group = "treefarm",
        order = "d",
    },
    {
        type = "item-subgroup",
        name = "tf-liquids",
        group = "treefarm",
        order = "e",
    },
    {
        type = "item-subgroup",
        name = "tf-tools",
        group = "treefarm",
        order = "f",
    },
    {
        type = "item-subgroup",
        name = "tf-war",
        group = "treefarm",
        order = "g",
    },

    -- Field MK1
    -- Item: Mk1 field
    {
        type = "item",
        name = "tf-field",
        icon = "__TreefarmLite__/graphics/icons/field.png",
        icon_size = 32,
        flags = {"hidden"},
        subgroup = "tf-buildings",
        order = "a[field]",
        place_result = "tf-field",
        --stack_size = 10,
        stack_size = 50,
        default_request_amount = 5
    },

    -- Recipe: Mk1 field
    {
        type = "recipe",
        name = "tf-field",
        ingredients = {{"stone",20},{"wooden-chest",1},{"burner-inserter",1}},
        result = "tf-field",
        result_count = 1,
        enabled = "true"
    },
    {
        type = "recipe-category",
        name = "treefarm-mod-dummy"
    },

    -- Entitiy: Mk1 field
    {
        type = "furnace",
        name = "tf-field",
        max_health = 100,
        icon = "__TreefarmLite__/graphics/icons/field.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        crafting_categories = {"treefarm-mod-dummy"},
        minable = {mining_time = 1,result = "tf-field"},
        collision_box = {{-0.5,-0.5},{0.5,0.5}},
        --selection_box = {{0.75,-0.50},{9.0,7.50}},
        selection_box = {{-0.5,-0.5},{0.5,0.5}},
        --result_inventory_size = 4,
        result_inventory_size = 1,
        energy_usage = "180kW",
        crafting_speed = 1,
        source_inventory_size = 1,
        energy_source =
        {
            type = "burner",
            fuel_category = "treeseed",
            effectivity = 1,
            fuel_inventory_size = 1
        },
        animation =
        {
            filename = "__TreefarmLite__/graphics/entities/field/field.png",
            priority = "extra-high",
            width = 512,
            height = 512,
            frame_count = 1,
            shift = {1.20, -0.30}
        },
        working_visualisations =
        {
            filename = "__TreefarmLite__/graphics/icons/empty.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            shift = {0.0, 0.0}
        }
    },

    -- Field MK2
    -- Item: Mk2 field
    {
        type = "item",
        name = "tf-fieldmk2",
        icon = "__TreefarmLite__/graphics/icons/fieldmk2.png",
        icon_size = 32,
        flags = {"hidden"},
        subgroup = "tf-buildings",
        order = "b[fieldmk2]",
        place_result = "tf-fieldmk2Overlay",
        --stack_size = 10,
        stack_size = 50,
        default_request_amount = 5
    },

    -- Recipe : MK2 field
    {
        type = "recipe",
        name = "tf-fieldmk2",
        ingredients = {{"advanced-circuit",20},{"red-wire",20},{"steel-plate",20}},
        result = "tf-fieldmk2",
        result_count = 1,
        enabled = "false"
    },

    -- Entity: Mk2 field overlay
    {
        type = "container",
        name = "tf-fieldmk2Overlay",
        max_health = 100,
        icon = "__TreefarmLite__/graphics/icons/fieldmk2.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1,result = "tf-fieldmk2"},
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        inventory_size = 1,
        picture =
        {
            filename = "__TreefarmLite__/graphics/entities/fieldmk2/fieldmk2Overlay.png",
            priority = "extra-high",
            width = 640,
            height = 640,
            shift = {0.0, 0.0}
        }
    },

    -- Entity: Mk2 field
    {
        type = "logistic-container",
        name = "tf-fieldmk2",
        logistic_mode = "requester",
        order = "c[fieldmk2]",
        max_health = 100,
        icon = "__TreefarmLite__/graphics/icons/fieldmk2.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.2, mining_time = 1, result = "tf-fieldmk2"},
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        corpse = "medium-remnants",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-0.95, -0.55}, {1.05, 1.35}},
        --drawing_box = {{-2.8, -0.5}, {0.5, 0.5}},
        inventory_size = 6,
        logistic_slots_count = 3,
        picture =
        {
            filename = "__TreefarmLite__/graphics/entities/fieldmk2/fieldmk2.png",
            priority = "extra-high",
            width = 128,
            height = 175,
            shift = {0.9375, -1.3125}
        }
        --[[ 
        animation =
        {
            north =
            {
                filename = "__TreefarmLite__/graphics/entities/fieldmk2/field-2.png",
                width = 314,
                height = 270,
                frame_count = 1,
                shift = {0.9375, -1.3125}
            },
            east =
            {
                filename = "__TreefarmLite__/graphics/entities/fieldmk2/field-2.png",
                x = 328,
                width = 278,
                height = 308,
                frame_count = 1,
                shift = {0.9375, -1.3125}
            },
            south =
            {
                filename = "__TreefarmLite__/graphics/entities/fieldmk2/field-2.png",
                x = 623,
                width = 310,
                height = 270,
                frame_count = 1,
                shift = {0.9375, -1.3125}
            },
            west =
            {
                filename = "__TreefarmLite__/graphics/entities/fieldmk2/field-2.png",
                x = 943,
                width = 278,
                height = 308,
                frame_count = 1,
                shift = {0.9375, -1.3125}
            }
        }
        -- ]]
    },

    -- Germling
    -- Item: Wood seed
    {
        type = "item",
        name = "tf-germling",
        icon = "__TreefarmLite__/graphics/icons/germling.png",
        icon_size = 32,
        --flags = {"hidden"},
        subgroup = "tf-seeds",
        order = "a[germling]",
        place_result = "tf-germling",
        fuel_category = "treeseed",
        fuel_value = "1MJ",
        --stack_size = 50,
        stack_size = 100,
        default_request_amount = 25
    },

    -- Recipe: Wood seed
    {
        type = "recipe",
        name = "tf-germling",
        ingredients = {{"wood",1}},
        result = "tf-germling",
        result_count = 1
    },

    -- Item: Coral seed
    {
        type = "item",
        name = "tf-coral-seed",
        icon = "__TreefarmLite__/graphics/icons/coral-seed.png",
        icon_size = 32,
        --flags = {"hidden"},
        subgroup = "tf-seeds",
        order = "b[coral]",
        place_result = "tf-coral-seed",
        fuel_category = "treeseed",
        fuel_value = "1MJ",
        --stack_size = 50,
        stack_size = 100,
        default_request_amount = 25
    },

    -- Recipe: Coral seed
    {
        type = "recipe",
        name = "tf-coral-seed",
        ingredients = {{"wood",1}},
        result = "tf-coral-seed",
        result_count = 1
    },

    -- Technology: Mk2 field
    {
        type = "technology",
        name = "tf-advanced-treefarming",
        icon = "__TreefarmLite__/graphics/icons/fieldmk2.png",
        icon_size = 32,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "tf-fieldmk2"
            }
        },
        prerequisites =
        {
            "construction-robotics",
            "logistic-robotics"
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 3},
                {"logistic-science-pack", 2}
            },
            time = 30
        }
    },

    -- optimized-decorative: green overlay
    {
        type = "optimized-decorative",
        name = "tf-overlay-green",
        flags = {"placeable-neutral", "not-on-map"},
        icon = "__TreefarmLite__/graphics/entities/fieldmk2/tf-overlay-1.png",
        icon_size = 32,
        subgroup = "grass",
        order = "b[optimized-decorative]-b[tf-overlay-green]",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        render_layer = "radius-visualization",
        pictures =
        {
            {
                filename = "__TreefarmLite__/graphics/entities/fieldmk2/tf-overlay-1.png",
                width = 32,
                height = 32,
                shift = {-0.5, -0.5}
            }
        }
    },

    -- optimized-decorative: gred overlay    
    {
        type = "optimized-decorative",
        name = "tf-overlay-red",
        flags = {"placeable-neutral", "not-on-map"},
        icon = "__TreefarmLite__/graphics/entities/fieldmk2/tf-overlay-2.png",
        icon_size = 32,
        subgroup = "grass",
        order = "b[optimized-decorative]-b[tf-overlay-red]",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        selectable_in_game = false,
        render_layer = "radius-visualization",
        pictures =
        {
            {
                filename = "__TreefarmLite__/graphics/entities/fieldmk2/tf-overlay-2.png",
                width = 32,
                height = 32,
                shift = {-0.5, -0.5}
            }
        }
    }
})

--[[
    local tf_smallerButtonFont =
    {
        type = "button_style",
        parent = "button_style",
        type = "button",
        parent = "button",
        font = "default"
    }
    data.raw["gui-style"].default["tf_smallerButtonFont"] = tf_smallerButtonFont
--]]

data.raw["gui-style"].default["tf_smallerButtonFont"] = data.raw["gui-style"].default.slot_button_style


