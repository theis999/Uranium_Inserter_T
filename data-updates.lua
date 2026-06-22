
-- If running space age and using the custom setting that uranium inserter is a stack inserter then update recipe, tech and entity to reflect that.
if settings.startup["uranium-inserter-is-stackinserter-setting"].value and data.raw.inserter["stack-inserter"] ~= nil then    
    --Change "bulk-inserter" to "stack-inserter" in tech requirement
    data.raw["technology"]["uranium-inserter"].prerequisites = {
        "nuclear-power",
        "stack-inserter",
        "processing-unit"
    }
    
    --Change "bulk-inserter" to "stack-inserter" in tech recipe
    data.raw["recipe"]["uranium-inserter"].ingredients = {
        {type = "item", name = "uranium-fuel-cell", amount = 20},
        {type = "item", name = "processing-unit", amount = 5},
        {type = "item", name = "advanced-circuit", amount = 20},
        {type = "item", name = "stack-inserter", amount = 1},
    }
    
    --Add max belt stack size to change the uranium inserter into stack inserter
    data.raw.inserter["uranium-inserter"].max_belt_stack_size = 4
end