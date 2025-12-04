//IndustrialCraft² Liquid Heat Exchanger Recipes

import mods.ic2.HeatExchanger;

val definition1 = <liquid:liquidnitrogen>.definition;
val liquidnitrogenT = definition1.temperature;
definition1.temperature = 77;

val definition2 = <liquid:nitrogen_fluid>.definition;
val nitrogen_fluidT = definition2.temperature;
definition2.temperature = 77;

val definition3 = <liquid:nitrogen_ice_fluid>.definition;
val nitrogen_ice_fluidT = definition3.temperature;
definition3.temperature = 63;

val definition4 = <liquid:frozen_water_fluid>.definition;
val frozen_water_fluidT = definition4.temperature;
definition4.temperature = 273;

val definition5 = <liquid:magma_fluid>.definition;
val magma_fluidT = definition5.temperature;
definition5.temperature = 1500;

val definition6 = <liquid:ice>.definition;
val iceT = definition6.temperature;
definition6.temperature = 253;

val definition7 = <liquid:hot_spring_water>.definition;
val hot_spring_waterT = definition7.temperature;
definition7.temperature = 370;

mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:nitrogen_ice_fluid>, <liquid:nitrogen_fluid>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:nitrogen_ice_fluid>, <liquid:liquidnitrogen>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:liquidnitrogen>, <liquid:nitrogen>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:ic2steam>, <liquid:ic2superheated_steam>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:hot_spring_water>, <liquid:ic2steam>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:ic2hot_water>, <liquid:hot_spring_water>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:water>, <liquid:ic2hot_water>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:frozen_water_fluid>, <liquid:water>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:ice>, <liquid:frozen_water_fluid>, 1);

mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil>, <liquid:oil_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_heat_1>, <liquid:oil_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_heat_2>, <liquid:oil_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_heat_1>, <liquid:oil>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_residue>, <liquid:oil_residue_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_residue_heat_1>, <liquid:oil_residue_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_residue_heat_2>, <liquid:oil_residue_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_residue_heat_1>, <liquid:oil_residue>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_heavy>, <liquid:oil_heavy_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_heavy_heat_1>, <liquid:oil_heavy_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_heavy_heat_2>, <liquid:oil_heavy_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_heavy_heat_1>, <liquid:oil_heavy>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_dense>, <liquid:oil_dense_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_dense_heat_1>, <liquid:oil_dense_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_dense_heat_2>, <liquid:oil_dense_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_dense_heat_1>, <liquid:oil_dense>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_distilled>, <liquid:oil_distilled_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:oil_distilled_heat_1>, <liquid:oil_distilled_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_distilled_heat_2>, <liquid:oil_distilled_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:oil_distilled_heat_1>, <liquid:oil_distilled>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_dense>, <liquid:fuel_dense_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_dense_heat_1>, <liquid:fuel_dense_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_dense_heat_2>, <liquid:fuel_dense_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_dense_heat_1>, <liquid:fuel_dense>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_mixed_heavy>, <liquid:fuel_mixed_heavy_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_mixed_heavy_heat_1>, <liquid:fuel_mixed_heavy_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_mixed_heavy_heat_2>, <liquid:fuel_mixed_heavy_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_mixed_heavy_heat_1>, <liquid:fuel_mixed_heavy>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_light>, <liquid:fuel_light_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_light_heat_1>, <liquid:fuel_light_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_light_heat_2>, <liquid:fuel_light_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_light_heat_1>, <liquid:fuel_light>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_mixed_light>, <liquid:fuel_mixed_light_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_mixed_light_heat_1>, <liquid:fuel_mixed_light_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_mixed_light_heat_2>, <liquid:fuel_mixed_light_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_mixed_light_heat_1>, <liquid:fuel_mixed_light>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_gaseous>, <liquid:fuel_gaseous_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:fuel_gaseous_heat_1>, <liquid:fuel_gaseous_heat_2>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_gaseous_heat_2>, <liquid:fuel_gaseous_heat_1>, 1);
mods.ic2.HeatExchanger.addFluidHeatUp(<liquid:fuel_gaseous_heat_1>, <liquid:fuel_gaseous>, 1);
