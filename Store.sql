CREATE TABLE Store (
    storeID INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(255),
	address VARCHAR(255),
	UNIQUE(storeID)
);
