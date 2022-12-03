if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.override == nil then apm.bob_rework.lib.override = {} end
if apm.bob_rework.lib.override.list == nil then apm.bob_rework.lib.override.list = {} end

<<<<<<< Updated upstream
require('lib.enities.base')
require('lib.tier.base')
=======
local asmbl = require('lib.entities.buildings.assemblers')
local t = require('lib.tier.base')
>>>>>>> Stashed changes

apm.bob_rework.lib.override.genAssembler = function(recipe, tier)
    apm.lib.utils.recipe.ingredient.remove_all(recipe)

    if tier.frame then
        apm.lib.utils.recipe.ingredient.mod(recipe, tier.frame, tier.level*3)
    end

    apm.lib.utils.recipe.ingredient.mod(recipe, tier.engine, 2 + tier.level)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.constructionAlloy, 8 + 3 * tier.level)
    if tier.extraConstructionAlloy then
        local count = 20
        if tier.level == 1 then
            count = 10
        end
        if tier.level > 1 then
            count = 15
        end
        apm.lib.utils.recipe.ingredient.mod(recipe, tier.extraConstructionAlloy, count)
    end
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.basement, 10 * tier.basementK)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.inserter, 4 + 2 * tier.level)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.logic, tier.level * 4 + 1)
    if tier.extraLogic then
        apm.lib.utils.recipe.ingredient.mod(recipe, tier.extraLogic, tier.level * 4 + 1)
    end
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.entities.rubber, 5 + tier.level * 2)
end

<<<<<<< Updated upstream
local buildElectronicAssembler = function (recipe, tier)
    apm.lib.utils.recipe.ingredient.remove_all(recipe)

    local logic, inserter = tier.logic, tier.inserter
    if tier.level == 1 and recipe == 'electronics-machine-1' then
        logic = apm.bob_rework.lib.entities.logicContact
        inserter = apm.bob_rework.lib.entities.yellowInserter
    end

    apm.lib.utils.recipe.ingredient.mod(recipe, tier.constructionAlloy, 5+3*tier.level)
    if tier.extraConstructionAlloy then
        apm.lib.utils.recipe.ingredient.mod(recipe, tier.extraConstructionAlloy, 5+3*tier.level)
    end
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.basement, 10 * tier.basementK)
    apm.lib.utils.recipe.ingredient.mod(recipe, inserter, 5 * tier.level)
    apm.lib.utils.recipe.ingredient.mod(recipe, logic, tier.level*4)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.entities.rubber, 5 +tier.level*2)
end

apm.bob_rework.lib.override.assemblers = function ()
    apm.bob_rework.lib.override.genAssembler('apm_assembling_machine_0', apm.bob_rework.lib.tier.bronze)
    apm.bob_rework.lib.override.genAssembler('apm_assembling_machine_1', apm.bob_rework.lib.tier.brass)
    apm.bob_rework.lib.override.genAssembler('assembling-machine-1', apm.bob_rework.lib.tier.brass)
    buildAdvancedAssembler('assembling-machine-2', 'assembling-machine-1', apm.bob_rework.lib.tier.brass)
    apm.bob_rework.lib.override.genAssembler('assembling-machine-3', apm.bob_rework.lib.tier.monel)
    apm.bob_rework.lib.override.genAssembler('assembling-machine-4', apm.bob_rework.lib.tier.steel)
    apm.bob_rework.lib.override.genAssembler('assembling-machine-5', apm.bob_rework.lib.tier.aluminium)
    apm.bob_rework.lib.override.genAssembler('assembling-machine-6', apm.bob_rework.lib.tier.titanium)

    buildElectronicAssembler('electronics-machine-1', apm.bob_rework.lib.tier.brass)
    buildElectronicAssembler('electronics-machine-2', apm.bob_rework.lib.tier.steel)
    buildElectronicAssembler('electronics-machine-3', apm.bob_rework.lib.tier.titanium)
end
=======
apm.bob_rework.lib.override.assemblers = function()
    local gen = apm.bob_rework.lib.override.genAssembler
    gen(asmbl.burner, t.gray)
    gen(asmbl.steam, t.steam)
    gen(asmbl.yellow, t.yellow)
    gen(asmbl.red, t.red)
    gen(asmbl.blue, t.blue)
end
>>>>>>> Stashed changes
