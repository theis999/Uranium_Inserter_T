data:extend({
  {
    type = "inserter",
    name = "uranium-inserter",
    icon = "__Uranium_Inserter_T__/graphics/icon.png",  -- Assuming icon is the same (no HR version needed)
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    bulk = true,
    stack_size_bonus = 6,
    filter_count = 5,
    minable = { mining_time = 0.2, result = "uranium-inserter" },
    max_health = 300,
    corpse = "bulk-inserter-remnants",
    resistances = {
      { type = "fire", percent = 95 }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_source = { type = "void" },
    extension_speed = 0.28,
    rotation_speed = 0.06,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 },
    working_sound = {
      match_progress_to_activity = true,
      sound = {
        { filename = "__base__/sound/inserter-fast-1.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-fast-2.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-fast-3.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-fast-4.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-fast-5.ogg", volume = 0.75 }
      }
    },
    -- Hand base image (HR version now default)
    hand_base_picture = {
      filename = "__Uranium_Inserter_T__/graphics/uranium/hr-fast-inserter-hand-base.png",  -- HR version
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    },
    -- Hand closed image (HR version now default)
    hand_closed_picture = {
      filename = "__Uranium_Inserter_T__/graphics/uranium/hr-fast-inserter-hand-closed.png",  -- HR version
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    -- Hand open image (HR version now default)
    hand_open_picture = {
      filename = "__Uranium_Inserter_T__/graphics/uranium/hr-fast-inserter-hand-open.png",  -- HR version
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    -- Platform image (HR version now default)
    platform_picture = {
      sheet = {
        filename = "__Uranium_Inserter_T__/graphics/uranium/hr-fast-inserter-platform.png",  -- HR version
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    -- Circuit connection points
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_fast_control_input_signal = inserter_default_fast_control_input_signal
  }
})
