CREATE TABLE Reminder (
    reminderID INTEGER PRIMARY KEY NOT NULL,
	itemID INTEGER,
    reminderName VARCHAR(255),
    daysTillPurchase INTEGER,
	FOREIGN KEY (itemID) REFERENCES Item(itemID) ON UPDATE CASCADE,
	UNIQUE(reminderID, itemID)
);
