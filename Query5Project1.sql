-- This query returns all items in inventories with "kitchen" 
-- in their names

-- selects itemNames 
SELECT itemName 
-- from the table ConsumableItem
FROM ConsumableItem
-- where ConsumableItem is in..
WHERE consumableItemID IN (
	-- selects distinct ConsumableItemID
	SELECT DISTINCT Item.consumableItemID
	-- from the table items
	FROM Item
	-- where inventoryID is in...
	WHERE inventoryID IN (
		-- selects distinct inventoryID
		SELECT DISTINCT Inventory.inventoryID
		-- from the table Inventory
		FROM Inventory
		-- where inventoryName includes "Kitchen"
		WHERE Inventory.inventoryName LIKE "%Kitchen%"
	)
);