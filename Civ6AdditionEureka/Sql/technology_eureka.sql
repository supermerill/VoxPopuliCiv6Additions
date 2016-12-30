-- eurekas.sql
-- Author: merill
-- DateCreated: 11/9/2016 8:08:46 PM
--------------------------------------------------------------

--increase cost of thecnologies, cut at 5 cost
UPDATE Technologies SET Cost = Cost*1.15;
UPDATE Technologies SET Cost = Cost/5;
UPDATE Technologies SET Cost = Cost*5;

-- 10 000 = 1% reduction per eureka count
--ancient
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_TRAPPING';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_POTTERY';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_THE_WHEEL';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_ANIMAL_HUSBANDRY';
UPDATE Technologies SET EurekaPerMillion = 60000, MaxEurekaCount = 5 WHERE Type = 'TECH_MINING';

UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_SAILING';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_HORSEBACK_RIDING';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 5 WHERE Type = 'TECH_CALENDAR';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_MASONRY';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_BRONZE_WORKING';

--classical
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_OPTICS';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_WRITING';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_MATHEMATICS';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_CONSTRUCTION';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_IRON_WORKING';

UPDATE Technologies SET EurekaPerMillion = 30000, MaxEurekaCount = 10, Mod1000EurekaForUI = 4000 WHERE Type = 'TECH_DRAMA';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_PHILOSOPHY';
UPDATE Technologies SET EurekaPerMillion = 150000, MaxEurekaCount = 2 WHERE Type = 'TECH_ENGINEERING';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 100000 WHERE Type = 'TECH_CURRENCY';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_METAL_CASTING';

--medieval
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_EDUCATION';
UPDATE Technologies SET EurekaPerMillion = 60000, MaxEurekaCount = 5 WHERE Type = 'TECH_THEOLOGY';
UPDATE Technologies SET EurekaPerMillion = 60000, MaxEurekaCount = 5 WHERE Type = 'TECH_CHIVALRY';
UPDATE Technologies SET EurekaPerMillion = 60000, MaxEurekaCount = 5 WHERE Type = 'TECH_PHYSICS';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_STEEL';

UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 5 WHERE Type = 'TECH_CIVIL_SERVICE';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_GUILDS';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_COMPASS';
UPDATE Technologies SET EurekaPerMillion = 40000, MaxEurekaCount = 6 WHERE Type = 'TECH_MACHINERY';

--renaissance
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 20000 WHERE Type = 'TECH_BANKING';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 5000 WHERE Type = 'TECH_PRINTING_PRESS';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 15000 WHERE Type = 'TECH_ASTRONOMY';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15, Mod1000EurekaForUI = 10000 WHERE Type = 'TECH_GUNPOWDER';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 30000 WHERE Type = 'TECH_CHEMISTRY';

UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_ARCHITECTURE';
--UPDATE Technologies SET EurekaPerMillion = 30000, MaxEurekaCount = 10 WHERE Type = 'TECH_ECONOMICS';
UPDATE Technologies SET EurekaPerMillion = 0, MaxEurekaCount = 10 WHERE Type = 'TECH_ECONOMICS'; --todo
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_ACOUSTICS';
UPDATE Technologies SET EurekaPerMillion = 250, MaxEurekaCount = 1200, Mod1000EurekaForUI = 25 WHERE Type = 'TECH_NAVIGATION';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_METALLURGY';

--industrial
UPDATE Technologies SET EurekaPerMillion = 40000, MaxEurekaCount = 5 WHERE Type = 'TECH_SCIENTIFIC_THEORY';
UPDATE Technologies SET EurekaPerMillion = 0, MaxEurekaCount = 6 WHERE Type = 'TECH_RAILROAD';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 10000 WHERE Type = 'TECH_STEAM_POWER';
UPDATE Technologies SET EurekaPerMillion = 10000, MaxEurekaCount = 20 WHERE Type = 'TECH_RIFLING';

UPDATE Technologies SET EurekaPerMillion = 1000, MaxEurekaCount = 300, Mod1000EurekaForUI = 100 WHERE Type = 'TECH_ARCHAEOLOGY';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_FERTILIZER';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_INDUSTRIALIZATION';
UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 15 WHERE Type = 'TECH_DYNAMITE';
UPDATE Technologies SET EurekaPerMillion = 60000, MaxEurekaCount = 5 WHERE Type = 'TECH_MILITARY_SCIENCE';

--modern
UPDATE Technologies SET EurekaPerMillion = 30000, MaxEurekaCount = 10, Mod1000EurekaForUI = 3000 WHERE Type = 'TECH_BIOLOGY';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_ELECTRICITY';
UPDATE Technologies SET EurekaPerMillion = 100000, MaxEurekaCount = 3 WHERE Type = 'TECH_CORPOATIONS';
UPDATE Technologies SET EurekaPerMillion = 60000, MaxEurekaCount = 5 WHERE Type = 'TECH_REPLACEABLE_PARTS';
UPDATE Technologies SET EurekaPerMillion = 30000, MaxEurekaCount = 10 WHERE Type = 'TECH_COMBUSTION';

UPDATE Technologies SET EurekaPerMillion = 20000, MaxEurekaCount = 10 WHERE Type = 'TECH_PLASTIC';
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6 WHERE Type = 'TECH_RADIO';
UPDATE Technologies SET EurekaPerMillion = 10000, MaxEurekaCount = 30 WHERE Type = 'TECH_FLIGHT';
UPDATE Technologies SET EurekaPerMillion = 30000, MaxEurekaCount = 8 WHERE Type = 'TECH_BALLISTICS';

-- text
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Tundra[ENDCOLOR] within 2 tiles of your cities. Max 30%'
,'TXT_KEY_TECH_TRAPPING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [ICON_RES_WHEAT] [COLOR_POSITIVE_TEXT]Wheat[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_POTTERY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Jungle[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_THE_WHEEL_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Hill[ENDCOLOR] that does not have a feature within 2 tiles of your cities.'
,'TXT_KEY_TECH_ANIMAL_HUSBANDRY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Mineable Luxury[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_MINING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Coastal City[ENDCOLOR] settled.'
,'TXT_KEY_TECH_SAILING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Desert[ENDCOLOR] and -4% for every [COLOR_POSITIVE_TEXT]Mountain[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_HORSEBACK_RIDING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Plantation Luxury[ENDCOLOR] within 2 tiles of your cities. Max 50%'
,'TXT_KEY_TECH_CALENDAR_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Archer[ENDCOLOR] trained.'
,'TXT_KEY_TECH_ARCHERY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Quarry Luxury[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_MASONRY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Forest[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_BRONZE_WORKING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Work Boat[ENDCOLOR] built.'
,'TXT_KEY_TECH_OPTICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Classical Technology[ENDCOLOR] researched.'
,'TXT_KEY_TECH_WRITING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Market[ENDCOLOR] built.'
,'TXT_KEY_TECH_MATHEMATICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every city with [COLOR_POSITIVE_TEXT]Access to Fresh Water[ENDCOLOR].'
,'TXT_KEY_TECH_CONSTRUCTION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Spearman[ENDCOLOR] trained.'
,'TXT_KEY_TECH_IRON_WORKING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]+4 [ICON_CULTURE] Culture per turn[ENDCOLOR] you produce.'
,'TXT_KEY_TECH_DRAMA_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [ICON_CITY_STATE] City-State [COLOR_POSITIVE_TEXT]Friend[ENDCOLOR].'
,'TXT_KEY_TECH_PHILOSOPHY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -15% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT][ICON_GREAT_ENGINEER] Great Engineer[ENDCOLOR] expended.'
,'TXT_KEY_TECH_ENGINEERING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]100 [ICON_GOLD] Gold (at normal speed) in your treasury[ENDCOLOR].'
,'TXT_KEY_TECH_CURRENCY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Forest[ENDCOLOR] chopped.'
,'TXT_KEY_TECH_METAL_CASTING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT][ICON_GREAT_SCIENTIST] Great Scientist[ENDCOLOR] expended.'
,'TXT_KEY_TECH_EDUCATION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Missionary[ENDCOLOR] recruited.'
,'TXT_KEY_TECH_THEOLOGY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Walls[ENDCOLOR] built.'
,'TXT_KEY_TECH_CHIVALRY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Catapult[ENDCOLOR] constructed.'
,'TXT_KEY_TECH_PHYSICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Swordsman[ENDCOLOR] trained.'
,'TXT_KEY_TECH_STEEL_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [ICON_CITY_STATE] City-State [COLOR_POSITIVE_TEXT]Allies[ENDCOLOR].'
,'TXT_KEY_TECH_CIVIL_SERVICE_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Luxuries[ENDCOLOR] within 2 tiles of your cities.'
,'TXT_KEY_TECH_GUILDS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Trireme[ENDCOLOR] or [COLOR_POSITIVE_TEXT]Galleass[ENDCOLOR] constructed.'
,'TXT_KEY_TECH_COMPASS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -4% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Composite Bowman[ENDCOLOR] trained.'
,'TXT_KEY_TECH_MACHINERY_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]+20 [ICON_GOLD] Gold per turn[ENDCOLOR] you produce.'
,'TXT_KEY_TECH_BANKING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]+5 [ICON_TOURISM] Tourism per turn[ENDCOLOR] you produce.'
,'TXT_KEY_TECH_PRINTING_PRESS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]+15 [ICON_PEACE] Faith per turn[ENDCOLOR] you produce.'
,'TXT_KEY_TECH_ASTRONOMY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]10 Military Might[ENDCOLOR].'
,'TXT_KEY_TECH_GUNPOWDER_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]+30 [ICON_RESEARCH] Science per turn[ENDCOLOR] you produce.'
,'TXT_KEY_TECH_CHEMISTRY_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Wonder[ENDCOLOR] controlled.'
,'TXT_KEY_TECH_ARCHITECTURE_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Imported Luxury[ENDCOLOR].' --todo
,'TXT_KEY_TECH_ECONOMICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_GREAT_WORK] Great Works[ENDCOLOR] created.'
,'TXT_KEY_TECH_ACOUSTICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]10 Sea Tile[ENDCOLOR] revealed.'
,'TXT_KEY_TECH_NAVIGATION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]20 National Combat Experience[ENDCOLOR]'
,'TXT_KEY_TECH_METALLURGY_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -4% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Academy[ENDCOLOR] constructed.'
,'TXT_KEY_TECH_SCIENTIFIC_THEORY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: nothing'  --todo
,'TXT_KEY_TECH_RAILROAD_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]City with a [ICON_PRODUCTION] Production of 5+[ENDCOLOR].'
,'TXT_KEY_TECH_STEAM_POWER_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -1% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_RES_IRON] Iron[ENDCOLOR] controlled.'
,'TXT_KEY_TECH_RIFLING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -1% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_GOLDEN_AGE] Golden Age turn passed at normal speed[ENDCOLOR].'
,'TXT_KEY_TECH_ARCHAEOLOGY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_RES_HORSE] Horse[ENDCOLOR] controlled.'
,'TXT_KEY_TECH_FERTILIZER_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_RES_COAL] Worked Coal Mine[ENDCOLOR].'
,'TXT_KEY_TECH_INDUSTRIALIZATION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_RES_COAL] Coal[ENDCOLOR] controlled.'
,'TXT_KEY_TECH_DYNAMITE_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT][ICON_GREAT_GENERAL] Great General[ENDCOLOR] expended.'
,'TXT_KEY_TECH_MILITARY_SCIENCE_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]City with a [ICON_CITIZEN] Population of 3+[ENDCOLOR].'
,'TXT_KEY_TECH_BIOLOGY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT][ICON_GREAT_MERCHANT] Great Merchant[ENDCOLOR] expended.'
,'TXT_KEY_TECH_ELECTRICITY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Resource Monopoly[ENDCOLOR] owned.' --todo
,'TXT_KEY_TECH_CORPORATIONS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Factory[ENDCOLOR] built.'
,'TXT_KEY_TECH_REPLACEABLE_PARTS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Ironclad[ENDCOLOR] or [COLOR_POSITIVE_TEXT]Cruiser[ENDCOLOR] constructed or upgraded.'
,'TXT_KEY_TECH_COMBUSTION_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT][ICON_RES_OIL] Oil[ENDCOLOR] controlled.'
,'TXT_KEY_TECH_PLASTIC_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT][ICON_GREAT_MUSICIAN] Great Musician[ENDCOLOR] expended.'
,'TXT_KEY_TECH_RADIO_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -1% [ICON_RESEARCH] Cost for each [COLOR_POSITIVE_TEXT]Triplane[ENDCOLOR] built in the world by other Civilizations.'
,'TXT_KEY_TECH_FLIGHT_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% [ICON_RESEARCH] Cost for every [COLOR_POSITIVE_TEXT]Past War[ENDCOLOR] fought.'
,'TXT_KEY_TECH_BALLISTICS_HELP_EUREKA');


--INSERT INTO Language_en_US (Text, Tag)
--VALUES ('Eureka: -% cost per'
--,'TXT_KEY__HELP_EUREKA');

--activate TileFeatureChanged event
UPDATE CustomModOptions SET Value = 1 WHERE Name = 'EVENTS_TILE_IMPROVEMENTS';

--activate GreatPersonExpended event
UPDATE CustomModOptions SET Value = 1 WHERE Name = 'EVENTS_GREAT_PEOPLE';

--activate CityTrained event
UPDATE CustomModOptions SET Value = 1 WHERE Name = 'EVENTS_CITY';

--activate UnitCityFounded event
--UPDATE CustomModOptions
--SET Value = '1'
--WHERE Name = 'EVENTS_UNIT_FOUNDED';

--activate TileRevealed event
UPDATE CustomModOptions SET Value = 1 WHERE Name = 'EVENTS_TILE_REVEALED';

--activate UnitUpgraded event
UPDATE CustomModOptions SET Value = 1 WHERE Name = 'EVENTS_UNIT_UPGRADES';

