if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.override == nil then apm.bob_rework.lib.override = {} end
if apm.bob_rework.lib.override.list == nil then apm.bob_rework.lib.override.list = {} end

require('lib.enities.base')

apm.bob_rework.lib.override.logics = function ()
    local recipe = apm.bob_rework.lib.entities.logicBasic
    apm.lib.utils.recipe.ingredient.remove_all(recipe)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.tier.bronze.gearWheel, 2)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.entities.woodenBoard, 1)

    local recipe = apm.bob_rework.lib.entities.logicSteam
    apm.lib.utils.recipe.ingredient.remove_all(recipe)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.tier.bronze.brassWheel, 2)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.tier.bronze.brass, 1)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.entities.woodenBoard, 1)
end