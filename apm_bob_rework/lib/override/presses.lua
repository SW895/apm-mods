if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.override == nil then apm.bob_rework.lib.override = {} end
if apm.bob_rework.lib.override.list == nil then apm.bob_rework.lib.override.list = {} end

require('lib.enities.base')
require('lib.tier.base')

local buildPressRecipe = function (recipe, tier)
    apm.lib.utils.recipe.ingredient.remove_all(recipe)

    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.engineUnit, 2 + tier.level)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.alloy, 5)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.lightAlloy, 3)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.basement, 10 * tier.main.basementK)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.gearWheel, 2)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.bearing, 4)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.main.logic, tier.level*2 + 1)
end

apm.bob_rework.lib.override.presses = function ()
    buildPressRecipe(apm.bob_rework.lib.entities.press, apm.bob_rework.lib.tier.bronze)
    buildPressRecipe(apm.bob_rework.lib.entities.steamPress, apm.bob_rework.lib.tier.brass)
    buildPressRecipe(apm.bob_rework.lib.entities.advancedPress, apm.bob_rework.lib.tier.monel)
end
