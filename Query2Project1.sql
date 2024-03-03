-- this query returns inventoryName, and itemCount 
-- of each Inventory and orders them by itemCount in descending order

-- select inventoryName and itemCount
SELECT 
	Inventory.inventoryName, 
	-- itemCount is found by counting usesOrServingSizeLeft from
	-- each inventory
	-- we do this by accessing item from Inventory which has the
	-- same inventoryID
	(
		SELECT COUNT(Item.usesOrServingSizeLeft) 
		FROM Item
		WHERE Item.inventoryID = Inventory.inventoryID
	) AS itemCount
-- from inventory table 
FROM Inventory
-- group by inventoryID
GROUP BY Inventory.inventoryID
-- makes sure that inventory has a itemCount of more than 3 items 
HAVING itemCount >= 3
-- orders by descending itemCount
ORDER BY itemCount DESC;