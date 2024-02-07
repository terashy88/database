-- Schule
-- Richard
SHOW DATABASES;

CREATE IF NOT EXISTS DATABASE Schule;

USE Schule;

-- SHOW TABLES;
-- SHOW TABLES
-- FROM
--     Schule;
CREATE TABLE Klasse(
    KlassenId int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Bezeichnung VARCHAR(22)
);

CREATE TABLE IF NOT EXISTS Wochentag(
    WochentagID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Bezeichnung VARCHAR(22)
);

CREATE TABLE IF NOT EXISTS Schueler(
    SchuelerId int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Vname VARCHAR(22),
    Klasse VARCHAR(22)
);

CREATE TABLE IF NOT EXISTS Dozenten(
    DozentenId int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Vname VARCHAR(22)
);

CREATE TABLE IF NOT EXISTS Modul(
    ModulId int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Bezeichnung VARCHAR(22)
);

CREATE TABLE IF NOT EXISTS Stundenplan(
    UhrzeitStart datetime,
    UhrzeitEnde datetime,
    CONSTRAINT Dozent FOREIGN KEY (DozentenId) REFERENCES Dozenten(DozentenId),
    CONSTRAINT Klasse FOREIGN KEY (KlassenId) REFERENCES Klasse (KlassenId),
    CONSTRAINT Modul FOREIGN KEY(ModulId) REFERENCES Modul (ModulID),
    CONSTRAINT Raum FOREIGN KEY (RaumId) REFERENCES Raum (RaumId),
    CONSTRAINT Wochentag FOREIGN KEY (WochentagId) REFERENCES Wochentag(WochentagId)
);

CREATE TABLE IF NOT EXISTS Raum(
    RaumId int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Bezeichnung VARCHAR(22),
    Stockwerk VARCHAR(22),
    EDV VARCHAR(22)
);
