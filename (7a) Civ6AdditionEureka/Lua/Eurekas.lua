-- eurekas
-- Author: meril_000
-- DateCreated: 11/9/2016 8:08:46 PM
--------------------------------------------------------------

print("eurekas logic load ");

include("PlotIterators")

print("eurekas included ");

GameEvents.PlayerDoTurn.Add(function(iPlayer)
print(string.format("PlayerDoTurn ! "));
-- euraka that are re-computed at the begining of the turn (ex: gold in bank)
if(iPlayer >=0) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	
	-- max culture per turn for Drama
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_DRAMA.ID)) then
		local iTech = GameInfo.Technologies.TECH_DRAMA.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		local culturePerTurn = pPlayer:GetTotalJONSCulturePerTurn();
		if(nbEureka<culturePerTurn) then
			pTeamTech:SetEurekaCounter(iTech, math.min(30,culturePerTurn));
		end
	end

	-- cs friends for philosophy
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_PHILOSOPHY.ID)) then
		local nbFriends = 0
		for i = 0, GameDefines.MAX_PLAYERS - 1 do
			if i ~= iPlayer then
				if Players[i]:IsMinorCiv() then
					if 1 == Players[i]:GetMinorCivFriendshipLevelWithMajor(iPlayer) then
						nbFriends = nbFriends +1
					end
				end
			end
		end
		local iTech = GameInfo.Technologies.TECH_PHILOSOPHY.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		local culturePerTurn = pPlayer:GetTotalJONSCulturePerTurn();
		if(nbEureka<nbFriends) then
			pTeamTech:SetEurekaCounter(iTech, math.min(5,nbFriends));
		end
	end

	-- max income per turn for CURRENCY
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_CURRENCY.ID)) then
		local iTech = GameInfo.Technologies.TECH_CURRENCY.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		local goldPerTurn = pPlayer:CalculateGoldRate();
		if(nbEureka<goldPerTurn) then
			pTeamTech:SetEurekaCounter(iTech, math.min(30,goldPerTurn));
		end
	end
end
end);


GameEvents.TileFeatureChanged.Add(function(x, y, iPlayer, iFeature, eNewFeature)
if(iPlayer >=0 and iFeature == FeatureTypes.FEATURE_FOREST and eNewFeature == FeatureTypes.NO_FEATURE) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	-- nbForest cleared for metal casting
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_METAL_CASTING.ID)) then
		local iTech = GameInfo.Technologies.TECH_METAL_CASTING.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<6) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
end
end);

GameEvents.GreatPersonExpended.Add(function(iPlayer, iUnit, iUnitType, iX, iY)
if(iPlayer >=0 and iUnitType == GameInfo.Units.UNIT_ENGINEER.ID) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	-- nbGreat engineer used for ENGINEERING
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_ENGINEERING.ID)) then
		local iTech = GameInfo.Technologies.TECH_ENGINEERING.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<2) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
end
end);

print(string.format("CityTrained registering "));

GameEvents.CityTrained.Add(function(iPlayer, iCity, iUnit, bGoldBuy, bFaithBuy)
			print(string.format("CityTrained!"));
if(iPlayer >=0 and iUnit>=0) then
	local pPlayer = Players[iPlayer];
	local pUnit = pPlayer:GetUnitByID(iUnit);
	local iUnitType = pUnit:GetUnitType();
			print(string.format("CityTrained unit %s",pUnit:GetName()));
	--scout for trapping
	if(iUnitType == GameInfo.Units.UNIT_SCOUT.ID or iUnitType == GameInfo.Units.UNIT_SHOSHONE_PATHFINDER.ID) then 
		local iTech = GameInfo.Technologies["TECH_TRAPPING"].ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		print(string.format("CityTrained scout, trapping cost: %i", pTeamTech:GetResearchCost(iTech)));
		print(string.format("CityTrained scout eureka for trapping: %i",nbEureka));
		if(nbEureka<3) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
		print(string.format("CityTrained scout eureka AFTER for trapping: %i",pTeamTech:GetEurekaCounter(iTech)));
		print(string.format("CityTrained scout, trapping cost AFTER: %i", pTeamTech:GetResearchCost(iTech)));
	end
	--workers for animal husbandery
	if(iUnitType == GameInfo.Units.UNIT_WORKER.ID) then 
		local iTech = GameInfo.Technologies["TECH_ANIMAL_HUSBANDRY"].ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<3) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	--warriors for mining
	if(iUnitType == GameInfo.Units.UNIT_WARRIOR.ID or iUnitType == GameInfo.Units.UNIT_AZTEC_JAGUAR.ID) then 
		local iTech = GameInfo.Technologies["TECH_MINING"].ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<5) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	--archers for military training
	if(iUnitType == GameInfo.Units.UNIT_ARCHER.ID or iUnitType == GameInfo.Units.UNIT_INCAN_SLINGER.ID) then 
		local iTech = GameInfo.Technologies["TECH_HORSEBACK_RIDING"].ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<6) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	-- fishing boat for sailing
	if(iUnitType == GameInfo.Units.UNIT_WORKBOAT.ID) then 
		local iTech = GameInfo.Technologies["TECH_OPTICS"].ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<6) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	-- SPEARMAN for iron working
	if(iUnitType == GameInfo.Units.UNIT_SPEARMAN.ID or iUnitType == GameInfo.Units.UNIT_GREEK_HOPLITE.ID or iUnitType == GameInfo.Units.UNIT_CELT_PICTISH_WARRIOR.ID ) then 
		local iTech = GameInfo.Technologies["TECH_IRON_WORKING"].ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<6) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
end
end);

GameEvents.CityConstructed.Add(function(iPlayer, iCity, iBuilding, bGoldBuy, bFaithBuy)
if(iPlayer >=0 and iBuilding>=0) then
	local pTeamTech = Teams[Players[iPlayer]:GetTeam()]:GetTeamTechs();
	-- shrine and monument for wheel
	if(iBuilding == GameInfo.Buildings.BUILDING_SHRINE.ID or iBuilding == GameInfo.Buildings.BUILDING_MONUMENT.ID) then 
		local iTech = GameInfo.Technologies.TECH_THE_WHEEL.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<3) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	-- buildings for construction (named masonery, but it's construction)
	if(not pTeamTech:HasTech(GameInfo.Technologies.TECH_MASONRY.ID)) then
		local iTech = GameInfo.Technologies.TECH_MASONRY.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<10) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	-- market for mathematics
	if(iBuilding == GameInfo.Buildings.BUILDING_MARKET.ID or iBuilding == GameInfo.Buildings.BUILDING_BAZAAR.ID) then 
		local iTech = GameInfo.Technologies.TECH_MATHEMATICS.ID;
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<3) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
end
end);

GameEvents.PlayerAdoptPolicy.Add(function(iPlayer, iPolicy)
if(iPlayer >=0 and iPolicy>=0) then
	-- number of policies for pottery 
	local iTech = GameInfo.Technologies.TECH_POTTERY.ID;
	local pTeamTech = Teams[Players[iPlayer]:GetTeam()]:GetTeamTechs();
	local nbEureka = pTeamTech:GetEurekaCounter(iTech);
	if(nbEureka<3) then
		pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
	end
end
end);


Events.SerialEventCityCreated.Add( function(vHexPos, iPlayer, iCity, artStyleType, iEra, iContinent, iPopulationSize, iSize, iFogState)
if(iPlayer >=0 and iCity>=0) then
	local pPlayer = Players[iPlayer];
	local pCity = pPlayer:GetCityByID(iCity);
	local pTeam = Teams[pPlayer:GetTeam()];
	-- number of coastal city for fishing
	if(pCity:IsCoastal(0)) then
		-- (note: TECH_SAILING => fishing and TECH_OPTICS => sailing) 
		local iTech = GameInfo.Technologies.TECH_SAILING.ID;
		local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<3) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
	-- count nb of thing near founded cities (at 2 hex)
	local nbLuxPlant = 0
	local nbForest = 0
	local nbDesert = 0
	local nbMountain = 0
	for pAreaPlot in PlotAreaSweepIterator(pCity:Plot(), 2) do
		if(pAreaPlot:GetRevealedImprovementType(pTeam, false) == GameInfo.Improvements.IMPROVEMENT_PLANTATION.ID) then 
			nbLuxPlant = nbLuxPlant + 1
		end
		if(pAreaPlot:GetFeatureType() == FeatureTypes.FEATURE_FOREST) then 
			nbForest = nbForest + 1
		end
		if(pAreaPlot:GetTerrainType () == TerrainTypes.TERRAIN_DESERT) then 
			nbDesert = nbDesert + 1
		end
		if(pAreaPlot:GetTerrainType () == TerrainTypes.TERRAIN_MOUNTAIN) then 
			nbMountain = nbMountain + 1
		end
	end
	--number of nearby (lux, because bananas aren't revealed) plantation at 2 hex of a new city for CALENDAR
	if(nbLuxPlant>0) then
		local iTech = GameInfo.Technologies.TECH_CALENDAR.ID;
		local pTeamTech = pTeam:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<5) then
			pTeamTech:SetEurekaCounter(iTech, math.min(5, nbLuxPlant+nbEureka));
		end
	end
	--number of nearby desert & montains at 2 hex of a new city for trading
	if(nbDesert+nbMountain > 0) then
		local iTech = GameInfo.Technologies.TECH_ARCHERY.ID;
		local pTeamTech = pTeam:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<15) then
			pTeamTech:SetEurekaCounter(iTech, math.min(15, nbMountain+nbMountain+nbDesert+nbEureka));
		end
	end
	--number of nearby forest at 2 hex of a new city for Bronze
	if(nbForest > 0) then
		local iTech = GameInfo.Technologies.TECH_BRONZE_WORKING.ID;
		local pTeamTech = pTeam:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka < 15) then
			pTeamTech:SetEurekaCounter(iTech, math.min(15, nbForest+nbEureka));
		end
	end
	--number of fresh water city for masonery
	if(pCity:Plot():IsFreshWater()) then
		local iTech = GameInfo.Technologies.TECH_CONSTRUCTION.ID;
		local pTeamTech = pTeam:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka<3) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
end
end);

GameEvents.TeamTechResearched.Add(function(iTeam, iTech, iChange)
if(iTeam >= 0 and iTech >= 0) then
	local pTeam = Teams[iTeam];
	-- number of classical era tech for writing
	if(iTech == GameInfo.Technologies.TECH_OPTICS.ID or
	iTech == GameInfo.Technologies.TECH_MATHEMATICS.ID or
	iTech == GameInfo.Technologies.TECH_CONSTRUCTION.ID or
	iTech == GameInfo.Technologies.TECH_IRON_WORKING.ID or
	iTech == GameInfo.Technologies.TECH_CURRENCY.ID or
	iTech == GameInfo.Technologies.TECH_METAL_CASTING.ID) then
		local iTech = GameInfo.Technologies.TECH_WRITING.ID;
		local pTeamTech = pTeam:GetTeamTechs();
		local nbEureka = pTeamTech:GetEurekaCounter(iTech);
		if(nbEureka < 6) then
			pTeamTech:SetEurekaCounter(iTech, nbEureka+1);
		end
	end
end
end);







