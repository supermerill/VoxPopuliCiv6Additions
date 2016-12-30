
-- activate the dll code
UPDATE CustomModOptions SET Value = '1' WHERE Name = 'CITY_STATE_SCALE';

-- set defines
INSERT INTO Defines (Name, Value)
SELECT 'CITY_STATE_SCALE_PER_CITY_MOD', '50';

UPDATE Defines SET Value = 20 WHERE Name = 'FRIENDSHIP_THRESHOLD_FRIENDS';
UPDATE Defines SET Value = 40 WHERE Name = 'FRIENDSHIP_THRESHOLD_ALLIES';

-- go to 30 / 60
INSERT INTO Defines (Name, Value)
SELECT 'FRIENDSHIP_THRESHOLD_MOD_MEDIEVAL', '150';

-- go to 50 / 100
INSERT INTO Defines (Name, Value)
SELECT 'FRIENDSHIP_THRESHOLD_MOD_INDUSTRIAL', '250';