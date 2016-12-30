-- Insert SQL Rules Here 

--------------- traits changes -----------------

--ALTER TABLE Traits ADD RouteBuilderCostMod INTEGER DEFAULT 0;
-- UPDATE Traits SET RouteBuilderCostMod = -50 WHERE RouteGoldMaintenanceMod <> 0;
--UPDATE Traits SET RouteBuilderCostMod = 0;
-- UPDATE Traits SET RouteGoldMaintenanceMod = 0;


------------ Policies changes.sql: -----------

--RouteGoldMaintenanceMod -> RouteBuilderCostMod
UPDATE Policies SET RouteGoldMaintenanceMod = '0' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
INSERT INTO Policy_YieldChangeTradeRoute (PolicyType, YieldType, Yield)	
	SELECT 'POLICY_MILITARY_CASTE', 'YIELD_GOLD', 2
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET RouteBuilderCostMod = '-50' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = '[COLOR_POSITIVE_TEXT]Discipline[ENDCOLOR][NEWLINE]Each City with a garrison generates +1 [ICON_HAPPINESS_1] Happiness and +2 [ICON_CULTURE] Culture. [ICON_GOLD] Gold maintenance for Units reduced by 15%.[NEWLINE]-50% [ICON_WORKER] cost needed to build roads.[NEWLINE][ICON_CONNECTED] City Connections provide +2 [ICON_GOLD] Gold.'
	WHERE Tag = 'TXT_KEY_POLICY_MILITARY_CASTE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- change machu pichu from +%gold in city connectio => +gold for land trade routes
UPDATE Buildings SET CityConnectionTradeRouteModifier = 0 WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Buildings SET TradeRouteLandGoldBonus = 5 WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Buildings SET NumTradeRouteBonus = 1 WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Buildings SET TradeRouteLandDistanceModifier = 25 WHERE Type = 'BUILDING_MACHU_PICHU' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = 'Gains an additional trade route slot.[NEWLINE]Land Trade Routes gain +50% Range and +5 [ICON_GOLD] Gold.[NEWLINE]City gains +1 [ICON_FOOD] Food, [ICON_PRODUCTION] Production, [ICON_CULTURE] Culture, and [ICON_PEACE] Faith for every Mountain within 3 tiles of the City. [NEWLINE][NEWLINE]City must be built within 2 tiles of a Mountain that is inside your territory.'
	WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


-- +1/+2? improvement per worker
-- UPDATE Policies SET WorkerSpeedModifier = '50' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = '+1 improvement per worker (100 [ICON_WORKER]) and a Settler appears near the City.'
	WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- swap free worker / +1 mouvement
UPDATE Policies SET ExtraMoves = '0' WHERE Type = 'POLICY_REPUBLIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET ExtraMoves = '1' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET IncludesOneShotFreeUnits = '1' WHERE Type = 'POLICY_REPUBLIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET IncludesOneShotFreeUnits = '0' WHERE Type = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
DELETE FROM Policy_FreeUnitClasses WHERE PolicyType = 'POLICY_CITIZENSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
INSERT INTO Policy_FreeUnitClasses (PolicyType, UnitClassType, Count)
	SELECT 'POLICY_REPUBLIC', 'UNITCLASS_WORKER', 2
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = '[COLOR_POSITIVE_TEXT]Liberty[ENDCOLOR][NEWLINE] +1 improvement per worker (100 [ICON_WORKER]) and Workers are trained 25% more quickly.[NEWLINE] +1 [ICON_MOVES] Movement for all Civilian Units.'
	WHERE Tag = 'TXT_KEY_POLICY_CITIZENSHIP_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = '[COLOR_POSITIVE_TEXT]Expertise[ENDCOLOR][NEWLINE] +20% [ICON_PRODUCTION] Production towards buildings.[NEWLINE]Two Workers appears near the [ICON_CAPITAL] Capital.'
	WHERE Tag = 'TXT_KEY_POLICY_REPUBLIC_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
