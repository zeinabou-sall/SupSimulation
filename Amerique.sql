USE world;

UPDATE city
SET CountryCode = 'CAN'
WHERE Name IN ('Detroit','Chicago','Seattle','Milwaukee','Anchorage');

UPDATE country
SET Population = Population + 5267917
WHERE Code = 'CAN';

UPDATE country
SET Population = Population - 5267917
WHERE Code = 'USA';



INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('QOF', 'Quebec-Ontario Federation', 'North America', 'North America',
1000000, 2026, 11382815, 80.0, 500000.00, NULL,
'QOF', 'Republic', 'Unknown', 1810, 'QF');

UPDATE city
SET CountryCode = 'QOF'
WHERE Name IN ('Montréal','Québec','Laval','Longueuil','Gatineau',
'Toronto','Ottawa','Hamilton','London','Windsor','Kitchener','Oshawa');

UPDATE country
SET Population = Population - 11382815
WHERE Code = 'CAN';


UPDATE city
SET CountryCode = 'USA'
WHERE CountryCode IN ('MEX','CUB','VEN','COL');

UPDATE country
SET Population = Population + 176573000
WHERE Code = 'USA';

DELETE FROM countrylanguage
WHERE CountryCode IN ('MEX','CUB','VEN','COL');

DELETE FROM country
WHERE Code IN ('MEX','CUB','VEN','COL');



INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('NEA', 'Nouveaux Etats-Unis d''Amerique', 'South America',
'South America', 3000000, 2026, 107713000,
75.0, 400000.00, NULL,
'NEA', 'Federal Republic', 'Unknown', 2890, 'NA');

UPDATE city
SET CountryCode = 'NEA'
WHERE CountryCode IN ('PER','ECU','BOL','CHL','ARG','PRY','URY');

DELETE FROM countrylanguage
WHERE CountryCode IN ('PER','ECU','BOL','CHL','ARG','PRY','URY');

DELETE FROM country
WHERE Code IN ('PER','ECU','BOL','CHL','ARG','PRY','URY');
