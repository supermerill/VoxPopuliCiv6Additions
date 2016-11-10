-- Insert SQL Rules Here 



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
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_IRON_WORKING';

UPDATE Technologies SET EurekaPerMillion = 10000 WHERE Type = 'TECH_DRAMA';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_PHILOSOPHY';
UPDATE Technologies SET EurekaPerMillion = 150000 WHERE Type = 'TECH_ENGINEERING';
UPDATE Technologies SET EurekaPerMillion = 10000 WHERE Type = 'TECH_CURRENCY';
UPDATE Technologies SET EurekaPerMillion = 50000 WHERE Type = 'TECH_METAL_CASTING';

--- done to here
--mediaval
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_EDUCATION';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_THEOLOGY';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_CHIVALRY';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_PHYSICS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_STEEL';

UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_CIVIL_SERVICE';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_GUILDS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_COMPASS';
UPDATE Technologies SET EurekaPerMillion = 100000 WHERE Type = 'TECH_MACHINERY';
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



