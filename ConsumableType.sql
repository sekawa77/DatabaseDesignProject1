CREATE TABLE ConsumableType (
    consumableTypeID INTEGER PRIMARY KEY NOT NULL,
    typeConsumable VARCHAR(255),
    UNIQUE(consumableTypeID, typeConsumable)
);
