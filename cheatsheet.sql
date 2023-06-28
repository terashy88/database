/*
 mysql -u root -P 3306
 create ~/*.sql
 show DATABASES;
 use databasesName;
 source path/*.sql
 select * from DATABASE from kunde
 select * from kunde where anrede
 select * from kunde where ort
 select * from kunde film, ausleihe, kunde where film.videonr = ausleihe where
 WHERE * LIKE "*"
 WHERE * = "*"
 SELECT * FROM DATABASE
 ORDER BY ID DESC
 */

-- DROP database if exists video;

CREATE DATABASE video;

use video;

CREATE TABLE
    Kunde (
        Kundennummer integer PRIMARY KEY not null auto_increment,
        Anrede enum ('Herr', 'Frau'),
        Vorname varchar(20),
        Nachname varchar(20),
        Strasse varchar(25),
        PLZ INTEGER,
        Ort VARCHAR(20),
        Telefon VARCHAR(13),
        Geburtsdatum DATE,
        /* PRIMARY KEY (Kundennummer), */
        /* FOREIGN KEY (), */
    );

SHOW DATABASES;

SHOW TABLES;

EXPLAIN Kunde;
