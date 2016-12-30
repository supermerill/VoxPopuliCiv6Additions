
-- activate the dll code
UPDATE CustomModOptions SET Value = '1' WHERE Name = 'NO_TOURISM_CONQUEST';

-- set defines
INSERT INTO Defines (Name, Value)
SELECT 'BUILDING_CLASS_ENABLE_TOURISM_ANNEXED', (SELECT ID FROM BuildingClasses WHERE Type = 'BUILDINGCLASS_HOTEL');

INSERT INTO Defines (Name, Value)
SELECT 'TOURISM_ANNEXED_MOD', '25';

UPDATE Defines SET Value = '300' WHERE Name = 'CULTURE_LEVEL_DOMINANT'
