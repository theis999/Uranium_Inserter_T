
local prerequisites = {
  "nuclear-power",
  "bulk-inserter",
  "processing-unit"
}

if settings.startup["uranium-inserter-is-stackinserter-setting"].value and data.raw.technology["stack-inserter"] ~= nil then
  prerequisites = {
    "nuclear-power",
    "stack-inserter",
    "processing-unit"
  }
end

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
    prerequisites = prerequisites,

    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = false,
    order = "c-o-a"
  }
})
