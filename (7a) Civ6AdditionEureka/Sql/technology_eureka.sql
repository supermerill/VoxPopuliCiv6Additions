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
UPDATE Technologies SET EurekaPerMillion = 50000, MaxEurekaCount = 6, Mod1000EurekaForUI = 5000 WHERE Type = 'TECH_STEAM_POWER';
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
VALUES ('Eureka: -5% cost per tundra at 2 hex of your city (max 6).'
,'TXT_KEY_TECH_TRAPPING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per wheat at 2 hex of your city (max 3)'
,'TXT_KEY_TECH_POTTERY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per jungle at 2 hex of your city (max 6)'
,'TXT_KEY_TECH_THE_WHEEL_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per unfeature hill at 2 hex of your city (max 6)'
,'TXT_KEY_TECH_ANIMAL_HUSBANDRY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% cost per mineable luxury at 2 hex of your city (max 5)'
,'TXT_KEY_TECH_MINING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per coastal city (max 3)'
,'TXT_KEY_TECH_SAILING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per desert and -4% per mountain tile in 2 hex of a city (max 30%)'
,'TXT_KEY_TECH_HORSEBACK_RIDING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost for each plantation luxury in 2 hex of a city (max 5)'
,'TXT_KEY_TECH_CALENDAR_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost for each newly trained archer (max 6)'
,'TXT_KEY_TECH_ARCHERY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per quarry luxury (max 3)'
,'TXT_KEY_TECH_MASONRY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per forest in 2 hex of a city (max 15)'
,'TXT_KEY_TECH_BRONZE_WORKING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per work boat built (max 6)'
,'TXT_KEY_TECH_OPTICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per classical technology (max 6)'
,'TXT_KEY_TECH_WRITING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per market built (max 3)'
,'TXT_KEY_TECH_MATHEMATICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per city with fresh water'
,'TXT_KEY_TECH_CONSTRUCTION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost for each spearman trained (max 6)'
,'TXT_KEY_TECH_IRON_WORKING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% cost per 4 culture per turn (max 30%)'
,'TXT_KEY_TECH_DRAMA_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per friendly city-state'
,'TXT_KEY_TECH_PHILOSOPHY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -15% cost per engineer expanded'
,'TXT_KEY_TECH_ENGINEERING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per 100 gold (at normal speed) in your treasury (max 30%)'
,'TXT_KEY_TECH_CURRENCY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per forest chopped'
,'TXT_KEY_TECH_METAL_CASTING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost for each scientist expanded (max 3)'
,'TXT_KEY_TECH_EDUCATION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% cost for each missionary trained (max 5)'
,'TXT_KEY_TECH_THEOLOGY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% cost per wall built (max 5)'
,'TXT_KEY_TECH_CHIVALRY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% cost per catapult trained (max 5)'
,'TXT_KEY_TECH_PHYSICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per swordman trained (max 6)'
,'TXT_KEY_TECH_STEEL_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per allied city-state (max 4)'
,'TXT_KEY_TECH_CIVIL_SERVICE_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per Luxuries in a radius of 2 hex of your cities (max 15)'
,'TXT_KEY_TECH_GUILDS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per war boat constructed (max 6)'
,'TXT_KEY_TECH_COMPASS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -4% cost for each composite bowman trained (max 5)'
,'TXT_KEY_TECH_MACHINERY_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per 20 gold per turn (max 30%)'
,'TXT_KEY_TECH_BANKING_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per 5 tourism per turn (max 30%)'
,'TXT_KEY_TECH_PRINTING_PRESS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per 15 faith per turn (max 30%)'
,'TXT_KEY_TECH_ASTRONOMY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per 10 military power (max 30%)'
,'TXT_KEY_TECH_GUNPOWDER_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per 30 science per turn (max 30%)'
,'TXT_KEY_TECH_CHEMISTRY_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per wonder (max 6)'
,'TXT_KEY_TECH_ARCHITECTURE_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% cost per incoming traded luxury (max 10)' --todo
,'TXT_KEY_TECH_ECONOMICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per great work (max 15)'
,'TXT_KEY_TECH_ACOUSTICS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per 10 sea tile revealed (max 30%)'
,'TXT_KEY_TECH_NAVIGATION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per 20 Combat Experience (max 30%)'
,'TXT_KEY_TECH_METALLURGY_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -4% cost per Adcademy (max 5)'
,'TXT_KEY_TECH_SCIENTIFIC_THEORY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: nothing'  --todo
,'TXT_KEY_TECH_RAILROAD_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per 5 production per city (max 30%)'
,'TXT_KEY_TECH_STEAM_POWER_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -1% cost per iron (max 20)'
,'TXT_KEY_TECH_RIFLING_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -1% cost per Golden age turn at normal speed (max 30)'
,'TXT_KEY_TECH_ARCHAEOLOGY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per horse (max 15)'
,'TXT_KEY_TECH_FERTILIZER_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per coal mine worked (max 3)'
,'TXT_KEY_TECH_INDUSTRIALIZATION_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per coal (max 15)'
,'TXT_KEY_TECH_DYNAMITE_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% cost per great general expanded (max 5)'
,'TXT_KEY_TECH_MILITARY_SCIENCE_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% cost per 3 population per city (max 10)'
,'TXT_KEY_TECH_BIOLOGY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per Merchant expanded (max 6)'
,'TXT_KEY_TECH_ELECTRICITY_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -10% cost per monopoly (max 3)' --todo
,'TXT_KEY_TECH_CORPORATIONS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -6% cost per factory (max 5)'
,'TXT_KEY_TECH_REPLACEABLE_PARTS_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% cost per steam ship built or upgraded (max 10)'
,'TXT_KEY_TECH_COMBUSTION_HELP_EUREKA');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -2% cost per oil (max 10)'
,'TXT_KEY_TECH_PLASTIC_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -5% cost per musician expanded (max 6)'
,'TXT_KEY_TECH_RADIO_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -1% cost per triplan built in the world (max 30)'
,'TXT_KEY_TECH_FLIGHT_HELP_EUREKA');
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: -3% cost per war fought (max 8)'
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

