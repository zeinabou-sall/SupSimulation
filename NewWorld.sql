
DROP DATABASE IF EXISTS NewWorld;
CREATE DATABASE NewWorld;
USE NewWorld;


CREATE TABLE Country (
    Code CHAR(3) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Population BIGINT,
    SurfaceArea FLOAT,
    GDP FLOAT,
    ArmySize INT,
    NavySize INT,
    AirForceSize INT,
    MilitaryPowerIndex FLOAT
);

INSERT INTO Country
VALUES
('FRA', 'France', 60000000, 551695, 2500000, 200000, 180, 150, 85.5);



CREATE TABLE War (
    WarID INT AUTO_INCREMENT PRIMARY KEY,
    WarName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(20)
);

INSERT INTO War (WarName, StartDate, EndDate, Status)
VALUES
('Guerre Europeenne', '2026-02-01', NULL, 'Active');


CREATE TABLE Alliance (
    AllianceID INT AUTO_INCREMENT PRIMARY KEY,
    AllianceName VARCHAR(100),
    CreationDate DATE,
    Type VARCHAR(50)
);

INSERT INTO Alliance (AllianceName, CreationDate, Type)
VALUES
('Alliance Europeenne', '2026-01-01', 'Military');


CREATE TABLE WarParticipation (
    CountryCode CHAR(3),
    WarID INT,
    Role VARCHAR(20),
    Losses INT,
    PRIMARY KEY (CountryCode, WarID),
    FOREIGN KEY (CountryCode) REFERENCES Country(Code),
    FOREIGN KEY (WarID) REFERENCES War(WarID)
);

INSERT INTO WarParticipation
VALUES
('FRA', 1, 'Attacker', 5000);


CREATE TABLE AllianceMembership (
    CountryCode CHAR(3),
    AllianceID INT,
    JoinDate DATE,
    PRIMARY KEY (CountryCode, AllianceID),
    FOREIGN KEY (CountryCode) REFERENCES Country(Code),
    FOREIGN KEY (AllianceID) REFERENCES Alliance(AllianceID)
);

INSERT INTO AllianceMembership
VALUES
('FRA', 1, '2026-01-01');
