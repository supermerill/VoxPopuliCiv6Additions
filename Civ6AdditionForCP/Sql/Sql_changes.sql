------------ Improvements changes.sql: -----------

--change "build cost" to 100 for everything that have a time to build
ALTER TABLE Builds ADD BuilderCost INTEGER DEFAULT 0;
UPDATE Builds SET BuilderCost = 100 WHERE Time > 100;
UPDATE Builds SET BuilderCost = 100 WHERE Type = 'BUILD_REMOVE_JUNGLE';
UPDATE Builds SET BuilderCost = 100 WHERE Type = 'BUILD_REMOVE_FOREST';
UPDATE Builds SET BuilderCost = 100 WHERE Type = 'BUILD_REMOVE_MARSH';
UPDATE Builds SET BuilderCost = 150 WHERE Type = 'BUILD_SCRUB_FALLOUT';
UPDATE Builds SET BuilderCost = 50 WHERE Type = 'BUILD_REPAIR';
UPDATE Builds SET BuilderCost = 0 WHERE Type = 'BUILD_REMOVE_ROUTE';

------------ Units changes.sql: -----------

--merill : increase work rate to make each build instant (from 100~90 -> 2000) even in marathon
ALTER TABLE Units ADD BuilderStrength INTEGER DEFAULT 0;
UPDATE Units SET WorkRate = '2000' WHERE Type = 'UNIT_WORKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET BuilderStrength = '400' WHERE Type = 'UNIT_WORKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
-- reduc cost of workers from 70 to 50, advanced from 20 to 10 (like work boat)
UPDATE Units SET Cost = '50' WHERE Type = 'UNIT_WORKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
UPDATE Units SET AdvancedStartCost = '10' WHERE Type = 'UNIT_WORKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--workboat: same cost (50->50)
-- UPDATE Units SET Cost = '50' WHERE Type = 'UNIT_WORKBOAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

--------------- traits changes -----------------

--ALTER TABLE Traits ADD RouteBuilderCostMod INTEGER DEFAULT 0;
-- UPDATE Traits SET RouteBuilderCostMod = -50 WHERE RouteGoldMaintenanceMod <> 0;
--UPDATE Traits SET RouteBuilderCostMod = 0;
-- UPDATE Traits SET RouteGoldMaintenanceMod = 0;


------------ Policies changes.sql: -----------

--RouteGoldMaintenanceMod -> RouteBuilderCostMod
UPDATE Policies SET RouteGoldMaintenanceMod = '0' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
ALTER TABLE Policies ADD RouteBuilderCostMod INTEGER DEFAULT 0;
UPDATE Policies SET RouteBuilderCostMod = '-50' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- +1/+2? improvement per worker
-- UPDATE Policies SET WorkerSpeedModifier = '50' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- swap free worker / +1 mouvement
UPDATE Policies SET ExtraMoves = '0' WHERE Type = 'POLICY_REPUBLIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET ExtraMoves = '1' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET IncludesOneShotFreeUnits = '1' WHERE Type = 'POLICY_REPUBLIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET IncludesOneShotFreeUnits = '0' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
DELETE FROM Policy_FreeUnitClasses WHERE PolicyType = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
INSERT INTO Policy_FreeUnitClasses (PolicyType, UnitClassType, Count) VALUES ('POLICY_REPUBLIC', 'UNITCLASS_WORKER', 2);

------------ custom changes.sql: -----------

-- no maintenance, as it's now expensive in hammer to build (and there are plenty from trade routes)
UPDATE Routes
SET GoldMaintenance = '0'
WHERE Type = 'ROUTE_RAILROAD';
UPDATE Routes
SET GoldMaintenance = '0'
WHERE Type = 'ROUTE_ROAD';

--remove base gold from city connections
UPDATE Defines SET Value = 0 WHERE Name = 'TRADE_ROUTE_BASE_GOLD';
UPDATE Defines SET Value = 0 WHERE Name = 'TRADE_ROUTE_CAPITAL_POP_GOLD_MULTIPLIER';
UPDATE Defines SET Value = 0 WHERE Name = 'TRADE_ROUTE_CITY_POP_GOLD_MULTIPLIER';
-- city connection gold via Player trait : CityConnectionTradeRouteChange => no need to change that

-- set railroads to appear via auto trade route at modern era
INSERT INTO Defines (Name, Value) VALUES ('TRADE_ROUTE_CREATE_RAILROADS_ERA', 5);
INSERT INTO Defines (Name, Value) VALUES ('TRADE_ROUTE_CREATE_RAILROADS_TECH_ID', 
(SELECT ID FROM Technologies Where TYPE = 'TECH_RAILROAD') );

--activate road-building by trade routes.
UPDATE CustomModOptions
SET Value = '1'
WHERE Name = 'CIV6_ROADS';

-- This sql line do nothing, as this component always active for units with "BuilderStrength"
-- if you want to deactivate this, just remove the BuilderStrength from your worker (see above)
UPDATE CustomModOptions
SET Value = '1'
WHERE Name = 'CIV6_TYPE_WORKER';

