create database
    user(
        id int PRIMARY KEY auto_increment,
        Vorname TEXT,
        Nachname varchar,
        Adresse VARCHAR,
        email varchar(25) NOT NULL UNIQUE,
        /*max VARCHAR (255)*/
        Telefone INT,
    ),
    user2(
        id int PRIMARY KEY auto_increment,
        Vorname TEXT,
        Nachname varchar,
        Adresse VARCHAR,
        email varchar(25) NOT NULL UNIQUE,
        /*max VARCHAR (255)*/
        Telefone INT,
    );
