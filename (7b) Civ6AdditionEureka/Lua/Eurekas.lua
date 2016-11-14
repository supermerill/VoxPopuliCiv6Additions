-- eurekas.lua
-- Author: merill
-- DateCreated: 11/9/2016 8:08:46 PM
--------------------------------------------------------------
print("$$ Eurekas is loading $$");

include("PlotIterators")
include("EurekaLib")


GameEvents.PlayerDoTurn.Add(function(iPlayer)
print(string.format("PlayerDoTurn ! "));
-- euraka that are re-computed at the begining of the turn (ex: gold/t)
if(iPlayer >=0) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	
	-- max culture per turn for Drama
	MaxEureka(pPlayer, pTeamTech, GameInfo.Technologies.TECH_DRAMA.ID, pPlayer:GetTotalJONSCulturePerTurn(), 15);
		

	-- cs friends for philosophy
	-- cs ally for CIVIL_SERVICE
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_PHILOSOPHY.ID) 
	or not pTeamTech:HasTech(GameInfo.Technologies.CIVIL_SERVICE.ID)) then
		local nbFriends = 0
		local nbAlly = 0
		for i = 0, GameDefines.MAX_PLAYERS - 1 do
			if i ~= iPlayer then
				if Players[i]:IsMinorCiv() then
					local status = Players[i]:GetMinorCivFriendshipLevelWithMajor(iPlayer)
					if 0 < status then
						nbFriends = nbFriends +1
						if 1 < status then
						nbAlly = nbAlly +1
					end
					end
				end
			end
		end
		MaxEureka(pPlayer, pTeamTech, GameInfo.Technologies.TECH_PHILOSOPHY.ID, nbFriends, 5);
		MaxEureka(pPlayer, pTeamTech, GameInfo.Technologies.TECH_CIVIL_SERVICE.ID, nbAlly, 4);
	end

	-- max income per turn for CURRENCY
	MaxEureka(pPlayer, pTeamTech, GameInfo.Technologies.TECH_CURRENCY.ID, pPlayer:CalculateGoldRate(), 30);

end
end);


GameEvents.TileFeatureChanged.Add(function(x, y, iPlayer, iFeature, eNewFeature)
if(iPlayer >=0 and iFeature == FeatureTypes.FEATURE_FOREST and eNewFeature == FeatureTypes.NO_FEATURE) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	-- nbForest cleared for metal casting
	IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_METAL_CASTING.ID, 1, 6);
end
end);

GameEvents.GreatPersonExpended.Add(function(iPlayer, iUnit, iUnitTypeBad, iX, iY)
print("EEEEE Eurekas !! GreatPersonExpended!".. iPlayer);
if(iPlayer >=0 and iUnit >=0)then 
	local pPlayer = Players[iPlayer];
	local pUnit = pPlayer:GetUnitByID(iUnit);
	local iUnitType = pUnit:GetUnitType();
print("EEEEE Eurekas !! GreatPersonExpended! type = ".. iUnitType);
	-- nbGreat engineer used for ENGINEERING
	if(iUnitType == GameInfo.Units.UNIT_ENGINEER.ID) then
		local pPlayer = Players[iPlayer];
		local pTeam = Teams[pPlayer:GetTeam()];
		local pTeamTech = pTeam:GetTeamTechs();
		IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_ENGINEERING.ID, 1, 2);
	end
	-- nbGreat scientist used for education
	if(iUnitType == GameInfo.Units.UNIT_SCIENTIST.ID) then
		local pPlayer = Players[iPlayer];
		local pTeam = Teams[pPlayer:GetTeam()];
		local pTeamTech = pTeam:GetTeamTechs();
		IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_EDUCATION.ID, 1, 2);
	end
end
end);

GameEvents.CityTrained.Add(function(iPlayer, iCity, iUnit, bGoldBuy, bFaithBuy)
if(iPlayer >=0 and iUnit>=0) then
	local pPlayer = Players[iPlayer];
	local pUnit = pPlayer:GetUnitByID(iUnit);
	local iUnitType = pUnit:GetUnitType();
	print(string.format("CityTrained unit %s",pUnit:GetName()));
	--scout for trapping now tundra
	--if(iUnitType == GameInfo.Units.UNIT_SCOUT.ID or iUnitType == GameInfo.Units.UNIT_SHOSHONE_PATHFINDER.ID) then 
	--	IncrementEureka(pPlayer, GameInfo.Technologies.TECH_TRAPPING.ID, 3);
	--end
	--workers for animal husbandery now unfeatured hill
	--if(iUnitType == GameInfo.Units.UNIT_WORKER.ID) then 
	--	IncrementEureka(pPlayer, GameInfo.Technologies.TECH_EDUCATION.ID, 3);
	--end
	--warriors for mining now mine lux
	--if(iUnitType == GameInfo.Units.UNIT_WARRIOR.ID or iUnitType == GameInfo.Units.UNIT_AZTEC_JAGUAR.ID) then 
	--	IncrementEureka(pPlayer, GameInfo.Technologies.TECH_MINING.ID, 5);
	--end
	--archers for military training
	if(iUnitType == GameInfo.Units.UNIT_ARCHER.ID or iUnitType == GameInfo.Units.UNIT_INCAN_SLINGER.ID) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_ARCHERY.ID, 6);
	end
	-- fishing boat for sailing
	if(iUnitType == GameInfo.Units.UNIT_WORKBOAT.ID) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_OPTICS.ID, 6);
	end
	-- SPEARMAN for iron working
	if(iUnitType == GameInfo.Units.UNIT_SPEARMAN.ID or iUnitType == GameInfo.Units.UNIT_GREEK_HOPLITE.ID or iUnitType == GameInfo.Units.UNIT_CELT_PICTISH_WARRIOR.ID ) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_IRON_WORKING.ID, 6);
	end
	-- MISSIONARY for theology (bFaithBuy = true)
	if(iUnitType == GameInfo.Units.UNIT_MISSIONARY.ID) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_THEOLOGY.ID, 5);
	end
	-- Catapult for physics
	if(iUnitType == GameInfo.Units.UNIT_CATAPULT.ID) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_PHYSICS.ID, 5);
	end
	-- swordsman for steel
	if(iUnitType == GameInfo.Units.UNIT_SWORDSMAN.ID or iUnitType == GameInfo.Units.UNIT_JAPANESE_SAMURAI.ID 
	or iUnitType == GameInfo.Units.UNIT_KRIS_SWORDSMAN.ID or iUnitType == GameInfo.Units.UNIT_ROMAN_LEGION.ID) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_STEEL.ID, 6);
	end
	-- warboats for compass
	if(iUnitType == GameInfo.Units.UNIT_TRIREME.ID or iUnitType == GameInfo.Units.UNIT_CARTHAGINIAN_QUINQUEREME.ID 
	or iUnitType == GameInfo.Units.UNIT_BYZANTINE_DROMON.ID or iUnitType == GameInfo.Units.UNIT_GALLEASS.ID 
	or iUnitType == GameInfo.Units.UNIT_VENETIAN_GALLEASS.ID ) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_COMPASS.ID, 6);
	end
	-- comosite bowman for TECH_MACHINERY
	if(iUnitType == GameInfo.Units.UNIT_COMPOSITE_BOWMAN.ID or iUnitType == GameInfo.Units.UNIT_MAYAN_ATLATLIST.ID 
	or iUnitType == GameInfo.Units.UNIT_BABYLONIAN_BOWMAN.ID) then 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_MACHINERY.ID, 4);
	end
end
end);

GameEvents.CityConstructed.Add(function(iPlayer, iCity, iBuilding, bGoldBuy, bFaithBuy)
if(iPlayer >=0 and iBuilding>=0) then
	local pPlayer = Players[iPlayer];
	local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
	-- shrine and monument for wheel now jungle
	--if(iBuilding == GameInfo.Buildings.BUILDING_SHRINE.ID or iBuilding == GameInfo.Buildings.BUILDING_MONUMENT.ID
	-- or iBuilding == GameInfo.Buildings.BUILDING_MONUMENT.ID or iBuilding == GameInfo.Buildings.BUILDING_STELE.ID) then 
	--	IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_THE_WHEEL.ID, 1, 3);
	--end
	-- buildings for construction (named masonery, but it's construction) -- now quarry lux
	--if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_MASONRY.ID)) then
	--	IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_MASONRY.ID, 1, 10);
	--end
	-- market for mathematics
	if(iBuilding == GameInfo.Buildings.BUILDING_MARKET.ID or iBuilding == GameInfo.Buildings.BUILDING_BAZAAR.ID) then 
		IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_MATHEMATICS.ID, 1, 3);
	end
	-- walls for chivalery
	if(iBuilding == GameInfo.Buildings.BUILDING_WALLS.ID or iBuilding == GameInfo.Buildings.BUILDING_WALLS_OF_BABYLON.ID) then 
		IncrementEurekaGuarded(pPlayer, pTeamTech, GameInfo.Technologies.TECH_CHIVALRY.ID, 1, 5);
	end
end
end);

--GameEvents.PlayerAdoptPolicyBranch.Add(function(iPlayer, iPolicy)
--if(iPlayer >=0 and iPolicy>=0) then
--	-- number of policies for pottery -- now wheat
--	IncrementEureka(Players[iPlayer], GameInfo.Technologies.TECH_POTTERY.ID, 3);
--end
--end);

--GameEvents.PlayerAdoptPolicy.Add(function(iPlayer, iPolicy)
--if(iPlayer >=0 and iPolicy>=0) then
--	-- number of policies for pottery  -- now wheat
--	IncrementEureka(Players[iPlayer], GameInfo.Technologies.TECH_POTTERY.ID, 3);
--end
--end);

GameEvents.PlayerCityFounded.Add(function(iPlayer, iPlotX, iPlotY)
if(iPlayer >=0 and iPlotX >=0 and iPlotY >=0) then
	local pPlayer = Players[iPlayer];
	local pCity = Map.GetPlot(iPlotX, iPlotY):GetPlotCity();
	local pTeam = Teams[pPlayer:GetTeam()];
	-- number of coastal city for fishing
	if(pCity:IsCoastal(0)) then
		-- (note: TECH_SAILING => fishing and TECH_OPTICS => sailing) 
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_SAILING.ID, 3);
	end
	-- count nb of thing near founded cities (at 2 hex)
	local nbLuxPlant = 0;
	local nbLux = 0;
	local nbForest = 0;
	local nbDesert = 0;
	local nbMountain = 0;
	local nbTundra = 0;
	local nbWheat = 0;
	local nbJungle = 0;
	local nbHills = 0;
	local nbMineLux = 0;
	local nbQuarryLux = 0;
	for pAreaPlot in PlotAreaSpiralIterator(pCity:Plot(), 2) do
		local iResourceType = pAreaPlot:GetResourceType(pPlayer:GetTeam());
		local terrainType = pAreaPlot:GetTerrainType();
		local featureType = pAreaPlot:GetFeatureType();
		local iResourceUsageType = -1;
		if(iResourceType >=0) then
			iResourceUsageType = Game.GetResourceUsageType(iResourceType);
		end
		if(pAreaPlot:CanHaveImprovement(GameInfo.Improvements.IMPROVEMENT_PLANTATION.ID, pTeam:GetID())
			and iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then 
			nbLuxPlant = nbLuxPlant + 1;
		end
		if(featureType == FeatureTypes.FEATURE_FOREST) then 
			nbForest = nbForest + 1;
		end
		if(featureType == FeatureTypes.FEATURE_JUNGLE) then 
			nbJungle = nbJungle + 1;
		end
		if(terrainType == TerrainTypes.TERRAIN_DESERT) then 
			nbDesert = nbDesert + 1;
		end
		if(terrainType == TerrainTypes.TERRAIN_MOUNTAIN) then 
			nbMountain = nbMountain + 1;
		end
		if(terrainType == TerrainTypes.TERRAIN_TUNDRA) then 
			nbTundra = nbTundra + 1;
		end
		if(pAreaPlot:IsHills() and iResourceUsageType ~= ResourceUsageTypes.RESOURCEUSAGE_LUXURY and featureType == FeatureTypes.NO_FEATURE) then 
			nbHills = nbHills + 1;
		end
		if(iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then
			nbLux = nbLux + 1;
		end
		if(iResourceType == 6) then --ResourceTypes.RESOURCE_WHEAT) then
			nbWheat = nbWheat + 1;
		end
		if(pAreaPlot:CanHaveImprovement(GameInfo.Improvements.IMPROVEMENT_MINE.ID, pTeam:GetID())
			and iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then
			nbMineLux = nbMineLux + 1;
		end
		if(pAreaPlot:CanHaveImprovement(GameInfo.Improvements.IMPROVEMENT_QUARRY.ID, pTeam:GetID())
			and iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then
			nbQuarryLux = nbQuarryLux + 1;
		end
		
	end
	if(nbTundra>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_TRAPPING.ID, nbTundra, 6);
	end
	if(nbWheat>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_POTTERY.ID, nbWheat, 3);
	end
	if(nbJungle>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_THE_WHEEL.ID, nbJungle, 6);
	end
	if(nbHills>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_ANIMAL_HUSBANDRY.ID, nbHills, 10);
	end
	if(nbMineLux>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_MINING.ID, nbMineLux, 5);
	end
	if(nbQuarryLux>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_MASONRY.ID, nbQuarryLux, 3);
	end
	--number of nearby plantation lux at 2 hex of a new city for CALENDAR
	if(nbLuxPlant>0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_CALENDAR.ID, nbLuxPlant, 5);
	end
	--number of nearby desert & montains at 2 hex of a new city for trading
	if(nbDesert+nbMountain > 0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_HORSEBACK_RIDING.ID, nbMountain+nbMountain+nbDesert, 15);
	end
	--number of nearby forest at 2 hex of a new city for Bronze
	if(nbForest > 0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_BRONZE_WORKING.ID, nbForest, 15);
	end
	--number of fresh water city for masonery
	if(pCity:Plot():IsFreshWater()) then
		IncrementEureka(pPlayer, GameInfo.Technologies.TECH_CONSTRUCTION.ID, 3);
	end
	-- number of lux for guilds
	if(nbLux > 0) then
		IncrementEurekaGuarded(pPlayer, pTeam:GetTeamTechs(), GameInfo.Technologies.TECH_GUILDS.ID, nbLux, 15);
	end
end
end);

GameEvents.TeamTechResearched.Add(function(iTeam, iTech, iChange)
print("EEEEE Eurekas !! " .. iTeam .. " tech researched! ".. iTech);
if(iTeam >= 0 and iTech >= 0) then
	local pTeam = Teams[iTeam];
	-- number of classical era tech for writing
	if(iTech == GameInfo.Technologies.TECH_OPTICS.ID or
	iTech == GameInfo.Technologies.TECH_MATHEMATICS.ID or
	iTech == GameInfo.Technologies.TECH_CONSTRUCTION.ID or
	iTech == GameInfo.Technologies.TECH_IRON_WORKING.ID or
	iTech == GameInfo.Technologies.TECH_CURRENCY.ID or
	iTech == GameInfo.Technologies.TECH_METAL_CASTING.ID) then
		print("EEEEE Eurekas !! for writing ".. iTech);
		local iTech = GameInfo.Technologies.TECH_WRITING.ID;
		local pTeamTech = pTeam:GetTeamTechs();
		if(not pTeamTech:HasTech(iTech)) then
			local nbEureka = pTeamTech:GetEurekaCounter(iTech);
			if(nbEureka < 6) then
				pTeamTech:SetEurekaCounter(iTech, nbEureka + 1);
				local pTechInfo = GameInfo.Technologies[iTech];
				local name = Locale.ConvertTextKey(pTechInfo.Description);
				for id, player in pairs(Players) do
					if player:IsEverAlive() then
						if(player:GetTeam() == iTeam) then
							player:AddNotification(NotificationTypes.NOTIFICATION_EUREKA_UPDATE,
								Locale.ConvertTextKey("TXT_KEY_EUREKA_NOTIFICATION", name, nbEureka+1, 6),
								Locale.ConvertTextKey("TXT_KEY_EUREKA_NOTIFICATION_TITLE"),-1,-1,-1,iTech);
						end
					end
				end
			end
		end
	end
end
end);







