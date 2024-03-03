CREATE TABLE User (
    userID INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(255),
    username VARCHAR(255),
    passwords VARCHAR(255),
    UNIQUE(userID, username, password)
);

