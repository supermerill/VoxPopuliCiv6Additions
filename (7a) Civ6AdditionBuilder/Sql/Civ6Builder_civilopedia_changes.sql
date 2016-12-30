-- Sql changes for civilopedia entries
-- [COLOR_POSITIVE_TEXT]Liberty[ENDCOLOR][NEWLINE]A Worker appears near the [ICON_CAPITAL] Capital.[NEWLINE] Tile improvement construction rate increased by 25%, and Workers are trained 25% more quickly.
UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Liberty[ENDCOLOR][NEWLINE] +1 improvement per worker (100 [ICON_WORKER]) and Workers are trained 25% more quickly.[NEWLINE] +1 [ICON_MOVES] Movement for all Civilian Units.'
WHERE Tag = 'TXT_KEY_POLICY_CITIZENSHIP_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Expertise[ENDCOLOR][NEWLINE] +20% [ICON_PRODUCTION] Production towards buildings.[NEWLINE]Two Workers appears near the [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_REPUBLIC_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Discipline[ENDCOLOR][NEWLINE]Each City with a garrison generates +1 [ICON_HAPPINESS_1] Happiness and +2 [ICON_CULTURE] Culture. [ICON_GOLD] Gold maintenance for Units reduced by 15%.[NEWLINE]-50% [ICON_WORKER] cost needed to build roads.[NEWLINE][ICON_CONNECTED] City Connections provide +2 [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_POLICY_MILITARY_CASTE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Language_en_US
SET Text = '+1 improvement per worker (100 [ICON_WORKER]) and a Settler appears near the City.'
WHERE Tag = 'TXT_KEY_WONDER_CHICHEN_ITZA_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Gains an additional trade route slot.[NEWLINE]Land Trade Routes gain +50% Range and +5 [ICON_GOLD] Gold. City gains +1 [ICON_FOOD] Food, [ICON_PRODUCTION] Production, [ICON_CULTURE] Culture, and [ICON_PEACE] Faith for every Mountain within 3 tiles of the City. [NEWLINE][NEWLINE]City must be built within 2 tiles of a Mountain that is inside your territory.'
WHERE Tag = 'TXT_KEY_WONDER_MACHU_PICHU_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'When an active worker is in a location where it can do something - say construct a road, build an improvement, or clear land - the Worker Action Panel is visible. This panel displays all actions available to the worker at that location. Click on an action to order the worker to start building. Worker actions use some build cost; hover the cursor over the action to see how much it will cost the worker to complete that action.'
WHERE Tag = 'TXT_KEY_WORKERS_ACTIONPANEL_HEADING2_BODY';

UPDATE Language_en_US
SET Text = 'Technology Required: Trapping[NEWLINE]Construction Cost: 100[ICON_WORKER][NEWLINE]Resources Accessed: Ivory, Fur, Deer'
WHERE Tag = 'TXT_KEY_WORKERS_CAMP_HEADING3_BODY';


UPDATE Language_en_US
SET Text = 'How much does it cost to build an improvement?'
WHERE Tag = 'TXT_KEY_WORKERS_DURATIONTOCONSTRUCT_ADV_QUEST';

UPDATE Language_en_US
SET Text = 'Each improvement type cost a certain amount of worker equipment. The standard amount is 100 [ICON_WORKER], but roads can be cheaper with a policy.'
WHERE Tag = 'TXT_KEY_WORKERS_DURATIONTOCONSTRUCT_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'Cost to Construct'
WHERE Tag = 'TXT_KEY_WORKERS_DURATIONTOCONSTRUCT_HEADING3_TITLE';

UPDATE Language_en_US
SET Text = 'The farm is the earliest and most commonly-constructed improvement. All civilizations begin play knowing how to farm. Farm improvements can be constructed in most tiles, and atop a number of resources:[NEWLINE]Technology Required: Agriculture (acquired at start of game)[NEWLINE]May Be Constructed: Farm improvements cannot be built on ice, mountains or Natural Wonders. They can only be built on hills and desert tiles if the tile is next to a source of fresh water such as rivers, lakes, or another farm improvement. Farms increase the tile''s output by 1 food.[NEWLINE]Cost of Construction: 100 [ICON_WORKER][NEWLINE]Forest: Farms may be constructed in forested tiles once you learn the mining tech. The forest is removed when the farm is built. The cost of the deforestation must be payed before paying for the farm.[NEWLINE]Jungle: Farms may be constructed in jungle tiles once you learn the bronze working tech. The jungle is removed when the farm is built.[NEWLINE]Marsh: Farms may be constructed in marsh tiles when you learn the masonry tech. The marsh is removed when the farm is constructed.[NEWLINE]Resources Accessed: Farms can access the wheat resource, increasing the tile''s output by 1 food and 1 gold.'
WHERE Tag = 'TXT_KEY_WORKERS_FARM_HEADING3_BODY';

DELETE FROM Concepts WHERE Type='CONCEPT_WORKERS_IMPROVEMENTS_LEAVING';

UPDATE Language_en_US
SET Text = 'Lumbermills increase a forested tile''s output by 1 production, without destroying the forest.[NEWLINE]Technology Required: Machinery. Construction Cost: 100 [ICON_WORKER][NEWLINE]May Be Constructed On: Forests'
WHERE Tag = 'TXT_KEY_WORKERS_LUMBERMILL_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'The mine improvement is learned when your civilization acquires the mining tech. It can be used to increase the production output of many tiles, and it also unlocks a variety of resources. The mine is as important as farming.[NEWLINE]Technology Required: Mining[NEWLINE]May be Constructed: Only on Hill tiles. Mines increase a tile''s output by 1 production.[NEWLINE]Cost of Construction: 100 [ICON_WORKER][NEWLINE]Forest: Mines may be constructed in forested tiles. The forest is removed when the mine is built.[NEWLINE]Jungle: Mines may be constructed in jungle tiles once you learn the bronze working tech. The jungle is removed when the mine is built.[NEWLINE]Marsh: Mines may be constructed in marsh tiles when you learn the masonry tech. The marsh is removed when the mine is constructed.[NEWLINE]Resources Accessed: Mines unlock the iron, coal, aluminum, uranium, gems, gold and silver resources. See the individual resources'' entries for details.'
WHERE Tag = 'TXT_KEY_WORKERS_MINE_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'Technology Required: Biology[NEWLINE]Construction Cost: 100 [ICON_WORKER][NEWLINE]Resource Accessed: Oil (on land; offshore platform required for oil found at sea)'
WHERE Tag = 'TXT_KEY_WORKERS_OILWELL_HEADING3_BODY'

UPDATE Language_en_US
SET Text = 'Technology Required: Animal Husbandry[NEWLINE]Construction Cost: 100 [ICON_WORKER][NEWLINE]Resources Accessed: Horse, Cattle'
WHERE Tag = 'TXT_KEY_WORKERS_PASTURE_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'Technology Required: Calendar[NEWLINE]Construction Cost: 100 [ICON_WORKER][NEWLINE]Resources Accessed: Bananas, Dye, Silk, Spices, Sugar, Cotton, Wine, Incense'
WHERE Tag = 'TXT_KEY_WORKERS_PLANTATION_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'Technology Required: Masonry[NEWLINE]Construction Cost: 100 [ICON_WORKER][NEWLINE]Resource Accessed: Marble'
WHERE Tag = 'TXT_KEY_WORKERS_QUARRY_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'A worker may repair a pillaged road or improvement. It costs a worker 50 [ICON_WORKER] to repair any road or improvement.'
WHERE Tag = 'TXT_KEY_WORKERS_REPAIRINGROADS_HEADING3_BODY';

DELETE FROM Concepts WHERE Type='CONCEPT_WORKERS_IMPROVEMENTS_TIME_LEFT';

UPDATE Language_en_US
SET Text = 'How much it costs to remove a feature?'
WHERE Tag = 'TXT_KEY_WORKERS_TIMETOCLEARLAND_ADV_QUEST';

UPDATE Language_en_US
SET Text = 'Remove Forest, Jungle, Marsh: 100 [ICON_WORKER]'
WHERE Tag = 'TXT_KEY_WORKERS_TIMETOCLEARLAND_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'Cost to Clear Land'
WHERE Tag = 'TXT_KEY_WORKERS_TIMETOCLEARLAND_HEADING3_TITLE';

UPDATE Language_en_US
SET Text = 'If there is a road between your capital and another of your cities, those cities have a "trade route" / urban connection. Urban connection doesn''t gives you anything each turn, unless you pick some policies. (Phares can also create trade routes between coastal cities.) See the section on Trade Routes/urban connections for details. Do not confused these with the trade routes created by caravans.'
WHERE Tag = 'TXT_KEY_WORKERS_TRADEROUTES_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'The village increases output of a tile by 3 gold and 1 culture. It does not access a resource. It generates additional gold and production if on a route and/or if built on a trade route.[NEWLINE]Technology Required: Currency[NEWLINE]Construction Cost: 100 [ICON_WORKER][NEWLINE]May Be Constructed On: Any land tile but ice. Cannot be built adjacent to one another.'
WHERE Tag = 'TXT_KEY_WORKERS_TRADINGPOST_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'An unbroken chain of Railroads allows Units to move extremely quickly through Tiles.'
WHERE Tag = 'TXT_KEY_BUILD_RAILROAD_HELP';


UPDATE Language_en_US
SET Text = 'How much does it cost to construct a road?'
WHERE Tag = 'TXT_KEY_WORKERS_CONSTRUCTROAD_ADV_QUEST';

UPDATE Language_en_US
SET Text = 'It costs a worker 100 [ICON_WORKER] to construct a road in any tile.'
WHERE Tag = 'TXT_KEY_WORKERS_CONSTRUCTROAD_HEADING3_BODY';

UPDATE Language_en_US
SET Text = 'Cost to Construct a Road'
WHERE Tag = 'TXT_KEY_WORKERS_CONSTRUCTROAD_HEADING3_TITLE';

UPDATE Language_en_US
SET Text = 'Roads and Railroads are free of maintenance.'
WHERE Tag = 'TXT_KEY_EO_EX_IMPROVEMENTS';

UPDATE Language_en_US
SET Text = 'Trade Routes are established between two cities of different civilizations, providing Gold to each every turn. The civilization that the Trade Route originates from gets a larger sum of Gold than the destination civilization. The amount of Gold a Trade Route produces is dependent upon the resource diversity and revenue of the origin city.[NEWLINE][NEWLINE]Trade Routes can also be created between two cities of the same civilization. Once the origin city has a Granary, it can send Food to the destination city, and once it has a Workshop it can send Production. These types of internal Trade Routes do not benefit the origin city.[NEWLINE][NEWLINE]You can only have a limited number of Trade Routes at any time. Researching certain technologies increases the number of routes you have available. For details about your existing Trade Routes, open the Trade Route Overview screen, located in the Additional Information drop-down menu.[NEWLINE][NEWLINE]When a trade route end, roads are constructed along its path. If you are at least in the modern era, it construct a railroad instead.'
WHERE Tag = 'TXT_KEY_TRADE_ROUTES_HEADING2_BODY';

