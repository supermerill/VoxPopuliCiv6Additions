-- eurekas.lua
-- Author: merill
-- DateCreated: 11/9/2016 8:08:46 PM
--------------------------------------------------------------
print("$$ Eurekas is loading $$");

include("PlotIterators")
include("EurekaLib")

-- constants

local kTERRAIN_TYPE_GRASS = TerrainTypes.TERRAIN_GRASS;
local kTERRAIN_TYPE_PLAINS = TerrainTypes.TERRAIN_PLAINS;
local kTERRAIN_TYPE_TUNDRA = TerrainTypes.TERRAIN_TUNDRA;
local kTERRAIN_TYPE_DESERT = TerrainTypes.TERRAIN_DESERT;
local kTERRAIN_TYPE_MOUNTAIN = TerrainTypes.TERRAIN_MOUNTAIN;
local kTERRAIN_TYPE_COAST = TerrainTypes.TERRAIN_COAST;
local kTERRAIN_TYPE_OCEAN = TerrainTypes.TERRAIN_OCEAN;

local kTECH_DRAMA = GameInfo.Technologies.TECH_DRAMA.ID;
local kTECH_PHILOSOPHY = GameInfo.Technologies.TECH_PHILOSOPHY.ID;
local kTECH_PHILOSOPHY = GameInfo.Technologies.TECH_PHILOSOPHY.ID;
local kTECH_CIVIL_SERVICE = GameInfo.Technologies.TECH_CIVIL_SERVICE.ID;
local kTECH_CURRENCY = GameInfo.Technologies.TECH_CURRENCY.ID;
local kTECH_BANKING = GameInfo.Technologies.TECH_BANKING.ID;
local kTECH_PRINTING_PRESS = GameInfo.Technologies.TECH_PRINTING_PRESS.ID;
local kTECH_ASTRONOMY = GameInfo.Technologies.TECH_ASTRONOMY.ID;
local kTECH_GUNPOWDER = GameInfo.Technologies.TECH_GUNPOWDER.ID;
local kTECH_CHEMISTRY = GameInfo.Technologies.TECH_CHEMISTRY.ID;
local kTECH_ARCHITECTURE = GameInfo.Technologies.TECH_ARCHITECTURE.ID;
local kTECH_ACOUSTICS = GameInfo.Technologies.TECH_ACOUSTICS.ID;
local kTECH_METALLURGY = GameInfo.Technologies.TECH_METALLURGY.ID;
local kTECH_RIFLING = GameInfo.Technologies.TECH_RIFLING.ID;
local kTECH_ARCHAEOLOGY = GameInfo.Technologies.TECH_ARCHAEOLOGY.ID;
local kTECH_FERTILIZER = GameInfo.Technologies.TECH_FERTILIZER.ID;
local kTECH_INDUSTRIALIZATION = GameInfo.Technologies.TECH_INDUSTRIALIZATION.ID;
local kTECH_DYNAMITE = GameInfo.Technologies.TECH_DYNAMITE.ID;
local kTECH_STEAM_POWER = GameInfo.Technologies.TECH_STEAM_POWER.ID;
local kTECH_BIOLOGY = GameInfo.Technologies.TECH_BIOLOGY.ID;
local kTECH_PLASTIC = GameInfo.Technologies.TECH_PLASTIC.ID;
local kTECH_BALLISTICS = GameInfo.Technologies.TECH_BALLISTICS.ID;
local kTECH_MATHEMATICS = GameInfo.Technologies.TECH_MATHEMATICS.ID;
local kTECH_CHIVALRY = GameInfo.Technologies.TECH_CHIVALRY.ID;
local kTECH_REPLACEABLE_PARTS = GameInfo.Technologies.TECH_REPLACEABLE_PARTS.ID;
local kTECH_NAVIGATION = GameInfo.Technologies.TECH_NAVIGATION.ID;
local kTECH_METAL_CASTING = GameInfo.Technologies.TECH_METAL_CASTING.ID;
local kTECH_ENGINEERING = GameInfo.Technologies.TECH_ENGINEERING.ID;
local kTECH_EDUCATION = GameInfo.Technologies.TECH_EDUCATION.ID;
local kTECH_ELECTRICITY = GameInfo.Technologies.TECH_ELECTRICITY.ID;
local kTECH_RADIO = GameInfo.Technologies.TECH_RADIO.ID;
local kTECH_TRAPPING = GameInfo.Technologies.TECH_TRAPPING.ID;
local kTECH_EDUCATION = GameInfo.Technologies.TECH_EDUCATION.ID;
local kTECH_MINING = GameInfo.Technologies.TECH_MINING.ID;
local kTECH_ARCHERY = GameInfo.Technologies.TECH_ARCHERY.ID;
local kTECH_OPTICS = GameInfo.Technologies.TECH_OPTICS.ID;
local kTECH_IRON_WORKING = GameInfo.Technologies.TECH_IRON_WORKING.ID;
local kTECH_THEOLOGY = GameInfo.Technologies.TECH_THEOLOGY.ID;
local kTECH_PHYSICS = GameInfo.Technologies.TECH_PHYSICS.ID;
local kTECH_STEEL = GameInfo.Technologies.TECH_STEEL.ID;
local kTECH_COMPASS = GameInfo.Technologies.TECH_COMPASS.ID;
local kTECH_MACHINERY = GameInfo.Technologies.TECH_MACHINERY.ID;
local kTECH_COMBUSTION = GameInfo.Technologies.TECH_COMBUSTION.ID;
local kTECH_FLIGHT = GameInfo.Technologies.TECH_FLIGHT.ID;
local kTECH_COMBUSTION = GameInfo.Technologies.TECH_COMBUSTION.ID;
local kTECH_THE_WHEEL = GameInfo.Technologies.TECH_THE_WHEEL.ID;
local kTECH_MASONRY = GameInfo.Technologies.TECH_MASONRY.ID;
local kTECH_MASONRY = GameInfo.Technologies.TECH_MASONRY.ID;
local kTECH_MATHEMATICS = GameInfo.Technologies.TECH_MATHEMATICS.ID;
local kTECH_CHIVALRY = GameInfo.Technologies.TECH_CHIVALRY.ID;
local kTECH_REPLACEABLE_PARTS = GameInfo.Technologies.TECH_REPLACEABLE_PARTS.ID;
local kTECH_POTTERY = GameInfo.Technologies.TECH_POTTERY.ID;
local kTECH_POTTERY = GameInfo.Technologies.TECH_POTTERY.ID;
local kTECH_SAILING = GameInfo.Technologies.TECH_SAILING.ID;
local kTECH_TRAPPING = GameInfo.Technologies.TECH_TRAPPING.ID;
local kTECH_POTTERY = GameInfo.Technologies.TECH_POTTERY.ID;
local kTECH_THE_WHEEL = GameInfo.Technologies.TECH_THE_WHEEL.ID;
local kTECH_ANIMAL_HUSBANDRY = GameInfo.Technologies.TECH_ANIMAL_HUSBANDRY.ID;
local kTECH_MINING = GameInfo.Technologies.TECH_MINING.ID;
local kTECH_MASONRY = GameInfo.Technologies.TECH_MASONRY.ID;
local kTECH_CALENDAR = GameInfo.Technologies.TECH_CALENDAR.ID;
local kTECH_HORSEBACK_RIDING = GameInfo.Technologies.TECH_HORSEBACK_RIDING.ID;
local kTECH_BRONZE_WORKING = GameInfo.Technologies.TECH_BRONZE_WORKING.ID;
local kTECH_CONSTRUCTION = GameInfo.Technologies.TECH_CONSTRUCTION.ID;
local kTECH_GUILDS = GameInfo.Technologies.TECH_GUILDS.ID;
local kTECH_OPTICS = GameInfo.Technologies.TECH_OPTICS.ID;
local kTECH_MATHEMATICS = GameInfo.Technologies.TECH_MATHEMATICS.ID;
local kTECH_CONSTRUCTION = GameInfo.Technologies.TECH_CONSTRUCTION.ID;
local kTECH_IRON_WORKING = GameInfo.Technologies.TECH_IRON_WORKING.ID;
local kTECH_CURRENCY = GameInfo.Technologies.TECH_CURRENCY.ID;
local kTECH_METAL_CASTING = GameInfo.Technologies.TECH_METAL_CASTING.ID;
local kTECH_WRITING = GameInfo.Technologies.TECH_WRITING.ID;

local kRESOURCE_IRON = GameInfoTypes.RESOURCE_IRON;
local kRESOURCE_HORSE = GameInfoTypes.RESOURCE_HORSE;
local kRESOURCE_COAL = GameInfoTypes.RESOURCE_COAL;
local kRESOURCE_COAL = GameInfoTypes.RESOURCE_COAL;
local kRESOURCE_OIL = GameInfoTypes.RESOURCE_OIL;
local kRESOURCE_WHEAT = GameInfoTypes.RESOURCE_WHEAT;

local kBUILDINGCLASS_MARKET = GameInfo.BuildingClasses.BUILDINGCLASS_MARKET.ID;
local kBUILDINGCLASS_WALLS = GameInfo.BuildingClasses.BUILDINGCLASS_WALLS.ID;
local kBUILDINGCLASS_FACTORY = GameInfo.BuildingClasses.BUILDINGCLASS_FACTORY.ID;

local kUNITCLASS_ENGINEER = GameInfo.UnitClasses.UNITCLASS_ENGINEER.ID;
local kUNITCLASS_SCIENTIST = GameInfo.UnitClasses.UNITCLASS_SCIENTIST.ID;
local kUNITCLASS_GREAT_GENERAL = GameInfo.UnitClasses.UNITCLASS_GREAT_GENERAL.ID;
local kUNITCLASS_MERCHANT = GameInfo.UnitClasses.UNITCLASS_MERCHANT.ID;
local kUNITCLASS_MUSICIAN = GameInfo.UnitClasses.UNITCLASS_MUSICIAN.ID;
local kUNITCLASS_SCOUT = GameInfo.UnitClasses.UNITCLASS_SCOUT.ID;
local kUNITCLASS_WORKER = GameInfo.UnitClasses.UNITCLASS_WORKER.ID;
local kUNITCLASS_WARRIOR = GameInfo.UnitClasses.UNITCLASS_WARRIOR.ID;
local kUNITCLASS_ARCHER = GameInfo.UnitClasses.UNITCLASS_ARCHER.ID;
local kUNITCLASS_WORKBOAT = GameInfo.UnitClasses.UNITCLASS_WORKBOAT.ID;
local kUNITCLASS_SPEARMAN = GameInfo.UnitClasses.UNITCLASS_SPEARMAN.ID;
local kUNITCLASS_MISSIONARY = GameInfo.UnitClasses.UNITCLASS_MISSIONARY.ID;
local kUNITCLASS_CATAPULT = GameInfo.UnitClasses.UNITCLASS_CATAPULT.ID;
local kUNITCLASS_SWORDSMAN = GameInfo.UnitClasses.UNITCLASS_SWORDSMAN.ID;
local kUNITCLASS_TRIREME = GameInfo.UnitClasses.UNITCLASS_TRIREME.ID;
local kUNITCLASS_BYZANTINE_DROMON = GameInfo.UnitClasses.UNITCLASS_BYZANTINE_DROMON.ID;
local kUNITCLASS_GALLEASS = GameInfo.UnitClasses.UNITCLASS_GALLEASS.ID;
local kUNITCLASS_COMPOSITE_BOWMAN = GameInfo.UnitClasses.UNITCLASS_COMPOSITE_BOWMAN.ID;
local kUNITCLASS_IRONCLAD = GameInfo.UnitClasses.UNITCLASS_IRONCLAD.ID;
local kUNITCLASS_CRUISER = GameInfo.UnitClasses.UNITCLASS_CRUISER.ID;
local kUNITCLASS_TRIPLANE = GameInfo.UnitClasses.UNITCLASS_TRIPLANE.ID;
local kUNITCLASS_IRONCLAD = GameInfo.UnitClasses.UNITCLASS_IRONCLAD.ID;
local kUNITCLASS_CRUISER = GameInfo.UnitClasses.UNITCLASS_CRUISER.ID;

local kBUILDING_SHRINE = GameInfo.Buildings.BUILDING_SHRINE.ID;
local kBUILDING_MONUMENT = GameInfo.Buildings.BUILDING_MONUMENT.ID;
local kBUILDING_MONUMENT = GameInfo.Buildings.BUILDING_MONUMENT.ID;
local kBUILDING_STELE = GameInfo.Buildings.BUILDING_STELE.ID;
local kBUILDING_MARKET = GameInfo.Buildings.BUILDING_MARKET.ID;
local kBUILDING_BAZAAR = GameInfo.Buildings.BUILDING_BAZAAR.ID;
local kBUILDING_WALLS = GameInfo.Buildings.BUILDING_WALLS.ID;
local kBUILDING_WALLS_OF_BABYLON = GameInfo.Buildings.BUILDING_WALLS_OF_BABYLON.ID;
local kBUILDING_FACTORY = GameInfo.Buildings.BUILDING_FACTORY.ID;
local kBUILDING_STEAM_MILL = GameInfo.Buildings.BUILDING_STEAM_MILL.ID;

local kIMPROVEMENT_PLANTATION = GameInfo.Improvements.IMPROVEMENT_PLANTATION.ID;
local kIMPROVEMENT_MINE = GameInfo.Improvements.IMPROVEMENT_MINE.ID;
local kIMPROVEMENT_QUARRY = GameInfo.Improvements.IMPROVEMENT_QUARRY.ID;
local kIMPROVEMENT_ACADEMY = GameInfo.Improvements.IMPROVEMENT_ACADEMY.ID;

local iGameSpeed = GameInfo.GameSpeeds[Game.GetGameSpeedType()].GrowthPercent / 100

GameEvents.PlayerDoTurn.Add(function(iPlayer)
-- euraka that are re-computed at the begining of the turn (ex: gold/t)
if(iPlayer >=0) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	
	-- max culture per turn for Drama
	MaxEureka(pPlayer, pTeamTech, kTECH_DRAMA, math.floor(pPlayer:GetTotalJONSCulturePerTurn()/4), 10);
		
	-- cs friends for philosophy
	-- cs ally for CIVIL_SERVICE
	if(not pTeamTech:HasTech(kTECH_PHILOSOPHY) 
	or not pTeamTech:HasTech(kTECH_CIVIL_SERVICE)) then
		local nbFriends = 0;
		local nbAlly = 0;
		for i = 0, GameDefines.MAX_PLAYERS - 1 do
			if i ~= iPlayer then
				if Players[i]:IsMinorCiv() then
					local status = Players[i]:GetMinorCivFriendshipLevelWithMajor(iPlayer)
					if 0 < status then
						nbFriends = nbFriends +1;
						if 1 < status then
							nbAlly = nbAlly +1;
						end
					end
				end
			end
		end
		MaxEureka(pPlayer, pTeamTech, kTECH_PHILOSOPHY, nbFriends, 5);
		MaxEureka(pPlayer, pTeamTech, kTECH_CIVIL_SERVICE, nbAlly, 4);
	end

	-- max gold for CURRENCY
	MaxEureka(pPlayer, pTeamTech, kTECH_CURRENCY, math.floor(pPlayer:GetGold()/(iGameSpeed*100)), 6);
	-- renaissance era tiers 1: yields per turn
	MaxEureka(pPlayer, pTeamTech, kTECH_BANKING, math.floor(pPlayer:CalculateGoldRate()/20), 6);
	MaxEureka(pPlayer, pTeamTech, kTECH_PRINTING_PRESS, math.floor(pPlayer:GetTourism()/5), 6);
	MaxEureka(pPlayer, pTeamTech, kTECH_ASTRONOMY, math.floor(pPlayer:GetTotalFaithPerTurn()/15), 6);
	MaxEureka(pPlayer, pTeamTech, kTECH_GUNPOWDER, math.floor(pPlayer:GetScoreFromMilitarySize()/10), 15);
	MaxEureka(pPlayer, pTeamTech, kTECH_CHEMISTRY, math.floor(pPlayer:GetScience()/30), 6);
	-- renaissance era tiers 2
	MaxEureka(pPlayer, pTeamTech, kTECH_ARCHITECTURE, pPlayer:GetNumWorldWonders(), 5);
	--todo lux from deal: TECH_ECONOMICS
	--GetHappinessFromResources
	MaxEureka(pPlayer, pTeamTech, kTECH_ACOUSTICS, pPlayer:GetNumGreatWorks(), 15);
	MaxEureka(pPlayer, pTeamTech, kTECH_METALLURGY, math.floor(pPlayer:GetLifetimeCombatExperience()/20), 15);
	
	--industrial : rifling
	MaxEureka(pPlayer, pTeamTech, kTECH_RIFLING, pPlayer:GetNumResourceTotal(kRESOURCE_IRON, true), 15);
	--industrial : archealogy
	if(pPlayer:IsGoldenAge()) then
		ChangeEureka(pPlayer, kTECH_ARCHAEOLOGY, math.floor(iGameSpeed*10), 3000);
	end
	--industrial : fertilizer
	MaxEureka(pPlayer, pTeamTech, kTECH_FERTILIZER, pPlayer:GetNumResourceTotal(kRESOURCE_HORSE, true), 15);
	--industrial : INDUSTRIALIZATION
	MaxEureka(pPlayer, pTeamTech, kTECH_INDUSTRIALIZATION, pPlayer:CountAllWorkedResource(kRESOURCE_COAL), 3);
	--industrial : DYNAMITE
	MaxEureka(pPlayer, pTeamTech, kTECH_DYNAMITE, pPlayer:GetNumResourceTotal(kRESOURCE_COAL, true), 15);
	--if(not pTeamTech:HasTech(kTECH_STEAM_POWER)) then
	local nbProd = 0;
	local nbPop = 0;
	local nbCity = 0;
	for pCity in pPlayer:Cities() do
		nbCity = nbCity +1;
		nbProd = nbProd + pCity:GetYieldRate(YieldTypes.YIELD_PRODUCTION);
		nbPop = nbPop + pCity:GetPopulation();
	end
	-- industrial: prod/city => steam power
	MaxEureka(pPlayer, pTeamTech, kTECH_STEAM_POWER, math.floor(nbProd/(nbCity*10)), 6);
	-- modern: pop/city => biology
	MaxEureka(pPlayer, pTeamTech, kTECH_BIOLOGY, math.floor(nbPop/(nbCity*3)), 30);
	--end
	-- modern: oil => plastic
	MaxEureka(pPlayer, pTeamTech, kTECH_PLASTIC, pPlayer:GetNumResourceTotal(kRESOURCE_OIL, true), 10);
	-- modern: nb wars => TECH_BALLISTICS
	MaxEureka(pPlayer, pTeamTech, kTECH_BALLISTICS, pPlayer:GetNumWarsFought(), 8);
	
	
	-- check buildings
	MaxEureka(pPlayer, pTeamTech, kTECH_MATHEMATICS, 
			pPlayer:GetBuildingClassCount(kBUILDINGCLASS_MARKET), 3);
	-- walls for chivalery
	MaxEureka(pPlayer, pTeamTech, kTECH_CHIVALRY, 
			pPlayer:GetBuildingClassCount(kBUILDINGCLASS_WALLS), 5);
	-- factory for replaceable parts
	MaxEureka(pPlayer, pTeamTech, kTECH_REPLACEABLE_PARTS, 
			pPlayer:GetBuildingClassCount(kBUILDINGCLASS_FACTORY), 5);
	
end
end);

GameEvents.TileRevealed.Add(function(iPlotX, iPlotY, iTeam, iFromTeam, bFirst) 
if(iTeam >= 0 and iPlotX >= 0 and iPlotY >=0) then
	local pPlot = Map.GetPlot(iPlotX, iPlotY);
	local pTeam = Teams[iTeam];
	local iTerrainType = pPlot:GetTerrainType();
	-- number of sea tile revealed
	if(iTerrainType == kTERRAIN_TYPE_SEA) then
		if (pPlot:IsRevealed(iTeam, false)) then
			local iTech = kTECH_NAVIGATION;
			local pTeamTech = pTeam:GetTeamTechs();
			for id, player in pairs(Players) do
				if player:IsEverAlive() then
					if(player:GetTeam() == iTeam) then
						IncrementEureka(player, iTech, 1200);
					end
				end
			end
		end
	end
end
end)



GameEvents.TileFeatureChanged.Add(function(x, y, iPlayer, iFeature, eNewFeature)
print("Eureka: TileFeatureChanged!".. iPlayer);
if(iPlayer >=0 and iFeature == FeatureTypes.FEATURE_FOREST and eNewFeature == FeatureTypes.NO_FEATURE) then
	local pPlayer = Players[iPlayer];
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	-- nbForest cleared for metal casting
	ChangeEureka(pPlayer, pTeamTech, kTECH_METAL_CASTING, 1, 6);
end
end);

GameEvents.GreatPersonExpended.Add(function(iPlayer, iUnit, iUnitTypeBad, iX, iY)
if(iPlayer >=0 and iUnit >=0)then 
	local pPlayer = Players[iPlayer];
	local pUnit = pPlayer:GetUnitByID(iUnit);
	local iUnitClassType = pUnit:GetUnitClassType();
	local pTeam = Teams[pPlayer:GetTeam()];
	local pTeamTech = pTeam:GetTeamTechs();
	print("Eureka: GreatPersonExpended! player= ".. iPlayer .. ", type = ".. iUnitClassType);
	-- nbGreat engineer used for ENGINEERING
	if(iUnitClassType == kUNITCLASS_ENGINEER) then
		ChangeEureka(pPlayer, pTeamTech, kTECH_ENGINEERING, 1, 2);
	end
	-- nbGreat scientist used for education
	if(iUnitClassType == kUNITCLASS_SCIENTIST) then
		ChangeEureka(pPlayer, pTeamTech, kTECH_EDUCATION, 1, 2);
		-- nb academies for SCIENTIFIC_THEORY
		local pPlot = Map.GetPlot(iPlotX, iPlotY);
		if(pPlot:GetImprovementType() == kIMPROVEMENT_ACADEMY) then
			IncrementEureka(pPlayer, kTECH_SCIENTIFIC_THEORY, 300);
		end
	end
	-- nbGreat general used for military science
	if(iUnitClassType == kUNITCLASS_GREAT_GENERAL) then
		ChangeEureka(pPlayer, pTeamTech, kTECH_MILITARY_SCIENCE, 1, 5);
	end
	-- nbGreat merchant used for electricity
	if(iUnitClassType == kUNITCLASS_MERCHANT) then
		ChangeEureka(pPlayer, pTeamTech, kTECH_ELECTRICITY, 1, 6);
	end
	-- nbGreat musician used for radio
	if(iUnitClassType == kUNITCLASS_MUSICIAN) then
		ChangeEureka(pPlayer, pTeamTech, kTECH_RADIO, 1, 6);
	end
	
end
end);


GameEvents.CityTrained.Add(function(iPlayer, iCity, iUnit, bGoldBuy, bFaithBuy)
if(iPlayer >=0 and iUnit>=0) then
	local pPlayer = Players[iPlayer];
	local pUnit = pPlayer:GetUnitByID(iUnit);
	local iUnitClassType = pUnit:GetUnitClassType();
	print(string.format("Eureka: CityTrained player %i, unit %s", iPlayer, pUnit:GetName()));
	--scout for trapping now tundra
	--if(iUnitClassType == kUNITCLASS_SCOUT) then 
	--	IncrementEureka(pPlayer, kTECH_TRAPPING, 3);
	--end
	--workers for animal husbandery now unfeatured hill
	--if(iUnitClassType == kUNITCLASS_WORKER) then 
	--	IncrementEureka(pPlayer, kTECH_EDUCATION, 3);
	--end
	--warriors for mining now mine lux
	--if(iUnitClassType == kUNITCLASS_WARRIOR) then 
	--	IncrementEureka(pPlayer, kTECH_MINING, 5);
	--end
	--archers for military training
	if(iUnitClassType == kUNITCLASS_ARCHER) then 
		IncrementEureka(pPlayer, kTECH_ARCHERY, 6);
	end
	-- fishing boat for sailing
	if(iUnitClassType == kUNITCLASS_WORKBOAT) then 
		IncrementEureka(pPlayer, kTECH_OPTICS, 6);
	end
	-- SPEARMAN for iron working
	if(iUnitClassType == kUNITCLASS_SPEARMAN) then 
		IncrementEureka(pPlayer, kTECH_IRON_WORKING, 6);
	end
	-- MISSIONARY for theology (bFaithBuy = true)
	if(iUnitClassType == kUNITCLASS_MISSIONARY) then 
		IncrementEureka(pPlayer, kTECH_THEOLOGY, 5);
	end
	-- Catapult for physics
	if(iUnitClassType == kUNITCLASS_CATAPULT) then 
		IncrementEureka(pPlayer, kTECH_PHYSICS, 5);
	end
	-- swordsman for steel
	if(iUnitClassType == kUNITCLASS_SWORDSMAN) then 
		IncrementEureka(pPlayer, kTECH_STEEL, 6);
	end
	-- warboats for compass
	if(iUnitClassType == kUNITCLASS_TRIREME 
	or iUnitClassType == kUNITCLASS_BYZANTINE_DROMON 
	or iUnitClassType == kUNITCLASS_GALLEASS) then 
		IncrementEureka(pPlayer, kTECH_COMPASS, 6);
	end
	-- comosite bowman for TECH_MACHINERY
	if(iUnitClassType == kUNITCLASS_COMPOSITE_BOWMAN) then 
		IncrementEureka(pPlayer, kTECH_MACHINERY, 4);
	end
	-- steam navy for TECH_COMBUSTION
	if(iUnitClassType == kUNITCLASS_IRONCLAD or iUnitClassType == kUNITCLASS_CRUISER ) then 
		IncrementEureka(pPlayer, kTECH_COMBUSTION, 10);
	end
	-- triplan => TECH_FLIGHT
	if(iUnitClassType == kUNITCLASS_TRIPLANE) then 
		for itId, itPlayer in pairs(Players) do
			if itPlayer:IsEverAlive() then
				IncrementEureka(itPlayer, kTECH_FLIGHT, 30);
			end
		end
	end
end
end);

GameEvents.UnitUpgraded.Add(function(iPlayer, iOldUnit, iNewUnit, bGoodyHut) 
print("Eureka: UnitUpgraded!".. iPlayer);
if(iPlayer >=0 and iNewUnit>=0) then
	local pPlayer = Players[iPlayer];
	local pUnit = pPlayer:GetUnitByID(iNewUnit);
	local iUnitClassType = pUnit:GetUnitClassType();
	-- steam navy for TECH_COMBUSTION
	if(iUnitClassType == kUNITCLASS_IRONCLAD 
	or iUnitClassType == kUNITCLASS_CRUISER ) then 
		IncrementEureka(pPlayer, kTECH_COMBUSTION, 10);
	end
end
end)


--GameEvents.CityConstructed.Add(function(iPlayer, iCity, iBuilding, bGoldBuy, bFaithBuy)
--if(iPlayer >=0 and iBuilding>=0) then
--	local pPlayer = Players[iPlayer];
--	local pTeamTech = Teams[pPlayer:GetTeam()]:GetTeamTechs();
--	-- shrine and monument for wheel now jungle
--	--if(iBuilding == kBUILDING_SHRINE or iBuilding == kBUILDING_MONUMENT
--	-- or iBuilding == kBUILDING_MONUMENT or iBuilding == kBUILDING_STELE) then 
--	--	ChangeEureka(pPlayer, pTeamTech, kTECH_THE_WHEEL, 1, 3);
--	--end
--	-- buildings for construction (named masonery, but it's construction) -- now quarry lux
--	--if(not pTeamTech:HasTech(kTECH_MASONRY)) then
--	--	ChangeEureka(pPlayer, pTeamTech, kTECH_MASONRY, 1, 10);
--	--end
--	-- market for mathematics
--	if(iBuilding == kBUILDING_MARKET or iBuilding == kBUILDING_BAZAAR) then 
--		ChangeEureka(pPlayer, pTeamTech, kTECH_MATHEMATICS, 1, 3);
--	end
--	-- walls for chivalery
--	if(iBuilding == kBUILDING_WALLS or iBuilding == kBUILDING_WALLS_OF_BABYLON) then 
--		ChangeEureka(pPlayer, pTeamTech, kTECH_CHIVALRY, 1, 5);
--	end
--	-- factory for replaceable parts
--	if(iBuilding == kBUILDING_FACTORY or iBuilding == kBUILDING_STEAM_MILL) then 
--		ChangeEureka(pPlayer, pTeamTech, kTECH_REPLACEABLE_PARTS, 1, 5);
--	end
--end
--end);


--GameEvents.PlayerAdoptPolicyBranch.Add(function(iPlayer, iPolicy)
--if(iPlayer >=0 and iPolicy>=0) then
--	-- number of policies for pottery -- now wheat
--	IncrementEureka(Players[iPlayer], kTECH_POTTERY, 3);
--end
--end);

--GameEvents.PlayerAdoptPolicy.Add(function(iPlayer, iPolicy)
--if(iPlayer >=0 and iPolicy>=0) then
--	-- number of policies for pottery  -- now wheat
--	IncrementEureka(Players[iPlayer], kTECH_POTTERY, 3);
--end
--end);

GameEvents.PlayerCityFounded.Add(function(iPlayer, iPlotX, iPlotY)
if(iPlayer >=0 and iPlotX >=0 and iPlotY >=0) then
	local pPlayer = Players[iPlayer];
	local pCity = Map.GetPlot(iPlotX, iPlotY):GetPlotCity();
	local pTeam = Teams[pPlayer:GetTeam()];
	-- number of coastal city for fishing
	if(pCity:IsCoastal(0)) then
		IncrementEureka(pPlayer, kTECH_SAILING, 3);
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
		if(pAreaPlot:CanHaveImprovement(kIMPROVEMENT_PLANTATION, pTeam:GetID())
			and iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then 
			nbLuxPlant = nbLuxPlant + 1;
		end
		if(featureType == FeatureTypes.FEATURE_FOREST) then 
			nbForest = nbForest + 1;
		end
		if(featureType == FeatureTypes.FEATURE_JUNGLE) then 
			nbJungle = nbJungle + 1;
		end
		if(terrainType == kTERRAIN_TYPE_DESERT) then 
			nbDesert = nbDesert + 1;
		end
		if(terrainType == kTERRAIN_TYPE_MOUNTAIN) then 
			nbMountain = nbMountain + 1;
		end
		if(terrainType == kTERRAIN_TYPE_TUNDRA) then 
			nbTundra = nbTundra + 1;
		end
		if(pAreaPlot:IsHills() and iResourceUsageType ~= ResourceUsageTypes.RESOURCEUSAGE_LUXURY and featureType == FeatureTypes.NO_FEATURE) then 
			nbHills = nbHills + 1;
		end
		if(iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then
			nbLux = nbLux + 1;
		end
		if(iResourceType == kRESOURCE_WHEAT) then
			nbWheat = nbWheat + 1;
		end
		if(pAreaPlot:CanHaveImprovement(kIMPROVEMENT_MINE, pTeam:GetID())
			and iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then
			nbMineLux = nbMineLux + 1;
		end
		if(pAreaPlot:CanHaveImprovement(kIMPROVEMENT_QUARRY, pTeam:GetID())
			and iResourceUsageType == ResourceUsageTypes.RESOURCEUSAGE_LUXURY) then
			nbQuarryLux = nbQuarryLux + 1;
		end
		
	end
	-- nbTundra for trapping
	if(nbTundra>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_TRAPPING, nbTundra, 6);
	end
	-- nbWheat for pottery
	if(nbWheat>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_POTTERY, nbWheat, 3);
	end
	-- nbJungle for wheel
	if(nbJungle>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_THE_WHEEL, nbJungle, 6);
	end
	-- nbHills for animal husbandry
	if(nbHills>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_ANIMAL_HUSBANDRY, nbHills, 6);
	end
	-- nb mine lux for mining
	if(nbMineLux>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_MINING, nbMineLux, 5);
	end
	-- nb quarry lux for construction
	if(nbQuarryLux>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_MASONRY, nbQuarryLux, 3);
	end
	--number of nearby plantation lux at 2 hex of a new city for CALENDAR
	if(nbLuxPlant>0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_CALENDAR, nbLuxPlant, 5);
	end
	--number of nearby desert & montains at 2 hex of a new city for trading
	if(nbDesert+nbMountain > 0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_HORSEBACK_RIDING, nbMountain+nbMountain+nbDesert, 15);
	end
	--number of nearby forest at 2 hex of a new city for Bronze
	if(nbForest > 0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_BRONZE_WORKING, nbForest, 15);
	end
	--number of fresh water city for masonery
	if(pCity:Plot():IsFreshWater()) then
		IncrementEureka(pPlayer, kTECH_CONSTRUCTION, 3);
	end
	-- number of lux for guilds
	if(nbLux > 0) then
		ChangeEureka(pPlayer, pTeam:GetTeamTechs(), kTECH_GUILDS, nbLux, 15);
	end
end
end);

GameEvents.TeamTechResearched.Add(function(iTeam, iTech, iChange)
print("Eureka: " .. iTeam .. " tech researched! ".. iTech);
if(iTeam >= 0 and iTech >= 0) then
	local pTeam = Teams[iTeam];
	-- number of classical era tech for writing
	if(iTech == kTECH_OPTICS or
	iTech == kTECH_MATHEMATICS or
	iTech == kTECH_CONSTRUCTION or
	iTech == kTECH_IRON_WORKING or
	iTech == kTECH_CURRENCY or
	iTech == kTECH_METAL_CASTING) then
		print("Eureka: for writing ".. iTech);
		local iTech = kTECH_WRITING;
		local pTeamTech = pTeam:GetTeamTechs();
		if(not pTeamTech:HasTech(iTech)) then
			local nbEureka = pTeamTech:GetEurekaCounter(iTech);
			if(nbEureka < 6) then
			--todo change this to a call to the lib
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







