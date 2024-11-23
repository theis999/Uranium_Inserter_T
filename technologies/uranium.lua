data:extend(
{
  {
    type = "technology",
    name = "uranium-inserter",
    icon = "__Uranium_Inserter_T__/graphics/uranium/uranium-inserter.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-inserter"
      }
    },
    prerequisites = {"uranium-processing", "bulk-inserter", "processing-unit"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    upgrade = true,
    order = "c-o-a"
  }
})
