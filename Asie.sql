USE world;


INSERT INTO country
(Code, Name, Continent, Region, SurfaceArea, IndepYear,
 Population, LifeExpectancy, GNP, GNPOld,
 LocalName, GovernmentForm, HeadOfState, Capital, Code2)
VALUES
('GKO', 'La Grande Coree', 'Asia', 'Eastern Asia',
2000000, 2026, 1475155000, 78.0, 90000000.00, NULL,
'Grande Coree', 'Empire', 'Unknown', 2331, 'GK');



UPDATE city
SET CountryCode = 'GKO'
WHERE CountryCode IN ('PRK','KOR','CHN','JPN');



DELETE FROM countrylanguage
WHERE CountryCode IN ('PRK','KOR','CHN','JPN');



DELETE FROM country
WHERE Code IN ('PRK','KOR','CHN','JPN');
