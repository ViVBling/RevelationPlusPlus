#loader postinit crafttweaker

//IndustrialCraft² Canner Recipes

import mods.ic2.Canner;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.game.IGame;

print("Starting the Initialization of the Canner Recipes...");

for item in <ore:itemFood>.items{
	if !isNull(item) && item.healAmount > 0 && item.isFood {
		print("Trying to register " ~ item.definition.name ~ "(ID: " ~ item.definition.id ~ ") as Canner Recipe...");
		val healAmount = item.healAmount;
		Canner.addBottleRecipe(<ic2:filled_tin_can> * healAmount, <ic2:crafting:10> * healAmount, item);
		print("Successfully registered Canner Recipe for " ~ item.name ~ " with a total of " ~ healAmount ~ " filled tin cans.");
	}
	else print("Heal Amount of " ~ item.definition.name ~ " is smaller than 1! Not adding this item to the Canner.");
}

Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <minecraft:cake>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:carrotcakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:cheesecakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:cherrycheesecakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:chocolatesprinklecakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:holidaycakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:pineappleupsidedowncakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:pumpkincheesecakeitem>);
Canner.addBottleRecipe(<ic2:filled_tin_can> * 7, <ic2:crafting:10> * 7, <harvestcraft:redvelvetcakeitem>);

print("Done with initializing the Canner Recipes!");

for itemDefinition in game.items{
	if !isNull(itemDefinition) && itemDefinition.makeStack(0).healAmount > 0 && (itemDefinition.makeStack(0) instanceof Item) {
		print("Trying to register " ~ itemDefinition.name ~ "(ID: " ~ itemDefinition.id ~ ") as Canner Recipe...");
		val healAmount = itemDefinition.makeStack(0).healAmount;
		Canner.addBottleRecipe(<ic2:filled_tin_can> * healAmount, <ic2:crafting:10> * healAmount, itemDefinition.makeStack(0));
		print("Successfully registered Canner Recipe for " ~ itemDefinition.name ~ " with a total of " ~ healAmount ~ " filled tin cans.");
	}
	else print("Heal Amount of " ~ itemDefinition.name ~ " is smaller than 1! Not adding this item to the Canner.");
}
