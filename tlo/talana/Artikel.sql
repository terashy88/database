DROP DATABASE IF EXISTS Artikel;

CREATE DATABASE Artikel DEFAULT CHARACTER SET utf8;

USE Artikel;

SET
    character_set_client = utf8;

CREATE TABLE Lieferant (
    LieferantId int NOT NULL AUTO_INCREMENT,
    Firma VARCHAR(20) NOT NULL,
    Kontaktperson VARCHAR(20) NOT NULL,
    Telefon VARCHAR(20) NOT NULL,
    PRIMARY KEY (LieferantId)
);

CREATE TABLE Artikel (
    ArtikelId int NOT NULL AUTO_INCREMENT,
    LieferantId INT NOT NULL,
    Bezeichnung VARCHAR(20),
    Verkaufspreis DECIMAL(4, 2),
    Erfassungsdatum DATETIME,
    FOREIGN KEY (LieferantId) REFERENCES Lieferant (LieferantId),
    PRIMARY KEY (ArtikelId)
);

INSERT INTO
    Lieferant (
        LieferantId,
        Firma,
        Kontaktperson,
        Telefon
    )
VALUES
    (
        100,
        "Digital",
        "Michael Kunz",
        "044 444 55 66"
    );
