if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.override == nil then apm.bob_rework.lib.override = {} end
if apm.bob_rework.lib.override.list == nil then apm.bob_rework.lib.override.list = {} end


require('lib.override.crushers')
require('lib.override.drop')
require('lib.override.pistions')
require('lib.override.engines')
require('lib.override.inserters')
require('lib.override.assemblers')
require('lib.override.presses')
require('lib.override.cokingPlants')
require('lib.override.labs')
require('lib.override.centrifuges')
require('lib.override.greenhouses')
require('lib.override.steelworks')
require('lib.override.logics')
require('lib.override.steamMachines')
require('lib.override.belts')
require('lib.override.pumps')
require('lib.override.mining')
require('lib.override.others')
require('lib.override.storageTanks')
require('lib.override.electricPoles')
require('lib.override.electricGenerators')
require('lib.override.solarPanels')
require('lib.override.accums')
require('lib.override.pumpjacks')
require('lib.override.compressorsAndBarrels')
require('lib.override.flareStacks')
require('lib.override.distilators')
require('lib.override.chemicalPlants')
require('lib.override.electrolysers')
require('lib.override.oilRefineries')
require('lib.override.burnerReactors')
require('lib.override.furnaces')

apm.bob_rework.lib.override.apply = function ()
    apm.bob_rework.lib.override.drop()
    apm.bob_rework.lib.override.crushers()
    apm.bob_rework.lib.override.simpleEngines()
    apm.bob_rework.lib.override.inserters()
    apm.bob_rework.lib.override.pistions()
    apm.bob_rework.lib.override.assemblers()
    apm.bob_rework.lib.override.presses()
    apm.bob_rework.lib.override.cokingPlants()
    apm.bob_rework.lib.override.laboratories()
    apm.bob_rework.lib.override.centrifuges()
    apm.bob_rework.lib.override.greenhouses()
    apm.bob_rework.lib.override.logics()
    apm.bob_rework.lib.override.steamMachines()
    apm.bob_rework.lib.override.steelworks()
    apm.bob_rework.lib.override.belts()
    apm.bob_rework.lib.override.pumps()
    apm.bob_rework.lib.override.mining()
    apm.bob_rework.lib.override.others()
    apm.bob_rework.lib.override.storageTanks()
    apm.bob_rework.lib.override.electricPoles()
    apm.bob_rework.lib.override.electricGenerators()
    apm.bob_rework.lib.override.solarPanels()
    apm.bob_rework.lib.override.accums()
    apm.bob_rework.lib.override.pumpjacks()
    apm.bob_rework.lib.override.compressorsAndBarrels()
    apm.bob_rework.lib.override.flareStacks()
    apm.bob_rework.lib.override.distilators()
    apm.bob_rework.lib.override.chemicalPlants()
    apm.bob_rework.lib.override.electrolysers()
    apm.bob_rework.lib.override.oilRefineries()
    apm.bob_rework.lib.override.burnerReactors()
    apm.bob_rework.lib.override.furnaces()
end

