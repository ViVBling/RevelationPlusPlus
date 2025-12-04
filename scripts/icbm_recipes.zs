//ICBM Recipes

recipes.remove(<icbmclassic:explosives:0>);
recipes.addShaped(<icbmclassic:explosives>, [[<minecraft:tnt>, <ore:blockRedstone>, <minecraft:tnt>],[<ore:blockRedstone>, <minecraft:tnt>, <ore:blockRedstone>], [<minecraft:tnt>, <ore:blockRedstone>, <minecraft:tnt>]]);

recipes.remove(<icbmclassic:explosives:1>);
recipes.addShaped(<icbmclassic:explosives:1>, [[<reforged:arrow_bundle>, <reforged:arrow_bundle>, <reforged:arrow_bundle>],[<reforged:arrow_bundle>, <icbmclassic:explosives>, <reforged:arrow_bundle>], [<reforged:arrow_bundle>, <reforged:arrow_bundle>, <reforged:arrow_bundle>]]);

recipes.remove(<icbmclassic:explosives:2>);
recipes.addShaped(<icbmclassic:explosives:2>, [[<ore:dustPyrotheum>, <ore:dustPyrotheum>, <ore:dustPyrotheum>],[<ore:dustPyrotheum>, <icbmclassic:explosives:1>, <ore:dustPyrotheum>], [<ore:dustPyrotheum>, <natura:flint_and_blaze>.withTag({ench: [{lvl: 10, id: 34 as short}]}).onlyWithTag({ench: [{lvl: 10, id: 34 as short}]}), <ore:dustPyrotheum>]]);

recipes.remove(<icbmclassic:explosives:3>);
recipes.addShapedMirrored(<icbmclassic:explosives:3>, [[<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>],[<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}).onlyWithTag({Potion: "minecraft:long_slowness"}), <icbmclassic:explosives:1>, <minecraft:lingering_potion>.withTag({Potion: "apotheosis:strong_fatigue"}).onlyWithTag({Potion: "apotheosis:strong_fatigue"})], [<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>]]);

recipes.remove(<icbmclassic:explosives:10>);
recipes.addShaped(<icbmclassic:explosives:10>, [[<ore:blockIron>, <cyclicmagic:sound_player>, <ore:blockIron>],[<cyclicmagic:sound_player>, <icbmclassic:explosives:6>, <cyclicmagic:sound_player>], [<ore:blockIron>, <cyclicmagic:sound_player>, <ore:blockIron>]]);

recipes.remove(<icbmclassic:explosives:14>);
recipes.addShaped(<icbmclassic:explosives:14>, [[<ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>],[<ore:gunpowder>, <quark:smoker>, <ore:gunpowder>], [<ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>]]);

recipes.remove(<icbmclassic:explosives:15>);
recipes.addShaped(<icbmclassic:explosives:15>, [[<icbmclassic:explosives:13>, <ore:blockUranium>, <icbmclassic:explosives:13>],[<ore:blockUranium>, <mekanism:gastank>.withTag({"tier":0,"mekData":{"stored":{"amount":134217728,"gasName":"hydrogen"}}}).onlyWithTag({"tier":0,"mekData":{"stored":{"amount":134217728,"gasName":"hydrogen"}}}), <ore:blockUranium>], [<icbmclassic:explosives:13>, <ore:blockUranium>, <icbmclassic:explosives:13>]]);

recipes.remove(<icbmclassic:explosives:17>);
recipes.addShaped(<icbmclassic:explosives:17>, [[<icbmclassic:explosives:2>, <icbmclassic:explosives:2>, <icbmclassic:explosives:2>],[<icbmclassic:explosives:2>, <openblocks:tank>.withTag({tank: {FluidName: "lava", Amount: 1000000}}).onlyWithTag({tank: {FluidName: "lava", Amount: 1000000}}), <icbmclassic:explosives:2>], [<icbmclassic:explosives:2>, <icbmclassic:explosives:2>, <icbmclassic:explosives:2>]]);

recipes.remove(<icbmclassic:explosives:18>);
recipes.addShaped(<icbmclassic:explosives:18>, [[<simplyjetpacks:metaitemmods:30>, <ic2:hex_heat_storage>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <simplyjetpacks:metaitemmods:30>],[<ic2:hex_heat_storage>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <icbmclassic:explosives:7>, <ic2:hex_heat_storage>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0})], [<simplyjetpacks:metaitemmods:30>, <ic2:hex_heat_storage>.withTag({advDmg: 0}).onlyWithTag({advDmg: 0}), <simplyjetpacks:metaitemmods:30>]]);

recipes.remove(<icbmclassic:explosives:19>);
recipes.addShaped(<icbmclassic:explosives:19>, [[<icbmclassic:explosives:1>, <icbmclassic:explosives:1>, <icbmclassic:explosives:1>],[<icbmclassic:explosives:1>, <openblocks:tank>.withTag({tank: {FluidName: "potion", Amount: 1000000, Tag: {Potion: "extrautils2:xu2.gravity.long"}}}).onlyWithTag({tank: {FluidName: "potion", Amount: 1000000, Tag: {Potion: "extrautils2:xu2.gravity.long"}}}), <icbmclassic:explosives:1>], [<icbmclassic:explosives:1>, <icbmclassic:explosives:1>, <icbmclassic:explosives:1>]]);

recipes.remove(<icbmclassic:explosives:22>);
recipes.addShaped(<icbmclassic:explosives:22>, [[<icbmclassic:explosives:15>, <openblocks:tank>.withTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}).onlyWithTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}), <icbmclassic:explosives:15>],[<openblocks:tank>.withTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}).onlyWithTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}), <minecraft:structure_void>, <openblocks:tank>.withTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}).onlyWithTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}})], [<icbmclassic:explosives:15>, <openblocks:tank>.withTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}).onlyWithTag({tank: {FluidName: "ic2uu_matter", Amount: 1000000}}), <icbmclassic:explosives:15>]]);

recipes.remove(<icbmclassic:explosives:23>);recipes.addShaped(<icbmclassic:explosives:23>, [[<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>],[<projecte:matter_block:1>, <icbmclassic:explosives:22>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>]]);
