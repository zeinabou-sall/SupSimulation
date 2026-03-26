USE world;


INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('BZN', 'Bretagne-Normandie', 'Europe', 'Western Europe',
60000, 2026, 946755, 80.0, 200000.00, NULL,
'Bretagne-Normandie', 'Republic', 'Unknown', 2983, 'BZ');

UPDATE city
SET CountryCode = 'BZN'
WHERE Name IN ('Rennes','Brest','Caen','Le Havre');

UPDATE country
SET Population = Population - 946755
WHERE Code = 'FRA';

INSERT INTO countrylanguage
(CountryCode, Language, IsOfficial, Percentage)
VALUES
('BZN', 'Breton', 'T', 100.0);




INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('RVL', 'Republique du Val de Loire', 'Europe', 'Western Europe',
20000, 2026, 245946, 80.0, 80000.00, NULL,
'Val de Loire', 'Republic', 'Unknown', 2999, 'RV');

UPDATE city
SET CountryCode = 'RVL'
WHERE Name IN ('Tours','Orléans');

UPDATE country
SET Population = Population - 245946
WHERE Code = 'FRA';


INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('LYO', 'Cite-Etat de Lyon', 'Europe', 'Western Europe',
1000, 2026, 445452, 80.0, 120000.00, NULL,
'Lyon', 'City-State', 'Unknown', 2976, 'LY');

UPDATE city
SET CountryCode = 'LYO'
WHERE Name = 'Lyon';

UPDATE country
SET Population = Population - 445452
WHERE Code = 'FRA';



INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('CAE', 'Cite-Etat de Caen', 'Europe', 'Western Europe',
500, 2026, 113987, 80.0, 50000.00, NULL,
'Caen', 'City-State', 'Unknown', 3003, 'CE');

UPDATE city
SET CountryCode = 'CAE'
WHERE Name = 'Caen';

UPDATE country
SET Population = Population - 113987
WHERE Code = 'FRA';



INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('LIL', 'Cite-Etat de Lille', 'Europe', 'Western Europe',
600, 2026, 184657, 80.0, 60000.00, NULL,
'Lille', 'City-State', 'Unknown', 2986, 'LL');

UPDATE city
SET CountryCode = 'LIL'
WHERE Name = 'Lille';

UPDATE country
SET Population = Population - 184657
WHERE Code = 'FRA';




UPDATE city
SET CountryCode = 'LIE'
WHERE CountryCode IN ('CHE','ITA');

UPDATE country
SET Population = 64872700
WHERE Code = 'LIE';

DELETE FROM countrylanguage
WHERE CountryCode IN ('CHE','ITA');

DELETE FROM country
WHERE Code IN ('CHE','ITA');
