SELECT u.ID as "USER ID", ROUND(sum(i.TOTAL_FINAL_PRICE),2) as "Total Spends in August"
FROM Items i, Receipts r, User u
WHERE i.MODIFY_DATE LIKE '%-08-%'
AND i.REWARDS_RECEIPT_ID = r.ID
AND r.USER_ID = u.ID
GROUP BY u.ID
ORDER BY sum(i.TOTAL_FINAL_PRICE) DESC
LIMIT 1;