//Vanilla Furnace Recipes

furnace.addRecipe(<minecraft:glass> * 4, <minecraft:sandstone>, 0.4);
furnace.addRecipe(<minecraft:bedrock>, <extrautils2:decorativebedrock:2>, 50.0);
furnace.addRecipe(<extrautils2:decorativebedrock:1>, <minecraft:bedrock>, 50.0);
furnace.addRecipe(<milifi:omelet>, <ore:egg>, 0.1);
furnace.addRecipe(<extratrees:misc:5>, <extratrees:misc:4>, 0.1);

furnace.setFuel(<milifi:item_bedrock_door>, 0);

for treeLeaves in <ore:treeLeaves>.items furnace.setFuel(treeLeaves, 100);
for stairWood in <ore:stairWood>.items furnace.setFuel(stairWood, 225);

furnace.setFuel(<milifi:blockalphacoal>, 144000);
furnace.setFuel(<milifi:blockbetacoal>, 1296000);
furnace.setFuel(<milifi:blockgammacoal>, 11664000);
furnace.setFuel(<milifi:blockdeltacoal>, 104976000);
furnace.setFuel(<milifi:blockepsiloncoal>, 944784000);

furnace.remove(<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}));
furnace.remove(<toughasnails:purified_water_bottle>);