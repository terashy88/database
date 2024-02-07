PID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Anrede enum('Herr', 'Frau'),
Vorname varchar(20) NOT NULL,
Nachname varchar(20) NOT NULL,
Strasse varchar(25),
PLZ integer,
Ort varchar(20),
Telefon varchar(13),
Geburtsdatum DATE
