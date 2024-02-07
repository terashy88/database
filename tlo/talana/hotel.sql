DROP DATABASE IF EXISTS hotel;

CREATE DATABASE hotel;

USE hotel;

CREATE TABLE Room (
    RoomID INTEGER NOT NULL AUTO_INCREMENT,
    Preis DECIMAL(6, 2),
    Size INTEGER,
    TV ENUM("J", "N"),
    Shower ENUM("J", "N"),
    Phone VARCHAR(13),
    PRIMARY KEY (RoomID)
);

CREATE TABLE Reservation (
    ReservationID INTEGER NOT NULL AUTO_INCREMENT,
    RoomID INTEGER NOT NULL,
    GuestID INTEGER NOT NULL,
    timeFrom DATE,
    timeTill DATE,
    PRIMARY KEY (ReservationID),
    FOREIGN KEY (RoomID) REFERENCES Room (RoomID),
    FOREIGN KEY (GuestID) REFERENCES Guest (GuestID)
);

CREATE TABLE Drink (
    DrinkID INTEGER NOT NULL AUTO_INCREMENT,
    note VARCHAR(15),
    Price DECIMAL(6, 2),
    PRIMARY KEY (DrinkID)
);

CREATE TABLE Bezug (
    ReservationID INTEGER NOT NULL,
    DrinkID INTEGER NOT NULL,
    date_ DATE,
    amount INTEGER,
    FOREIGN KEY (ReservationID) REFERENCES Roombelegung (ReservationID),
    FOREIGN KEY (DrinkID) REFERENCES Getraenk (DrinkID)
);

CREATE TABLE Guest (
    GuestID INTEGER NOT NULL AUTO_INCREMENT,
    Mr / Mrs VARCHAR(4),
    fname VARCHAR(20),
    lname VARCHAR(20),
    street VARCHAR(25),
    PLZ INTEGER,
    city VARCHAR(20),
    Land VARCHAR(3),
    Nationalitaet VARCHAR(3),
    Telefon VARCHAR(13),
    Email VARCHAR(25),
    PRIMARY KEY (GuestID)
);
