-- Insert SQL Rules Here 

--------------- traits changes -----------------

--ALTER TABLE Traits ADD RouteBuilderCostMod INTEGER DEFAULT 0;
-- UPDATE Traits SET RouteBuilderCostMod = -50 WHERE RouteGoldMaintenanceMod <> 0;
--UPDATE Traits SET RouteBuilderCostMod = 0;
-- UPDATE Traits SET RouteGoldMaintenanceMod = 0;


------------ Policies changes.sql: -----------

--RouteGoldMaintenanceMod -> RouteBuilderCostMod
--UPDATE Policies SET RouteGoldMaintenanceMod = '0' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
--INSERT INTO Policy_YieldChangeTradeRoute (PolicyType, YieldType, Yield)	VALUES ('POLICY_MILITARY_CASTE', 'YIELD_GOLD', 2);
--ALTER TABLE Policies ADD RouteBuilderCostMod INTEGER DEFAULT 0;
--UPDATE Policies SET RouteBuilderCostMod = '-50' WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- change machu pichu from +%gold in city connectio => +gold for land trade routes
UPDATE Buildings SET CityConnectionTradeRouteModifier = 0 WHERE Type = 'BUILDING_MACHU_PICHU' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Buildings SET TradeRouteLandGoldBonus = 5 WHERE Type = 'BUILDING_MACHU_PICHU' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Buildings SET NumTradeRouteBonus = 1 WHERE Type = 'BUILDING_MACHU_PICHU' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Buildings SET TradeRouteLandDistanceModifier = 25 WHERE Type = 'BUILDING_MACHU_PICHU' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = 'Gains an additional trade route slot. Land Trade Routes gain +50% Range and +5 [ICON_GOLD] Gold.[NEWLINE]City gains +1 [ICON_FOOD] Food, [ICON_PRODUCTION] Production, [ICON_CULTURE] Culture, and [ICON_PEACE] Faith for every Mountain within 3 tiles of the City. [NEWLINE][NEWLINE]City must be built within 2 tiles of a Mountain that is inside your territory.'
	WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );



-- +1/+2? improvement per worker
-- UPDATE Policies SET WorkerSpeedModifier = '50' WHERE Type = 'POLICY_CITIZENSHIP';
UPDATE Language_en_US
	SET Text = '[COLOR_POSITIVE_TEXT]Citizenship[ENDCOLOR][NEWLINE] +1 improvement per worker (100 [ICON_WORKER]) and a Worker appears near the [ICON_CAPITAL] Capital.'
	WHERE Tag = 'TXT_KEY_POLICY_CITIZENSHIP_HELP' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );


UPDATE Policies SET RouteGoldMaintenanceMod = 0 WHERE Type = 'POLICY_CARAVANS' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
INSERT INTO Policy_YieldChangeTradeRoute (PolicyType, YieldType, Yield)	
	SELECT 'POLICY_CARAVANS', 'YIELD_GOLD', 2
	WHERE NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
UPDATE Policies SET RouteBuilderCostMod = -50 WHERE Type = 'POLICY_CARAVANS' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
	SET Text = '[COLOR_POSITIVE_TEXT]Wagon Trains[ENDCOLOR][NEWLINE]-50% [ICON_WORKER] cost needed to build roads.[NEWLINE][ICON_CONNECTED] City Connections provide +2 [ICON_GOLD] Gold.[NEWLINE]+2 [ICON_GOLD] Gold from all your land trade routes.'
	WHERE Tag = 'TXT_KEY_POLICY_CARAVANS_HELP' AND NOT EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );
