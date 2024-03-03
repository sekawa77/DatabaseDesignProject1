-- this query returns the names of items from the store Trader Joe's
-- selects itemName
SELECT itemName
-- from table ConsumableItem
FROM ConsumableItem
-- where ConsumableItemID is in..
WHERE ConsumableItem.consumableItemID IN(
	-- selects distinct consumableItemID from table Item
	SELECT DISTINCT Item.consumableItemID FROM Item
	-- where storeID is in...
	WHERE Item.storeID IN(
		-- select distinct storeID from table Store
		SELECT DISTINCT Store.storeID FROM Store
		-- where store name is "Trader Joe's"
		WHERE Store.name = "Trader Joe's"
	)
);