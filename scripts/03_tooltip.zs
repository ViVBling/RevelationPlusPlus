#Name: tooltip.zs
#Author: Feed the Beast

print("Initializing 'tooltip.zs'...");

<fluxnetworks:flux>.addTooltip(format.yellow("Drops from Redstone Ore"));
<fluxnetworks:flux>.addTooltip(format.darkRed("Throwing in fire or lava recipe has been disabled!"));
mods.jei.JEI.addDescription(<milifi:item_bedrock_door>, "Damn this thing is heavy!", "This bedrock door is almost unbreakable. Be careful, to not place it the wrong way, because mining it is a long, thin type of bread of French origin...", "Get it? French Bread? Pain?", "Okay, never mind this unfunny pun.", "To use it correctly, place it sideways (the wrong way on purpose, so that it looks opened, when you stand in front of it), on a block that is almost unbreakable (e.g. bedrock). Give it a redstone signal from below (or however you prefer it) and it will close. To open it, remove the redstone signal. This will prevent other players without permission from entering your building.");
<herobrine:bedrock_sword>.addTooltip("This bedrock sword is unbreakable but deals less damage.");
<milifi:blockalphacoal>.addTooltip("81 Coal");
<milifi:blockbetacoal>.addTooltip("729 Coal");
<milifi:blockgammacoal>.addShiftTooltip("6,561 Coal", "6 thousand Coal");
<milifi:blockdeltacoal>.addShiftTooltip("59,049 Coal", "59 thousand Coal");
<milifi:blockepsiloncoal>.addShiftTooltip("531,441 Coal", "531 thousand Coal");
<milifi:blockzetacoal>.addShiftTooltip("4,782,969 Coal", "4 million Coal");
<milifi:blocketacoal>.addShiftTooltip("43,046,721 Coal", "43 million Coal");
<milifi:blockthetacoal>.addShiftTooltip("387,420,489 Coal", "387 million Coal");
<milifi:blockiotacoal>.addShiftTooltip("3,486,784,401 Coal", "3 billion Coal");
<milifi:blockkappacoal>.addShiftTooltip("31,381,059,609 Coal", "31 billion Coal");
<milifi:blocklambdacoal>.addShiftTooltip("282,429,536,481 Coal", "282 billion Coal");
<milifi:blockmycoal>.addShiftTooltip("2,541,865,828,329 Coal", "2 trillion Coal");
<milifi:blocknycoal>.addShiftTooltip("22,876,792,454,961 Coal", "22 trillion Coal");
<milifi:blockxicoal>.addShiftTooltip("205,891,132,094,649 Coal", "205 trillion Coal");
<milifi:blockomikroncoal>.addShiftTooltip("1,853,020,188,851,841 Coal", "1 quadrillion Coal");
<milifi:blockpicoal>.addShiftTooltip("16,677,181,699,666,600 Coal", "16 quadrillion Coal");
<milifi:blockrhocoal>.addShiftTooltip("150,094,635,296,999,000 Coal", "150 quadrillion Coal");
<milifi:blocksigmacoal>.addShiftTooltip("1,350,851,717,672,990,000 Coal", "1 quintillion Coal");
<milifi:blocktaucoal>.addShiftTooltip("12,157,665,459,056,900,000 Coal", "12 quintillion Coal");
<milifi:blockypsiloncoal>.addShiftTooltip("109,418,989,131,512,000,000 Coal", "109 quintillion Coal");
<milifi:blockphicoal>.addShiftTooltip("984,770,902,183,611,000,000 Coal", "984 quintillion Coal");
<milifi:blockchicoal>.addShiftTooltip("8,862,938,119,652,500,000,000 Coal", "8 sextillion Coal");
<milifi:blockpsicoal>.addShiftTooltip("79,766,443,076,872,500,000,000 Coal", "79 sextillion Coal");
<milifi:blockomegacoal>.addShiftTooltip("717,897,987,691,853,000,000,000 Coal", "717 sextillion Coal");

<thermalfoundation:coin:64>.addTooltip(format.yellow("EMC:") ~ format.white(" 0.01 (0,01 €)"));
<thermalfoundation:coin:68>.addTooltip(format.yellow("EMC:") ~ format.white(" 0.02 (0,02 €)"));
<thermalfoundation:coin:99>.addTooltip(format.yellow("EMC:") ~ format.white(" 0.05 (0,05 €)"));
<thermalfoundation:coin:65>.addTooltip(format.yellow("EMC:") ~ format.white(" 0.1 (0,10 €)"));
<thermalfoundation:coin:0>.addTooltip(format.yellow("EMC:") ~ format.white(" 0.2 (0,20 €)"));
<thermalfoundation:coin:96>.addTooltip(format.yellow("EMC:") ~ format.white(" 0.5 (0,50 €)"));
<thermalfoundation:coin:101>.addTooltip(format.yellow("EMC:") ~ format.white(" 1 (1 €)"));
<thermalfoundation:coin:67>.addTooltip(format.yellow("EMC:") ~ format.white(" 2 (2 €)"));
<thermalfoundation:coin:98>.addTooltip(format.yellow("EMC:") ~ format.white(" 5 (5 €)"));
<thermalfoundation:coin:66>.addTooltip(format.yellow("EMC:") ~ format.white(" 10 (10 €)"));
<thermalfoundation:coin:100>.addTooltip(format.yellow("EMC:") ~ format.white(" 20 (20 €)"));
<thermalfoundation:coin:102>.addTooltip(format.yellow("EMC:") ~ format.white(" 50 (50 €)"));
<thermalfoundation:coin:69>.addTooltip(format.yellow("EMC:") ~ format.white(" 100 (100 €)"));
<thermalfoundation:coin:97>.addTooltip(format.yellow("EMC:") ~ format.white(" 200 (200 €)"));
<thermalfoundation:coin:1>.addTooltip(format.yellow("EMC:") ~ format.white(" 500 (500 €)"));
<thermalfoundation:coin:103>.addTooltip(format.yellow("EMC:") ~ format.white(" 1,000 (1.000 €)"));
<thermalfoundation:coin:70>.addTooltip(format.yellow("EMC:") ~ format.white(" 2,000 (2.000 €)"));
<thermalfoundation:coin:72>.addTooltip(format.yellow("EMC:") ~ format.white(" 5,000 (5.000 €)"));
<thermalfoundation:coin:71>.addTooltip(format.yellow("EMC:") ~ format.white(" 10,000 (10.000 €)"));

print("Initialized 'tooltip.zs'");
