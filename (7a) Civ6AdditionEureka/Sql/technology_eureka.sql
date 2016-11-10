-- eurekas.sql
-- Author: merill
-- DateCreated: 11/9/2016 8:08:46 PM
--------------------------------------------------------------

ALTER TABLE Technologies ADD EurekaPerMillion INTEGER DEFAULT 0;
ALTER TABLE Technologies ADD MaxEurekaCount INTEGER DEFAULT 3;

-- 10 000 = 1% reduction per eureka count
--ancient
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_TRAPPING';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_POTTERY';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_THE_WHEEL';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_ANIMAL_HUSBANDRY';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_MINING';

UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_SAILING';
UPDATE Technologies SET EurekaPerMillion = 20000 WHERE Type = 'TECH_ARCHERY';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_CALENDAR';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_HORSEBACK_RIDING';
UPDATE Technologies SET EurekaPerMillion = 30000 WHERE Type = 'TECH_MASONRY';
UPDATE Technologies SET EurekaPerMillion = 20000 WHERE Type = 'TECH_BRONZE_WORKING';

--classical
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_OPTICS';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_WRITING';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_MATHEMATICS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_CONSTRUCTION';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_IRON_WORKING';

UPDATE Technologies SET EurekaPerMillion = 10000 WHERE Type = 'TECH_DRAMA';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_PHILOSOPHY';
UPDATE Technologies SET EurekaPerMillion = 150000 WHERE Type = 'TECH_ENGINEERING';
UPDATE Technologies SET EurekaPerMillion = 10000 WHERE Type = 'TECH_CURRENCY';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_METAL_CASTING';

--medieval
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_EDUCATION';
UPDATE Technologies SET EurekaPerMillion = 60000 WHERE Type = 'TECH_THEOLOGY';
UPDATE Technologies SET EurekaPerMillion = 60000 WHERE Type = 'TECH_CHIVALRY';
UPDATE Technologies SET EurekaPerMillion = 60000 WHERE Type = 'TECH_PHYSICS';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_STEEL';

UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_CIVIL_SERVICE';
UPDATE Technologies SET EurekaPerMillion = 20000 WHERE Type = 'TECH_GUILDS';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_COMPASS';
UPDATE Technologies SET EurekaPerMillion = 40000 WHERE Type = 'TECH_MACHINERY';

--- done to here
--renaissance
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_BANKING';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_PRINTING_PRESS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_ASTRONOMY';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_GUNPOWDER';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_CHEMISTRY';

UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_ARCHITECTURE';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_ECONOMICS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_ACOUSTICS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_NAVIGATION';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_METALLURGY';

-- todo: text
UPDATE Language_en_US
SET Text = 'Eureka: build a scout (10% each, max 30%).'
WHERE Tag = 'TXT_KEY_TECH_TRAPPING_HELP_EUREKA';
UPDATE Language_en_US
SET Text = '[newline]Eurekas: {1_NbEurekas} ({3_PercentEurekas}%) / {2_NbMaxEurekas} ({4_PercentMaxEurekas}%)'
WHERE Tag = 'TXT_KEY_EUREKA_TOOLTIP';

UPDATE Language_en_US
SET Value = 'Eureka: -10% cost per policy unlocked (max 3)'
WHERE Name = 'TXT_KEY_TECH_POTTERY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -10% cost per monument or shrine (max 3)'
WHERE Name = 'TXT_KEY_TECH_THE_WHEEL_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -10% cost for each newly trained worker (max 3)'
WHERE Name = 'TXT_KEY_TECH_ANIMAL_HUSBANDRY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -10% cost for each newly trained warrior (max 3)'
WHERE Name = 'TXT_KEY_TECH_MINING_HELP_EUREKA';

UPDATE Language_en_US
SET Value = 'Eureka: -10% cost per coastal city (max 3)'
WHERE Name = 'TXT_KEY_TECH_SAILING_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -2% cost per desert and -4% mountin tile in 2 hex of a city (max 30%)'
WHERE Name = 'TXT_KEY_TECH_ARCHERY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -10% cost for each plantation resource in 2 hex of a city (max 5)'
WHERE Name = 'TXT_KEY_TECH_CALENDAR_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost for each newly trained archer (max 3)'
WHERE Name = 'TXT_KEY_TECH_HORSEBACK_RIDING_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -3% cost per building (max 10)'
WHERE Name = 'TXT_KEY_TECH_MASONRY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -2% cost per forest in 2 hex of a city (max 15)'
WHERE Name = 'TXT_KEY_TECH_BRONZE_WORKING_HELP_EUREKA';

UPDATE Language_en_US
SET Value = 'Eureka: -10% cost per work boat built (max 3)'
WHERE Name = 'TXT_KEY_TECH_TECH_OPTICS_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost per classical technology (max 6)'
WHERE Name = 'TXT_KEY_TECH_TECH_WRITING_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -10% cost per market built (max 3)'
WHERE Name = 'TXT_KEY_TECH_TECH_MATHEMATICS_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -10% cost per city with fresh water'
WHERE Name = 'TXT_KEY_TECH_TECH_CONSTRUCTION_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost for each spearman trained (max 6)'
WHERE Name = 'TXT_KEY_TECH_TECH_IRON_WORKING_HELP_EUREKA';

UPDATE Language_en_US
SET Value = 'Eureka: -1% cost per culture per turn, kept at max (max 30)'
WHERE Name = 'TXT_KEY_TECH_TECH_DRAMA_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost per friendly city-state'
WHERE Name = 'TXT_KEY_TECH_TECH_PHILOSOPHY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -15% cost per born engineer'
WHERE Name = 'TXT_KEY_TECH_TECH_ENGINEERING_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -1% cost per cost per gold per turn (without spending), kept at max (max 30)'
WHERE Name = 'TXT_KEY_TECH_TECH_CURRENCY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost per forest chopped'
WHERE Name = 'TXT_KEY_TECH_TECH_METAL_CASTING_HELP_EUREKA';

UPDATE Language_en_US
SET Value = 'Eureka: -10% cost for each scientist born (max 3)'
WHERE Name = 'TXT_KEY_TECH_TECH_EDUCATION_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -6% cost for each missionary trained (max 5)'
WHERE Name = 'TXT_KEY_TECH_TECH_THEOLOGY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -6% cost per wall built (max 5)'
WHERE Name = 'TXT_KEY_TECH_TECH_CHIVALRY_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -6% cost per catapult trained (max 5)'
WHERE Name = 'TXT_KEY_TECH_TECH_PHYSICS_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost per swordman trained (max 6)'
WHERE Name = 'TXT_KEY_TECH_TECH_STEEL_HELP_EUREKA';

UPDATE Language_en_US
SET Value = 'Eureka: -5% cost per allied city-state (max 4)'
WHERE Name = 'TXT_KEY_TECH_TECH_CIVIL_SERVICE_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -2% cost per Luxuries in a radius of 2 hex of your cities (max 15)'
WHERE Name = 'TXT_KEY_TECH_TECH_GUILDS_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -5% cost per war boat constructed (max 6)'
WHERE Name = 'TXT_KEY_TECH_TECH_COMPASS_HELP_EUREKA';
UPDATE Language_en_US
SET Value = 'Eureka: -4% cost for each composite bowman trained (max 5)'
WHERE Name = 'TXT_KEY_TECH_TECH_MACHINERY_HELP_EUREKA';

--UPDATE Language_en_US
--SET Value = 'Eureka: -% cost per'
--WHERE Name = 'TXT_KEY_TECH__HELP_EUREKA';

--activate TileFeatureChanged event
UPDATE CustomModOptions
SET Value = '1'
WHERE Name = 'EVENTS_TILE_IMPROVEMENTS';

--activate TileFeatureChanged event
UPDATE CustomModOptions
SET Value = '1'
WHERE Name = 'EVENTS_GREAT_PEOPLE';

--activate CityTrained event
UPDATE CustomModOptions
SET Value = '1'
WHERE Name = 'EVENTS_CITY';



