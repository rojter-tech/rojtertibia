-- Parser
dofile('data/modules/scripts/gamestore/init.lua')
-- Config

--New Products--
GameStore.Categories = {

	--Helmets--
	{	name = "Helmets",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Helmets.png"},
		offers = {
			{name = "Shroud of Despair", thingId = 25413, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 4, icons = {"Product_Item_ShroudDespair.png"}, description = "You see a shroud of despair (Arm:7, protection death +3%). It can only be wielded properly by players of level 150 or higher. It weighs 46.00 oz."},
			{name = "Shamanic Mask", thingId = 24848, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 4, icons = {"Product_Item_ShamanicMask.png"}, description = "You see a Shamanic Mask (Arm:4). It weighs 46.00 oz."},
			{name = "Visage of the end days", thingId = 25410, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 8, icons = {"Product_Item_Voted.png"}, description = "You see a visage of the end days (Arm:10). It weighs 46.00 oz."},
			{name = "Yalahari Mask", thingId = 9778, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 4, icons = {"Product_Item_YalahariMask.png"}, description = "You see a yalahari mask (Arm:5, magic level +2). It can only be wielded properly by sorcerers and druids of level 80 or higher. It weighs 35.00 oz."},
			{name = "Depth Galea", thingId = 15408, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_DepthGalea.png"}, description = "You see a depth galea (Arm:8, protection drown +100%). It can only be wielded properly by players of level 150 or higher. It weighs 46.00 oz. Enables underwater exploration."},
			{name = "Prismatic Helmet", thingId = 18403, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_PrismaticHelmet.png"}, description = "You see a prismatic helmet (Arm:9, shielding +1, protection physical +5%). It can only be wielded properly by knights of level 150 or higher."},
			{name = "Gill Gugel", thingId = 18398, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_GillGugel.png"}, description = "You see a gill gugel (Arm:5, magic level +2, protection earth +6%, fire -6%). It can only be wielded properly by sorcerers and druids of level 150 or higher. It weighs 9.00 oz."},
			{name = "Elite Draken Helmet", thingId = 12645, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_DrakenHelmet.png"}, description = "You see an elite draken helmet (Arm:9, distance fighting +1, protection death +3%). It can only be wielded properly by paladins of level 100 or higher. It weighs 43.00 oz."},
			{name = "Werewolf Helmet", thingId = 24718, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_WerewolfHelmet.png"}, description = "You see a werewolf helmet (Arm:9, speed +15). It can be turned into a Enchanted Werewolf Helmet using Moonlight Crystals."},
			{name = "Golden Helmet", thingId = 2471, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 10, icons = {"Product_Item_GoldenHelmet.png"}, description = "You see a golden helmet (Arm:12). It weighs 32.00 oz. It's the famous Helmet of the Stars."},
			
			
		}
	},
	
	--Armors--
	{	name = "Armors",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Armors.png"},
		offers = {
			{name = "Thundermind Raiment", thingId = 25192, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_ThundermindRaiment.png"}, description = "You see a thundermind raiment (Arm:15, magic level +4, protection energy +8%, earth -8%). It can only be wielded properly by druids and sorcerers of level 200 or higher. It weighs 22.50 oz."},
			{name = "Frostmind Raiment", thingId = 25193, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FrostmindRaiment.png"}, description = "You see a frostmind raiment (Arm:15, magic level +4, protection energy -8%, ice +8%). It can only be wielded properly by druids and sorcerers of level 200 or higher. It weighs 22.50 oz."},
			{name = "Earthmind Raiment", thingId = 25191, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_EarthmindRaiment.png"}, description = "You see a earthmind raiment (Arm:15, magic level +4, protection earth +8%, fire -8%). It can only be wielded properly by druids and sorcerers of level 200 or higher. It weighs 22.50 oz."},
			{name = "Firemind Raiment", thingId = 25190, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FiremindRaiment.png"}, description = "You see a firemind raiment (Arm:15, magic level +4, protection fire +8%, ice -8%). It can only be wielded properly by druids and sorcerers of level 200 or higher. It weighs 22.50 oz."},
			{name = "Earthheart Platemail", thingId = 25179, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_EarthheartPlatemail.png"}, description = "You see a earthheart platemail (Arm:18, club fighting +4, protection earth +8%, fire -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Earthheart Hauberk", thingId = 25178, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_EarthheartHauberk.png"}, description = "You see a earthheart hauberk (Arm:18, axe fighting +4, protection earth +8%, fire -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Earthheart Cuirass", thingId = 25177, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_EarthheartCuirass.png"}, description = "You see a earthheart cuirass (Arm:18, sword fighting +4, protection earth +8%, fire -8%).It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Frostheart Platemail", thingId = 25185, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FrostheartPlatemail.png"}, description = "You see a frostheart platemail (Arm:18, club fighting +4, protection energy -8%, ice +8%).It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Frostheart Hauberk", thingId = 25184, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FrostheartHauberk.png"}, description = "You see a frostheart hauberk (Arm:18, axe fighting +4, protection energy -8%, ice +8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Frostheart Cuirass", thingId = 25183, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FrostheartCuirass.png"}, description = "You see a frostheart cuirass (Arm:18, sword fighting +4, protection energy -8%, ice +8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Thunderheart Platemail", thingId = 25182, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_ThunderheartPlatemail.png"}, description = "You see a thunderheart platemail (Arm:18, club fighting +4, protection energy +8%, earth -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Thunderheart Hauberk", thingId = 25181, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_ThunderheartHauberk.png"}, description = "You see a thunderheart hauberk (Arm:18, axe fighting +4, protection energy +8%, earth -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Thunderheart Cuirass", thingId = 25180, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_ThunderheartCuirass.png"}, description = "You see a thunderheart cuirass (Arm:18, sword fighting +4, protection energy +8%, earth -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Fireheart Platemail", thingId = 25176, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FireheartPlatemail.png"}, description = "You see a fireheart platemail (Arm:18, club fighting +4, protection fire +8%, ice -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Fireheart Hauberk", thingId = 25175, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FireheartHauberk.png"}, description = "You see a fireheart hauberk (Arm:18, axe fighting +4, protection fire +8%, ice -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Fireheart Cuirass", thingId = 25174, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FireheartCuirass.png"}, description = "You see a fireheart cuirass (Arm:18, sword fighting +4, protection fire +8%, ice -8%). It can only be wielded properly by knights of level 200 or higher. It weighs 22.50 oz."},
			{name = "Firesoul Tabard", thingId = 25186, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FiresoulTabard.png"}, description = "You see a firesoul tabard (Arm:18, distance fighting +4, protection fire +8%, ice -8%). It can only be wielded properly by paladins of level 200 or higher. It weighs 22.50 oz."},
			{name = "Frostsoul Tabard", thingId = 25189, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_FrostsoulTabard.png"}, description = "You see a frostsoul tabard (Arm:18, distance fighting +4, protection energy -8%, ice +8%). It can only be wielded properly by paladins of level 200 or higher. It weighs 22.50 oz."},
			{name = "Thundersoul Tabard", thingId = 25188, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_ThundersoulTabard.png"}, description = "You see a thundersoul tabard (Arm:18, distance fighting +4, protection energy +8%, earth -8%). It can only be wielded properly by paladins of level 200 or higher. It weighs 22.50 oz."},
			{name = "Earthsoul Tabard", thingId = 25187, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_EarthsoulTabard.png"}, description = "You see a earthsoul tabard (Arm:18, distance fighting +4, protection earth +8%, fire -8%). It can only be wielded properly by paladins of level 200 or higher. It weighs 22.50 oz."},
			{name = "Demon Armor", thingId = 2494, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 4, icons = {"Product_Item_DemonArmor.png"}, description = "You see a demon armor (Arm:16). It weighs 80.00 oz."},
			{name = "Earthborn Titan Armor", thingId = 8882, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_EarthbornArmor.png"}, description = "You see an earthborn titan armor (Arm:15, axe fighting +2, protection earth +5%, fire -5%). It can only be wielded properly by knights of level 100 or higher. It weighs 120.00 oz."},
			{name = "Windborn Colossus Armor", thingId = 8883, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_WindbornArmor.png"}, description = "You see a windborn colossus armor (Arm:15, club fighting +2, protection energy +5%, earth -5%). It can only be wielded properly by knights of level 100 or higher. It weighs 120.00 oz."},
			{name = "Fireborn Giant Armor", thingId = 8881, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_FirebornArmor.png"}, description = "You see a fireborn giant armor (Arm:15, sword fighting +2, protection fire +5%, ice -5%). It can only be wielded properly by knights of level 100 or higher. It weighs 120.00 oz."},
			{name = "Master Acher's Armor", thingId = 8888, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_MasterArmor.png"}, description = "You see a master archer's armor (Arm:15, distance fighting +3). It can only be wielded properly by paladins of level 100 or higher. It weighs 69.00 oz."},
			{name = "Royal Draken Mail", thingId = 12642, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_DrakenMail.png"}, description = "You see a royal draken mail (Arm:16, shielding +3, protection physical +5%). It can only be wielded properly by knights of level 100 or higher. It weighs 130.00 oz."},
			{name = "Gill Coat", thingId = 18399, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_GillCoat.png"}, description = "You see a gill coat (Arm:12, magic level +1, protection earth +10%, fire -10%). It can only be wielded properly by sorcerers and druids of level 150 or higher. It weighs 19.00 oz."},
			{name = "Royal Scale Robe", thingId = 12643, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 6, icons = {"Product_Item_ScaleRobe.png"}, description = "You see a royal scale robe (Arm:12, magic level +2, protection fire +5%). It can only be wielded properly by sorcerers and druids of level 100 or higher. It weighs 45.00 oz."},
			{name = "Prismatic Armor", thingId = 18404, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_PrismaticArmor.png"}, description = "You see a prismatic armor (Arm:15, protection physical +5%, speed +15). It can only be wielded properly by knights and paladins of level 120 or higher. It weighs 79.00 oz."},
			{name = "Depth Lorica", thingId = 15407, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_DepthLorica.png"}, description = "You see a depth lorica (Arm:16, distance fighting +3, protection death +5%). It can only be wielded properly by paladins of level 150 or higher. It weighs 145.00 oz."},
			{name = "Furios Frock", thingId = 21725, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_FuriousFrock.png"}, description = "You see a furious frock (Arm:12, magic level +2, protection fire +5%). It can only be wielded properly by sorcerers and druids of level 130 or higher. It weighs 34.00 oz."},
			{name = "Ornate Chestplate", thingId = 15406, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_OrnateChest.png"}, description = "You see an ornate chestplate (Arm:16, shielding +3, protection physical +8%). It can only be wielded properly by knights of level 200 or higher. It weighs 156.00 oz."},
						
		}
	},
	
	--Legs--
	{	name = "Legs",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Legs.png"},
		offers = {
			{name = "Demon Legs", thingId = 2495, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 4, icons = {"Product_Item_DemonLegs.png"}, description = "You see demon legs (Arm:9). It weighs 70.00 oz."},
			{name = "Grasshopper Legs", thingId = 15490, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 4, icons = {"Product_Item_GrassLegs.png"}, description = "You see a grasshopper legs (Arm:7, speed +10). It can only be wielded properly by players of level 75 or higher. It weighs 32.00 oz."},
			{name = "Depth Ocrea", thingId = 15409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_DepthOcrea.png"}, description = "You see a depth ocrea (Arm:8, protection manadrain +15%) It can only be wielded properly by sorcerers and druids. It weighs 48.00 oz."},
			{name = "Primatic Legs", thingId = 18405, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 6, icons = {"Product_Item_PrismaticLegs.png"}, description = "You see prismatic legs (Arm:8, distance fighting +2, protection physical +3%). It can only be wielded properly by paladins of level 150 or higher. It weighs 10.00 oz."},
			{name = "Gill Legs", thingId = 18400, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_GillLegs.png"}, description = "You see a gill legs (Arm:7, magic level +1, protection earth +8%, fire -8%). It can only be wielded properly by sorcerers and druids of level 150 or higher. It weighs 28.00 oz."},
			{name = "Ornate Legs", thingId = 15412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_OrnateLegs.png"}, description = "You see an ornate legs (Arm:8, protection physical +5%). It can only be wielded properly by knights of level 185 or higher. It weighs 77.00 oz."},
			{name = "Dwarven Legs", thingId = 2504, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_DwarvenLegs.png"}, description = "You see dwarven legs (Arm:7, protection physical +3%). It weighs 49.00 oz."},
			{name = "Icy Culottes", thingId = 21700, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_IcyCulottes.png"}, description = "You see a icy culottes (Arm:8, protection ice +8%). It can only be wielded properly by sorcerers and druids. It weighs 15.00 oz."},
		}
	},
	
	--Boots--
	{	name = "Boots",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Boots.png"},
		offers = {	
			{name = "Treader of Torment", thingId = 25412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 6, icons = {"Product_Item_TreaderTorment.png"}, description = "You see treader of torment (Arm:4). It weighs 31.00 oz."},
			{name = "Boots of homecoming", thingId = 25429, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 6, icons = {"Product_Item_Homecoming.png"}, description = "You see boots of homecoming (Arm:2). It weighs 29.00 oz. They are made of dark red buckskin and the golden clasps look like the letter F."},
			{name = "Badger Boots", thingId = 24742, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 6, icons = {"Product_Item_BadgerBoots.png"}, description = "You see badger boots (Arm:2, speed +10). It weighs 7.50 oz."},
			{name = "Void Boots", thingId = 26133, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 10, icons = {"Product_Item_VoidBoots.png"}, description = "You see void boots (Arm:2, speed +30). It can only be wielded properly by players of level 150 or higher. It weighs 15.00 oz."},
			{name = "Boots of Haste", thingId = 2195, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 4, icons = {"Product_Item_BoH.png"}, description = "You see boots of haste (speed +20). It weighs 7.50 oz."},		
			{name = "Golden Boots", thingId = 2646, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_GoldenBoots.png"}, description = "You see golden boots (Arm:4). It weighs 31.00 oz."},
			{name = "Pair Soft Boots", thingId = 2640, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_SoftBoots.png"}, description = "You see pair of soft boots that is brand-new. It weighs 8.00 oz."},
			{name = "Prismatic Boots", thingId = 18406, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_PrismaticBoots.png"}, description = "You see prismatic boots (Arm:3, protection death +3%, speed +15). It can only be wielded properly by paladins of level 150 or higher. It weighs 18.00 oz."},
			{name = "Depth Calcei", thingId = 15410, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_DepthCalcei.png"}, description = "You see a depth calcei (Arm:3, protection physical +5%, speed -5). It can only be wielded properly by knights of level 150 or higher. It weighs 37.00 oz."},
		}
	},
	
	--Shields--
	{	name = "Shields",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Shields.png"},
		offers = {
			{name = "Death Gaze", thingId = 25414, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 6, icons = {"Product_Item_DeathGaze.png"}, description = "You see a death gaze (Def:38). It can only be wielded properly by players of level 200 or higher. It weighs 55.00 oz"},
			{name = "Rift Shield", thingId = 25382, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 6, icons = {"Product_Item_RiftShield.png"}, description = "You see a rift shield (Def:37). It weighs 60.00 oz."},
			{name = "Book of Lies", thingId = 25411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 6, icons = {"Product_Item_BookLies.png"}, description = "You see a book of lies (Def:18, magic level +4). It can only be wielded properly by druids and sorcerers of level 150 or higher. It weighs 21.00 oz."},
			{name = "Depth Scutum", thingId = 15411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 4, icons = {"Product_Item_DepthScutum.png"}, description = "You see a depth scutum (Def:25, magic level +2). It can only be wielded properly by sorcerers and druids of level 120 or higher. It weighs 30.00 oz."},
			{name = "Shield of Corruption", thingId = 12644, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_ShieldCorruption.png"}, description = "You see a shield of corruption (Def:36, sword fighting +3). It can only be wielded properly by knights of level 80 or higher. It weighs 49.00 oz."},
			{name = "Ornate Shield", thingId = 15413, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_OrnateShield.png"}, description = "You see an ornate shield (Def:36, protection physical +5%). It can only be wielded properly by knights of level 130 or higher. It weighs 71.00 oz."},
			{name = "Prismatic Shield", thingId = 18410, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_PrismaticShield.png"}, description = "You see a prismatic shield (Def:37, shielding +2, protection physical +4%). It can only be wielded properly by knights of level 150 or higher. It weighs 72.00 oz."},
			{name = "Spellbook of Vigilance", thingId = 18401, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 7, icons = {"Product_Item_SpellbookVigilance.png"}, description = "You see a spellbook of vigilance (Def:20, magic level +3, protection earth +3%, fire -3%). It can only be wielded properly by sorcerers and druids of level 130 or higher. It weighs 27.00 oz. It shows your spells and can also shield against attacks when worn."},
			{name = "Spellbook of Dark Mysteries", thingId = 8918, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_SpellbookMysteries.png"}, description = "Become rich!"},
			{name = "Spellbook of Ancient Arcana ", thingId = 16112, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_SpellbookAncient.png"}, description = "You see a spellbook of ancient arcana (Def:19, magic level +4, protection death +5%). It can only be wielded properly by sorcerers and druids of level 150 or higher. It weighs 25.00 oz. It shows your spells and can also shield against attacks when worn."},
			{name = "Umbral Spellbook", thingId = 22423, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 9, icons = {"Product_Item_UmbralSpellbook.png"}, description = "You see a umbral spellbook (Def:16, magic level +2, protection energy +3%, earth +3%, fire +3%, ice +3%). It can only be wielded properly by sorcerers and druids of level 150 or higher. It weighs 35.00 oz."},
			{name = "Umbral Master Spellbook", thingId = 22424, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 11, icons = {"Product_Item_MasterSpellbook.png"}, description = "You see a umbral master spellbook (Def:20, magic level +4, protection energy +5%, earth +5%, fire +5%, ice +5%). It can only be wielded properly by sorcerers and druids of level 250 or higher. It weighs 30.00 oz."},
			{name = "Great Shield", thingId = 2522, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 13, icons = {"Product_Item_GreatShield.png"}, description = "You see a great shield (Def:38). It weighs 84.00 oz. The shield is made of dragon scales."},
			{name = "Blessed Shield", thingId = 2523, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 15, icons = {"Product_Item_BlessedShield.png"}, description = "You see a blessed shield (Def:40). It weighs 68.00 oz. The shield grants divine protection."},
			
		}
	},
	
	--Weapons--
	{	name = "Weapons",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Weapons.png"},
		offers = {
			{name = "Rift Lance", thingId = 25383, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 5, icons = {"Product_Item_RiftLance.png"}, description = "You see a rift lance (Atk:48, Def:28). It can only be wielded properly by players of level 70 or higher. It weighs 97.00 oz."},
			{name = "Shiny Blade", thingId = 18465, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_ShinyBlade.png"}, description = "You see a shiny blade (Atk:50, Def:35 +3, sword fighting +1). It can only be wielded properly by players of level 120 or higher. It weighs 45.00 oz."},
			{name = "Crystalline Axe ", thingId = 18451, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_CrystallineAxe.png"}, description = "You see a crystalline axe (Atk:51, Def:29 +3, axe fighting +1). It can only be wielded properly by players of level 120 or higher. It weighs 76.00 oz. Even in the light of day, the stars seem to reflect in each facet of this crystalline axe."},
			{name = "Mycological Mace", thingId = 18452, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_MycoMace.png"}, description = "You see a mycological mace (Atk:50, Def:31 +3, club fighting +1). It can only be wielded properly by players of level 120 or higher. It weighs 59.00 oz."},
			{name = "Umbral Blade", thingId = 22399, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralBlade.png"}, description = "You see a umbral blade (Atk:50, Def:29 +2). It can only be wielded properly by knights of level 120 or higher. It weighs 59.00 oz."},
			{name = "umbral Slayer", thingId = 22402, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralSlayer.png"}, description = "You see a umbral slayer (Atk:52, Def:31). It can only be wielded properly by knights of level 120 or higher. It weighs 95.00 oz."},
			{name = "Umbral Axe", thingId = 22405, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralAxe.png"}, description = "You see a umbral axe (Atk:51, Def:27 +2). It can only be wielded properly by knights of level 120 or higher. It weighs 85.00 oz."},
			{name = "Umbral Chopper", thingId = 22408, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralChopper.png"}, description = "You see a umbral chopper (Atk:52, Def:30). It can only be wielded properly by knights of level 120 or higher. It weighs 115.00 oz."},
			{name = "Umbral Mace", thingId = 22411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralMace.png"}, description = "You see a umbral mace (Atk:50, Def:26 +2). It can only be wielded properly by knights of level 120 or higher. It weighs 85.00 oz."},
			{name = "Umbral Hammer", thingId = 22414, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralHammer.png"}, description = "You see a umbral hammer (Atk:53, Def:30). It can only be wielded properly by knights of level 120 or higher. It weighs 165.00 oz."},
			{name = "Umbral Masterblade", thingId = 22400, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_Masterblade.png"}, description = "You see a umbral masterblade (Atk:52, Def:31 +3, sword fighting +1). It can only be wielded properly by players of level 250 or higher. It weighs 55.00 oz."},
			{name = "Umbral Master Slayer", thingId = 22403, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterSlayer.png"}, description = "You see a umbral master slayer (Atk:54, Def:35, sword fighting +3). It can only be wielded properly by players of level 250 or higher. It weighs 90.00 oz."},
			{name = "Umbral Master Axe", thingId = 22406, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterAxe.png"}, description = "You see a umbral master axe (Atk:53, Def:30 +3, axe fighting +1). It can only be wielded properly by players of level 250 or higher. It weighs 80.00 oz."},
			{name = "Umbral Master Chopper", thingId = 22409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterChopper.png"}, description = "You see a umbral master chopper (Atk:54, Def:34, axe fighting +3). It can only be wielded properly by players of level 250 or higher. It weighs 110.00 oz."},
			{name = "Umbral Master Mace", thingId = 22412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterMace.png"}, description = "You see a umbral master mace (Atk:52, Def:30 +3, club fighting +1). It can only be wielded properly by players of level 250 or higher. It weighs 80.00 oz."},
			{name = "Umbral Master Hammer", thingId = 22415, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterHammer.png"}, description = "You see a umbral master hammer (Atk:55, Def:34, club fighting +3). It can only be wielded properly by players of level 250 or higher. It weighs 160.00 oz."},

			
		}
	},
	
	--Rods & Wands--
	{	name = "Rod & Wands",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Wands.png"},
		offers = {
			{name = "Glacial Rod", thingId = 18412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_GlacialRod.png"}, description = "You see a glacial rod (magic level +1). It can only be wielded properly by druids of level 65 or higher. It weighs 37.00 oz. Hurls the icy essence of the Svargrond glaciers."},
			{name = "Muck Rod", thingId = 18411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 5, icons = {"Product_Item_MuckRod.png"}, description = "You see a muck rod (magic level +1). It can only be wielded properly by druids of level 65 or higher. It weighs 37.00 oz. A true staff of old, spitting slimy orbs."},
			{name = "Wand of Everblazing", thingId = 18409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_Everblazing.png"}, description = "You see a wand of everblazing (magic level +1). It can only be wielded properly by sorcerers of level 65 or higher. It weighs 37.00 oz. It contains the everblazing fire."},
			{name = "Wand of Defiance", thingId = 18390, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_Defiance.png"}, description = "You see a wand of defiance (magic level +1). It can only be wielded properly by sorcerers of level 65 or higher. It weighs 37.00 oz. It reveals devastating energy arcs."},
		}
	},
	
	
	--Bows & Crossbows--
	{	name = "Bows & Crossbows",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Bows.png"},
		offers = {
			{name = "Rift Bow", thingId = 25522, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_RiftBow.png"}, description = "You see a rift bow (Range:7, Atk+5, Hit%+3). It can only be wielded properly by paladins of level 120 or higher. It weighs 130.00 oz."},
			{name = "Rift Crossbow", thingId = 25523, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, state = GameStore.States.STATE_NEW, price = 12, icons = {"Product_Item_RiftCrossbow.png"}, description = "You see a rift crossbow (Range:5, Atk+5, Hit%+4). It can only be wielded properly by paladins of level 120 or higher. It weighs 130.00 oz."},
			{name = "Crystal Crossbow", thingId = 18453, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_CrystalCrossbow.png"}, description = "You see a crystal crossbow (Range:6, Atk+4, Hit%+3). It can only be wielded properly by paladins of level 90 or higher. It weighs 84.00 oz."},
			{name = "Mycological Bow", thingId = 18454, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_MycoBow.png"}, description = "You see a mycological bow (Range:6, Atk+4, Hit%+4). It can only be wielded properly by paladins of level 105 or higher. It weighs 49.00 oz."},
			{name = "Umbral bow", thingId = 22417, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralBow.png"}, description = "You see a umbral bow (Range:7, Atk+4, Hit%+5). It can only be wielded properly by paladins of level 150 or higher. It weighs 45.00 oz."},
			{name = "Umbral Crossbow", thingId = 22420, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 8, icons = {"Product_Item_UmbralCrossbow.png"}, description = "You see a umbral crossbow (Range:5, Atk+6, Hit%+2). It can only be wielded properly by paladins of level 150 or higher. It weighs 125.00 oz."},
			{name = "Umbral Master bow", thingId = 22418, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterBow.png"}, description = "You see a umbral master bow (Range:7, Atk+6, Hit%+5, distance fighting +3). It can only be wielded properly by players of level 250 or higher. It weighs 40.00 oz."},
			{name = "Umbral Master Crossbow", thingId = 22421, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 12, icons = {"Product_Item_MasterCrossbow.png"}, description = "You see a umbral master crossbow (Range:5, Atk+9, Hit%+4, distance fighting +3). It can only be wielded properly by players of level 250 or higher. It weighs 120.00 oz."},
			
		}
	},
	--Outfits--
	{	name = "Outfits",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Outfits.png"},
		offers = {
			{name = "Philosopher", thingId = {male=874,female=873}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, state = GameStore.States.STATE_NEW, price = 35, icons = {"Product_Outfit_Professor_Male_Full.png", "Product_Outfit_Professor_Female_Full.png"}, description = " Bonus: Magic Level: +4 Melee: +4 Max Hp: +300 Max Mana: +300 Speed: +80"},			
			{name = "Sea Dog", thingId = {male=750,female=749}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, state = GameStore.States.STATE_NEW, price = 40, icons = {"Product_Outfit_SeaDog_Male_Full.png", "Product_Outfit_SeaDog_Female_Full.png"}, description = " Bonus: Magic Level: +2 Shielding: +2 Max Hp: +300 Max Mana: +300 Speed: +60"},	
			{name = "Winter Warden", thingId = {male=853,female=852}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, state = GameStore.States.STATE_NEW, price = 40, icons = {"Product_Outfit_WinterWarden_Male_Full.png", "Product_Outfit_WinterWarden_Female_Full.png"}, description = " Bonus: Magic Level: +4 Max Hp: +300 Max Mana: +300 Speed: +80"},			
			{name = "Royal Pumpkin", thingId = {male=760,female=759}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, state = GameStore.States.STATE_NEW, price = 80, icons = {"Product_Outfit_RoyalPumpkin_Male_Full.png", "Product_Outfit_RoyalPumpkin_Female_Full.png"}, description = " Bonus: Max Hp: +500 Max Mana: +500 Speed: +80"},			
			{name = "Arena Champion", thingId = {male=884,female=885}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, state = GameStore.States.STATE_NEW, price = 80, icons = {"Product_Outfit_ArenaChampion_Male_Full.png", "Product_Outfit_ArenaChampion_Female_Full.png"}, description = " Bonus: Melee: +5 Max Hp: +500 Max Mana: +500 Speed: +100"},			
			{name = "Lupine Warden", thingId = {male=899,female=900}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, state = GameStore.States.STATE_NEW, price = 80, icons = {"Product_Outfit_LupinWarden_male_Full.png", "Product_Outfit_LupinWarden_female_Full.png"}, description = " Bonus: Magic Level: +5 Melee: +5 Max Hp: +500 Max Mana: +500 Speed: +100"},			
			{name = "Barbarian", thingId = {male=143,female=147}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 20, icons = {"Product_Outfit_Barbarian_Male_Full.png", "Product_Outfit_Barbarian_Female_Full.png"}, description = " Bonus: Axe Fighting: +1 Speed: +20"},
			{name = "Druid", thingId = {male=144,female=148}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 20, icons = {"Product_Outfit_Druid_Male_Full.png", "Product_Outfit_Druid_Female_Full.png"}, description = " Bonus: Magic Level: +1 Speed: +20"},
			{name = "Brotherhood", thingId = {male=278,female=279}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 20, icons = {"Product_Outfit_Brotherhood_Male_Full.png", "Product_Outfit_Brotherhood_Female_Full.png"}, description = " Bonus: Magic Level: +2 Max Hp: +200 Speed: +20"},
			{name = "Entrepreneur", thingId = {male=472,female=471}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 20, icons = {"Product_Outfit_Entrepreneur_Male_Full.png", "Product_Outfit_Entrepreneur_Female_Full.png"}, description = " Bonus: Speed: +100"},
			{name = "Warrior", thingId = {male=134,female=142}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 22, icons = {"Product_Outfit_Warrior_Male_Full.png", "Product_Outfit_Warrior_Female_Full.png"}, description = " Bonus: Sword Fighting: +1 Speed: +20"},
			{name = "Assassin", thingId = {male=152,female=156}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 25, icons = {"Product_Outfit_Assassin_Male_Full.png", "Product_Outfit_Assassin_Female_Full.png"}, description = " Bonus: Magic Level +3 Max Hp -100 Speed +20"},
			{name = "Ceremonial Garb", thingId = {male=695,female=694}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 25, icons = {"Product_Outfit_CeremonialGarb_Male_Full.png", "Product_Outfit_CeremonialGarb_Female_Full.png"}, description = " Bonus: Magic Level: +4 Shielding: +4 Speed: +60"},
			{name = "Puppeteer", thingId = {male=697,female=696}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 25, icons = {"Product_Outfit_Puppeteer_Male_Full.png", "Product_Outfit_Puppeteer_Female_Full.png"}, description = " Bonus: Magic Level: +4 Shielding: +2 Max Mana: +200 Speed: +60"},
			{name = "Dream Warden", thingId = {male=577,female=578}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 25, icons = {"Product_Outfit_DreamWarden_Male_Full.png", "Product_Outfit_DreamWarden_Female_Full.png"}, description = " Bonus: Melee: +4 Magic Level: +4 Speed: +20"},
			{name = "Glooth Engineer", thingId = {male=610,female=618}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 25, icons = {"Product_Outfit_GloothEngineer_Male_Full.png", "Product_Outfit_GloothEngineer_Female_Full.png"}, description = " Bonus: Melee: +2 Magic Level: +2 Max Hp: +100 Max Mana: +100 Speed: +20"},
			{name = "Champion", thingId = {male=633,female=632}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 25, icons = {"Product_Outfit_Champion_Male_Full.png", "Product_Outfit_Champion_Female_Full.png"}, description = " Bonus: Melee: +4 Shielding: +4 Speed: +60"},
			{name = "Chaos Acolyte", thingId = {male=665,female=664}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 30, icons = {"Product_Outfit_ChaosAcolyte_Male_Full.png", "Product_Outfit_ChaosAcolyte_Female_Full.png"}, description = " Bonus: Magic Level: +3 Max Mana: +600 Speed: +60"},
			{name = "Seaweaver", thingId = {male=733,female=732}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 30, icons = {"Product_Outfit_SeaWeaver_Male_Full.png", "Product_Outfit_SeaWeaver_Female_Full.png"}, description = " Bonus: Melee: +6 Speed: +80"},
			{name = "Recruiter", thingId = {male=746,female=745}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 30, icons = {"Product_Outfit_Recruiter_Male_Full.png", "Product_Outfit_Recruiter_Female_Full.png"}, description = " Bonus: Melee: +6 Speed: +80"},
			{name = "Evoker", thingId = {male=725,female=724}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 30, icons = {"Product_Outfit_Evoker_Male_Full.png", "Product_Outfit_Evoker_Female_Full.png"}, description = " Bonus: Magic Level: +2 Shielding: +2 Max Hp: +300 Max Mana: +300 Speed: +60"},
			{name = "Beastmaster", thingId = {male=637,female=636}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 35, icons = {"Product_Outfit_Beastmaster_Male_Full.png", "Product_Outfit_Beastmaster_Female_Full.png"}, description = " Bonus: Magic Level: +3 Max Hp: +100 Max Mana: +400 Speed: +60"},
			{name = "Death Herald", thingId = {male=667,female=666}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 40, icons = {"Product_Outfit_DeathHerald_Male_Full.png", "Product_Outfit_DeathHerald_Female_Full.png"}, description = " Bonus: Distance Fighting: +6 Max Hp: +100 Max Mana: +100 Speed: +60"},
			{name = "Mage", thingId = {male=130,female=138}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 50, icons = {"Product_Outfit_Mage_Male_Full.png", "Product_Outfit_Mage_Female_Full.png"}, description = " Bonus: Magic Level: +6 Shielding: +2 Speed: +60"},
			{name = "Spirit Caller", thingId = {male=699,female=698}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 50, icons = {"Product_Outfit_SpiritCaller_Male_Full.png", "Product_Outfit_SpiritCaller_Female_Full.png"}, description = " Bonus: Magic Level: +6 Shielding: +2 Speed: +60"},
			{name = "Conjurer", thingId = {male=634,female=635}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 60, icons = {"Product_Outfit_Conjurer_Male_Full.png", "Product_Outfit_Conjurer_Female_Full.png"}, description = " Bonus: Magic Level: +8 Speed: +60"},
			{name = "Ranger", thingId = {male=684,female=683}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 60, icons = {"Product_Outfit_Ranger_Male_Full.png", "Product_Outfit_Ranger_Female_Full.png"}, description = " Bonus: Distance Fighting: +8 Speed: +60"},
				
		}
	},
	
	--Mounts--
	{	name = "Mounts",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_Mounts.png"},
		offers = {
		
			{name = "Ivory Fang", thingId = 101, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, state = GameStore.States.STATE_NEW, icons = {"Product_Mount_WolfMount_v1.png"}, description = "Here you can purchase the Mount Ivory Fang for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Shadow Claw", thingId = 102, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, state = GameStore.States.STATE_NEW, icons = {"Product_Mount_WolfMount_v2.png"}, description = "Here you can purchase the Mount Neon Shadow Claw for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Snow Pelt", thingId = 103, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, state = GameStore.States.STATE_NEW, icons = {"Product_Mount_WolfMount_v3.png"}, description = "Here you can purchase the Mount Snow Pelt for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Sparkion", thingId = 94, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, state = GameStore.States.STATE_NEW, icons = {"Sparkion.png"}, description = "Here you can purchase the Mount Sparkion for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Neon Sparkid", thingId = 95, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, state = GameStore.States.STATE_NEW, icons = {"NeonSparkid.png"}, description = "Here you can purchase the Mount Neon Sparkid for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Vortexion", thingId = 96, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, state = GameStore.States.STATE_NEW, icons = {"Vortexion.png"}, description = "Here you can purchase the Mount Vortexion for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Death Crawler", thingId = 46, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 60, icons = {"Product_Mount_DeathCrawler.png"}, description = "Here you can purchase the Mount Death Crawler for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Flamesteed", thingId = 47, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 90, icons = {"Product_Mount_Flamesteed.png"}, description = "Here you can purchase the Mount Flamesteed for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Jade Lion", thingId = 48, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 45, icons = {"Product_Mount_JadeLion.png"}, description = "Here you can purchase the Mount Jade Lion for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Jade Pincer", thingId = 49, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 60, icons = {"Product_Mount_JadePincer.png"}, description = "Here you can purchase the Mount Jade Pincer for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Nethersteed", thingId = 50, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 90, icons = {"Product_Mount_Nethersteed.png"}, description = "Here you can purchase the Mount Nethersteed for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Tempest", thingId = 51, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 90, icons = {"Product_Mount_Tempest.png"}, description = "Here you can purchase the Mount Tempest for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Winter King", thingId = 52, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 45, icons = {"Product_Mount_WinterKing.png"}, description = "Here you can purchase the Mount Winter King for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Doombringer", thingId = 53, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 78, icons = {"Product_Mount_Doombringer.png"}, description = "Here you can purchase the Mount Doombringer for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Woodland Prince", thingId = 54, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 78, icons = {"Product_Mount_WoodlandPrince.png"}, description = "Here you can purchase the Mount Woodland Prince for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Hailtorm Fury", thingId = 55, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 78, icons = {"Product_Mount_HailstormFury.png"}, description = "Here you can purchase the Mount Hailstorm Fury for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Siegebreaker", thingId = 56, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 69, icons = {"Product_Mount_Siegebreaker.png"}, description = "Here you can purchase the Mount Siegebreaker for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Poisonbane", thingId = 57, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 69, icons = {"Product_Mount_Poisonbane.png"}, description = "Here you can purchase the Mount Poisonbane for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Blackpelt", thingId = 58, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 69, icons = {"Product_Mount_Blackpelt.png"}, description = "Here you can purchase the Mount Blackpelt for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Golden Dragonfly", thingId = 59, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 60, icons = {"Product_Mount_GoldenDragonfly.png"}, description = "Here you can purchase the Mount Golden Dragonfly for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Steel Bee", thingId = 60, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 60, icons = {"Product_Mount_SteelBee.png"}, description = "Here you can purchase the Mount Steel Bee for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Copper Fly", thingId = 61, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 60, icons = {"Product_Mount_CopperFly.png"}, description = "Here you can purchase the Mount Copper Fly for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Tundra Rambler", thingId = 62, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_TundraRambler.png"}, description = "Here you can purchase the Mount Tundra Rambler for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Highland Yak", thingId = 63, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_HighlandYak.png"}, description = "Here you can purchase the Mount Highland Yak for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Glacier Vagabond", thingId = 64, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_GlacierVagabond.png"}, description = "Here you can purchase the Mount Glacier Vagabond for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Flying Divan", thingId = 65, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 90, icons = {"Product_Mount_FlyingDivan.png"}, description = "Here you can purchase the Mount Flying Divan for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Magic Carpet", thingId = 66, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 90, icons = {"Product_Mount_MagicCarpet.png"}, description = "Here you can purchase the Mount Magic Carpet for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Floating Kashmir", thingId = 67, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 90, icons = {"Product_Mount_FloatingKashmir.png"}, description = "Here you can purchase the Mount Floating Kashmir for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Ringtail Waccoon", thingId = 68, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_RingtailWaccoon.png"}, description = "Here you can purchase the Mount Ringtail Waccoon for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Night Waccoon", thingId = 69, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_NightWaccoon.png"}, description = "Here you can purchase the Mount Night Waccoon for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Emerald Waccoon", thingId = 70, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_EmeraldWaccoon.png"}, description = "Here you can purchase the Mount Emerald Waccoon for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Shadow Hart", thingId = 72, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 66, icons = {"Product_Mount_ShadowHart.png"}, description = "Here you can purchase the Mount Shadow Hart for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Black Stag", thingId = 73, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 66, icons = {"Product_Mount_BlackStag.png"}, description = "Here you can purchase the Mount BlackStag for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Emperor Deer", thingId = 74, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 66, icons = {"Product_Mount_EmperorDeer.png"}, description = "Here you can purchase the Mount Emperor Deer for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Flitterkatzen", thingId = 75, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 87, icons = {"Product_Mount_Flitterkatzen.png"}, description = "Here you can purchase the Mount Flitterkatzen for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Venompaw", thingId = 76, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 87, icons = {"Product_Mount_Venompaw.png"}, description = "Here you can purchase the Mount Venompaw for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Batcat", thingId = 77, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 87, icons = {"Product_Mount_BatCat.png"}, description = "Here you can purchase the Mount Batcat for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Sea Devil", thingId = 78, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 57, icons = {"Product_Mount_SeaDevil.png"}, description = "Here you can purchase the Mount Sea Devil for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Coralripper", thingId = 79, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 57, icons = {"Product_Mount_Coralripper.png"}, description = "Here you can purchase the Mount Coralripper for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Plumfish", thingId = 80, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 57, icons = {"Product_Mount_Plumfish.png"}, description = "Here you can purchase the Mount Plumfish for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Gorongra", thingId = 81, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 72, icons = {"Product_Mount_Gorongra.png"}, description = "Here you can purchase the Mount Gorongra for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Noctungra", thingId = 82, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 72, icons = {"Product_Mount_Noctungra.png"}, description = "Here you can purchase the Mount Noctungra for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Silverneck", thingId = 83, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 72, icons = {"Product_Mount_Silverneck.png"}, description = "Here you can purchase the Mount Silverneck for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Slagsnare", thingId = 84, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 78, icons = {"Product_Mount_Slagsnare.png"}, description = "Here you can purchase the Mount Slagsnare for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Nightstinger", thingId = 85, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 78, icons = {"Product_Mount_Nightstinger.png"}, description = "Here you can purchase the Mount Nightstinger for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Razorcreep", thingId = 86, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 78, icons = {"Product_Mount_Razorcreep.png"}, description = "Here you can purchase the Mount Razorcreep for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Nightdweller", thingId = 88, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 87, icons = {"Product_Mount_Nightdweller.png"}, description = "Here you can purchase the Mount Nightdweller for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Frostflare", thingId = 89, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 87, icons = {"Product_Mount_Frostflare.png"}, description = "Here you can purchase the Mount Frostflare for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Cinderhoof", thingId = 90, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 87, icons = {"Product_Mount_Cinderhoof.png"}, description = "Here you can purchase the Mount Cinderhoof for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Bloodcurl", thingId = 92, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_Bloodcurl.png"}, description = "Here you can purchase the Mount Bloodcurl for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Leafscuttler", thingId = 93, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_Leafscuttler.png"}, description = "Here you can purchase the Mount Leafscuttler for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Mouldpincer", thingId = 91, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 75, icons = {"Product_Mount_Mouldpincer.png"}, description = "Here you can purchase the Mount Mouldpincer for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Swamp Snapper", thingId = 97, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 69, icons = {"Product_Mount_SwampSnapper.png"}, description = "Here you can purchase the Mount Swamp Snapper for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Mould Shell", thingId = 98, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 69, icons = {"Product_Mount_MouldShell.png"}, description = "Here you can purchase the Mount Mould Shell for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
			{name = "Reed Lurker", thingId = 99, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 69, icons = {"Product_Mount_ReedLurker.png"}, description = "Here you can purchase the Mount Reed Lurker for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			
		}
	},
	
{	name = "Other Items",
		state = GameStore.States.STATE_NEW,
		icons = {"Category_PremiumTime.png"},
		offers = {
			{name = "Gold Tokens", thingId = 25337, count = 50, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, state = GameStore.States.STATE_NEW, price = 50, icons = {"Product_Item_GoldToken.png"}, description = "Can be exchanged with Yana for various weapons that can be enchanted with special bonuses by exchanging more of these tokens."},			
			{name = "Gold Tokens", thingId = 25337, count = 100, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, state = GameStore.States.STATE_NEW, price = 75, icons = {"Product_Item_GoldToken.png"}, description = "Can be exchanged with Yana for various weapons that can be enchanted with special bonuses by exchanging more of these tokens."},			
			{name = "Silver Tokens", thingId = 25172, count = 50, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, state = GameStore.States.STATE_NEW, price = 50, icons = {"Product_Item_SilverToken.png"}, description = "Can be exchanged with Cledwyn for various armours providing both a skill and a resistance bonus."},			
			{name = "Silver Tokens", thingId = 25172, count = 100, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, state = GameStore.States.STATE_NEW, price = 75, icons = {"Product_Item_SilverToken.png"}, description = "Can be exchanged with Cledwyn for various armours providing both a skill and a resistance bonus."},
			{name = "Major crystalline tokens", thingId = 18423, count = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 20, icons = {"Product_Item_MajorToken.png"}, description = "These can be traded for outfit items, equipment and some other items with Gnomally."},			
			{name = "Major crystalline tokens", thingId = 18423, count = 25, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 40, icons = {"Product_Item_MajorToken.png"}, description = "These can be traded for outfit items, equipment and some other items with Gnomally."},			
			{name = "Minor crystalline tokens", thingId = 18422, count = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 40, icons = {"Product_Item_MinorToken.png"}, description = "They can be traded for reputation points (5 points per token), outfit items, equipment and some other items with Gnomally"},			
			{name = "Stamina Refiller", thingId = 12544, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 20, icons = {"Product_Item_StaminaRefiller.png"}, description = "Refill your stamina to 100% (1 charge)."},			
			{name = "30x Tibia Coins", thingId = 16101, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 35, icons = {"Product_Item_TibiaCoin.png"}, description = "Using this item will add 10 Tibia Coins to your account once. (Useful to trade ingame)"},			
			{name = "Crystal Coins", thingId = 2160, count = 100, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 20, icons = {"Product_Item_CrystalCoin50.png"}, description = "Be rich today!"},			
			{name = "Crystal Coins", thingId = 2160, count = 250, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 42, icons = {"Product_Item_CrystalCoin100.png"}, description = "Be rich today!"},			
			{name = "Zaoan Chess Box", thingId = 20620, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 22, icons = {"Product_Item_ZaoanBox.png"}, description = "This chess box is made of jade and obsidian. It will hold a full set of 32 Zaoan chess figures."},
			
		}
	},
	
	 {	name = "Services",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_ExtraServices.png"},
		offers = {
			-- NameChange example
			{name = "Character Name Change", type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE, price = 25, icons = {"Product_CharacterNameChange.png"}, description = "Tired of your current character name? Here you can purchase a new one. Note that also your new name must follow the naming conventions stated in the Memoria Ots Rules or your character might get namelocked. In case your newly selected name is not available, the purchase will be cancelled and no Tibia Coins will be charged. In this case, you can simply try once more with another new name."},
			-- Sexchange example
			{name = "Character Sex Change", type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE, price = 12, icons = {"Product_CharacterSexChange.png"}, description = "If you are playing a male character, but would rather play a female one - or vice versa, you can purchase a Character Sex Change. All outfits that you have purchased or earned by completing quests will of course still be available after you changed your character's sex."},
			-- Promotion example
--			{name = "First Promotion", thingId = 1--[[ed/ms/rp/ek]], type = GameStore.OfferTypes.OFFER_TYPE_PROMOTION, price = 5, icons = {"Product_FirstPromotion.png"}}
		}
	},
}

-- For Explanation and information
-- view the readme.md file in github or via markdown viewer.

-- Non-Editable
local runningId = 1
for k, category in ipairs(GameStore.Categories) do
	if category.offers then
		for m, offer in ipairs(category.offers) do
			offer.id = runningId
			runningId = runningId + 1
			
			if not offer.type then
				offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
			end
		end
	end
end