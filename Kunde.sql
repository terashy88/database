DROP database if exists video;
CREATE DATABASE video;
use video;
CREATE TABLE Kunde

(Kundennummer integer not null auto_increment,
Anrede enum ('Herr','Frau'),
Vorname varchar(20),
Nachname varchar(20),
Strasse varchar(25),
PLZ INTEGER,
Ort VARCHAR(20),
Telefon VARCHAR(13),
Geburtsdatum DATE,
PRIMARY KEY (Kundennummer)
);
SHOW DATABASES;
SHOW TABLES;
EXPLAIN Kunde;
