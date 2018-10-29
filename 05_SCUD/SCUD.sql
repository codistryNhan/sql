-- Import the GlobalFirePower.csv into a new table within a localhost database.
-- Add a primary key to the table.
ALTER TABLE db.globalfirepower
ADD COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT FIRST;

-- Find all of those rows that have a "ReservePersonnel" of 0 and then remove these rows from the dataset.
SELECT * FROM db.globalfirepower WHERE ReservePersonnel = 0;
DELETE FROM db.globalfirepower WHERE ReservePersonnel = 0;

-- Every country in the world at least deserves one "FighterAircraft". Only seems fair. Lets add one to each nation that has none.
UPDATE db.globalfirepower
SET FighterAircraft = 1
WHERE FighterAircraft = 0;

-- Oh no! By updating this column, the values within "TotalAircraftStrength" column are now off for those nations! We've got to add one to the original number.
UPDATE db.globalfirepower
SET TotalAircraftStrength = TotalAircraftStrength + 1
WHERE FighterAircraft = 1;

-- Find the Averages for TotalMilitaryPersonnel, TotalAircraftStrength, TotalHelicopterStrength and TotalPopulation. Record these averages.
SELECT AVG(TotalMilitaryPersonnel), AVG(TotalAircraftStrength), AVG(TotalHelicopterStrength), AVG(TotalPopulation) FROM db.globalfirepower;

-- A new nation has been founded and you are declared its leader! Congratulations!
-- Unfortunately for you, every other nation is now looking to take over your land. Insert a new country with the averages values you have just calculated.
INSERT INTO db.globalfirepower(Country, ISO3, TotalMilitaryPersonnel, TotalAircraftStrength, TotalHelicopterStrength, TotalPopulation)
VALUES('Country of Averages', 'COA', 524357, 456, 182, 60069024);
