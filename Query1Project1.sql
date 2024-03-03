-- this query returns all reminders with daysTillPurchase that is 
-- less than 3
-- select reminderName as reminderFor
-- selects name as userName
SELECT reminderName AS "ReminderFor", name AS "UserName"
-- from table reminder
FROM Reminder
-- join item table and reminder table through itemID
JOIN Item ON Reminder.itemID = Item.itemID
-- join Inventory table and Item table through inventoryID
JOIN Inventory ON Item.inventoryID = Inventory.inventoryID
-- join User table and Inventory table through userID
JOIN User ON Inventory.userID = User.userID
-- where daysTillPurchase less 3
WHERE daysTillPurchase < 3;