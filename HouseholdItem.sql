CREATE TABLE HouseholdItem (
    householdItemID INTEGER PRIMARY KEY NOT NULL,
    householdItemTypeID INTEGER,
    brand VARCHAR(255),
	itemName VARCHAR(255),
	FOREIGN KEY (householdItemTypeID) REFERENCES HouseholdItemType(householdItemTypeID) ON UPDATE CASCADE,
	UNIQUE(householdItemID, itemName)
);
