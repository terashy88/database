/*
 mysql - u root - P 3306 source path /.sql
 SELECT * FROM DATABASE FROM Personal;
 SELECT * FROM Personal WHERE anrede;
 SELECT * FROM Personal WHERE Vorname;
 WHERE * LIKE "*" WHERE * = "*";
 SELECT * FROM DATABASE ORDER BY ID DESC RULES ABOUT THE COLUMNS IN TABLE NOT NULL // Ensures a column cannot have a NULL value
 UNIQUE // Ensures all values in a column are unique
 PRIMARY KEY // Identifies a record in a table, is NOT NULL & UNIQUE
 FOREIGN KEY // References a unique record from another table
 CHECK // Ensures all column values satisfy a condition
 DEFAULT // Set a default value for a column if none is entered
 INDEX // Quick way of retrieving records from database
 CREATE DATABASE IF NOT EXISTS Personal;
 SHOW KEYWORDS;
 HELP SELECT;
 */
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS Personal;

USE Personal;

SHOW TABLES;

SHOW TABLES
FROM
    Personal;

SELECT
    version();

SELECT
    user();

SELECT
    DATABASE();

SHOW WARNINGS;

SHOW CHARACTER SET;

-- -------------------------------------------
-- Creating tables
CREATE TABLE IF NOT EXISTS Personal (
    -- CREATE TABLE Personal (
    PID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Anrede enum('Herr', 'Frau'),
    Vorname varchar(20) NOT NULL,
    Nachname varchar(20),
    Strasse varchar(25),
    PLZ varchar(11),
    Ort varchar(20),
    Phone varchar(13),
    Geburtsdatum DATE
);

-- PRIMARY KEY (PID)
-- FOREIGN KEY (test)
-- Check Database Data
EXPLAIN Personal;

--------------------------------------------
INSERT INTO
    Personal (Vorname, Nachname)
VALUES
    ('Lansa', "Davsis"),
    ("eli", NULL);

-- -------------------------------------------
-- todo Update einer neuen Personal mit Vorname <..>
UPDATE
    Personal
WHERE
    PID = 1
VALUES
    ('amanda', "Volle");

------------------------------------------
--  Aus der Tabelle Personal werden alle Spalten ausgelesen und angezeigt
SELECT
    PID,
    Vorname
FROM
    Personal;

----------------------
SELECT
    *
FROM
    Personal;

-----------------------
SELECT
    DATABASE ();

-------------------------
SELECT
    NOW();

------------------------------------------
--  Löschen der Personal mit ID 3
DELETE FROM
    Personal
WHERE
    PID = 3;

-- Drop TABLE
DROP TABLE test;

DROP DATABASE IF EXISTS test;

DROP DATABASE IF EXISTS Schule;

DROP DATABASE IF EXISTS Personal;
