-- this guery returns names of users who needs to go shopping urgently
-- or nonurgently 
-- urgency is determined if the minimum daysTillPurchase is equal to 0
-- oe if average daysTillPurchase in a users list of remiders is less 
-- than 2
-- selects names of users and reminderCategory
SELECT 
	User.name,
	-- reminderCategory is determined as urgent when the minimum
	-- daysTillPurchase is 1 and average is less than 2
	-- otherwise it is Nonurgent
	CASE
		WHEN MIN(Reminder.daysTillPurchase) = 0 THEN "Urgent"
		WHEN AVG(Reminder.daysTillPurchase) < 2 THEN "Urgent"
		ELSE "Nonurgent"
	END AS ReminderCategory
-- from table User
FROM User 
-- join inventory table and user table through userID
JOIN Inventory on User.userID = Inventory.userID
-- join item table and inventory table through inventoryID
JOIN Item ON Inventory.inventoryID = Item.inventoryID
-- join reminder table and item mtable through itemID
JOIN Reminder ON Item.itemID = Reminder.itemID
-- groups by the user's names
GROUP BY User.name;