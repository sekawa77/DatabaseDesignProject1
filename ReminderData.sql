CREATE TRIGGER CreateConsumableReminder
AFTER INSERT ON Item
FOR EACH ROW
BEGIN
    INSERT INTO Reminder (itemID, reminderName, daysTillPurchase)
    SELECT NEW.itemID, ci.itemName, (NEW.usesOrServingSizeLeft / NEW.servingPerDay)
    FROM ConsumableItem ci
    WHERE ci.consumableItemID = NEW.consumableItemID AND NEW.consumableItemID IS NOT NULL;
END;

CREATE TRIGGER CreateHouseholdReminder
AFTER INSERT ON Itemm\
FOR EACH ROW
BEGIN
    INSERT INTO Reminder (itemID, reminderName, daysTillPurchase)
    SELECT NEW.itemID, hi.itemName, (NEW.usesOrServingSizeLeft / NEW.servingPerDay)
    FROM HouseholdItem hi
    WHERE hi.householdItemID = NEW.householdItemID AND NEW.householdItemID IS NOT NULL;
END;