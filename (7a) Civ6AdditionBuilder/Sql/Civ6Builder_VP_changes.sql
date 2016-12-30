-- Insert SQL Rules Here 

--------------- traits changes -----------------

--ALTER TABLE Traits ADD RouteBuilderCostMod INTEGER DEFAULT 0;
-- UPDATE Traits SET RouteBuilderCostMod = -50 WHERE RouteGoldMaintenanceMod <> 0;
--UPDATE Traits SET RouteBuilderCostMod = 0;
-- UPDATE Traits SET RouteGoldMaintenanceMod = 0;


------------ Policies changes.sql: -----------

--RouteGoldMaintenanceMod -> RouteBuilderCostMod
UPDATE Policies SET RouteGoldMaintenanceMod = '0' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
INSERT INTO Policy_YieldChangeTradeRoute (PolicyType, YieldType, Yield)	VALUES ('POLICY_MILITARY_CASTE', 'YIELD_GOLD', 2);
ALTER TABLE Policies ADD RouteBuilderCostMod INTEGER DEFAULT 0;
UPDATE Policies SET RouteBuilderCostMod = '-50' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- change machu pichu from +%gold in city connectio => +gold for land trade routes
UPDATE Buildings SET CityConnectionTradeRouteModifier = 0 WHERE Type = 'BUILDING_MACHU_PICHU';
UPDATE Buildings SET TradeRouteLandGoldBonus = 5 WHERE Type = 'BUILDING_MACHU_PICHU';
UPDATE Buildings SET NumTradeRouteBonus = 1 WHERE Type = 'BUILDING_MACHU_PICHU';
UPDATE Buildings SET TradeRouteLandDistanceModifier = 25 WHERE Type = 'BUILDING_MACHU_PICHU';



-- +1/+2? improvement per worker
-- UPDATE Policies SET WorkerSpeedModifier = '50' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- swap free worker / +1 mouvement
UPDATE Policies SET ExtraMoves = '0' WHERE Type = 'POLICY_REPUBLIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET ExtraMoves = '1' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET IncludesOneShotFreeUnits = '1' WHERE Type = 'POLICY_REPUBLIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET IncludesOneShotFreeUnits = '0' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
DELETE FROM Policy_FreeUnitClasses WHERE PolicyType = 'POLICY_CITIZENSHIP';
INSERT INTO Policy_FreeUnitClasses (PolicyType, UnitClassType, Count) VALUES ('POLICY_REPUBLIC', 'UNITCLASS_WORKER', 2);

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Liberty[ENDCOLOR][NEWLINE] +1 improvement per worker (100 [ICON_WORKER]) and Workers are trained 25% more quickly.[NEWLINE] +1 [ICON_MOVES] Movement for all Civilian Units.'
WHERE Tag = 'TXT_KEY_POLICY_CITIZENSHIP_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
