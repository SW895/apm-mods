if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.tier == nil then apm.bob_rework.lib.tier = {} end
if apm.bob_rework.lib.tier.list == nil then apm.bob_rework.lib.tier.list = {} end

<<<<<<< Updated upstream
require('lib.enities.base')
require('lib.tier.t0_bronze')
require('lib.tier.t1_brass')
require('lib.tier.t2_monel')
require('lib.tier.t3_steel')
require('lib.tier.t4_aluminium')
require('lib.tier.t5_titanium')
=======
require('lib.entities.base')
require('lib.tier.t0_gray')
require('lib.tier.t1_yellow')
require('lib.tier.t2_red')
require('lib.tier.t3_blue')

return apm.bob_rework.lib.tier
>>>>>>> Stashed changes
