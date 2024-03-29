CREATE TABLE Inventory (
    inventoryID INTEGER PRIMARY KEY NOT NULL,
    userID INTEGER,
    inventoryName VARCHAR(255),
	FOREIGN KEY (userID) REFERENCES User(userID) ON UPDATE CASCADE,
	UNIQUE(inventoryID)
);
