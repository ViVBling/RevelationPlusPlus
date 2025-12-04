//Thermal Expansion Magma Crucible Recipes

import crafttweaker.item.IItemStack;

mods.thermalexpansion.Crucible.addRecipe(<liquid:ic2uu_matter> * 3, <ic2:misc_resource:3>, 30000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:nitrogen_fluid> * 500, <extraplanets:frozen_nitrogen>, 3200);
mods.thermalexpansion.Crucible.addRecipe(<liquid:nitrogen_fluid> * 2000, <extraplanets:decorative_blocks:9>, 12800);
mods.thermalexpansion.Crucible.addRecipe(<liquid:crude_oil> * 250, <immersivepetroleum:material:0>, 2000);
for basalt in <ore:stoneBasalt>.items mods.thermalexpansion.Crucible.addRecipe(<liquid:ic2pahoehoe_lava> * 1000, basalt, 400000);
