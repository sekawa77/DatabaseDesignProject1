CREATE TABLE ConsumableItem(
    consumableItemID INTEGER PRIMARY KEY NOT NULL,
    consumableTypeID INTEGER,
    daysTillExpiration INTEGER,
	itemName VARCHAR(255),
	FOREIGN KEY (consumableTypeID) REFERENCES ConsumableType(consumableTypeID) ON UPDATE CASCADE,
	UNIQUE(consumableItemID)
);
