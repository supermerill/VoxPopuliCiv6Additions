-- eurekasLib.sql
-- Author: merill
-- DateCreated: 11/9/2016 8:08:46 PM
--------------------------------------------------------------
INSERT INTO Notifications (NotificationType, Welcomeness)
VALUES ('NOTIFICATION_EUREKA_UPDATE', 0);

-- reduction  = nbEureka * EurekaPerMillion / 1 000 000
-- 10 000 = 1% reduction per eureka count
ALTER TABLE Technologies ADD EurekaPerMillion INTEGER DEFAULT 0;
-- nbEureka <= MaxEurekaCount
ALTER TABLE Technologies ADD MaxEurekaCount INTEGER DEFAULT 0;
-- only show MinEurekaForUI*(nbEureka/MinEurekaForUI) on ui
ALTER TABLE Technologies ADD Mod1000EurekaForUI INTEGER DEFAULT 1000;
--UPDATE Technologies SET Mod1000EurekaForUI = MinEurekaForUI;

-- text
INSERT INTO Language_en_US (Text, Tag)
VALUES ('Eureka: {5_color}{1_NbEurekas} ({2_PercentEurekas}%){6_endcolor} / {3_NbMaxEurekas} ({4_PercentMaxEurekas}%)'
,'TXT_KEY_EUREKA_TOOLTIP');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('{1_techname} :[NEWLiNE] '
,'TXT_KEY_EUREKA_NOTIFICATION');

INSERT INTO Language_en_US (Text, Tag)
VALUES ('{1_techName} Eureka: +{2_modification}'
,'TXT_KEY_EUREKA_NOTIFICATION_TITLE');
