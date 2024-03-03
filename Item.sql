CREATE TABLE Item (
    itemID INTEGER PRIMARY KEY NOT NULL,
    storeID INTEGER,
    consumableItemID INTEGER,
    householdItemID INTEGER,
	inventoryID INTEGER,
    usesOrServingSizeLeft INTEGER,
	servingPerDay INTEGER,
	FOREIGN KEY (storeID) REFERENCES Store(storeID) ON UPDATE CASCADE,
	FOREIGN KEY (consumableItemID) REFERENCES ConsumableItem(consumableItemID) ON UPDATE CASCADE,
	FOREIGN KEY (householdItemID) REFERENCES HouseholdItem(householdItemID) ON UPDATE CASCADE,
	FOREIGN KEY (inventoryID) REFERENCES Inventory(inventoryID) ON UPDATE CASCADE,
	UNIQUE(itemID)
);
