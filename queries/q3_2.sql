SELECT u.ID as "User that purchased the most expensive item", u.STATE as "State", (e.TOTAL_FINAL_PRICE/e.QUANTITY_PURCHASED)  as "Price of the most expensive item"
FROM Receipts r, User u, (SELECT * 
FROM Items
ORDER BY (TOTAL_FINAL_PRICE/QUANTITY_PURCHASED) DESC
LIMIT 1) as e, Items i
Where (i.TOTAL_FINAL_PRICE/i.QUANTITY_PURCHASED) = (e.TOTAL_FINAL_PRICE/e.QUANTITY_PURCHASED)
AND i.REWARDS_RECEIPT_ID = r.ID
AND r.USER_ID = u.ID;