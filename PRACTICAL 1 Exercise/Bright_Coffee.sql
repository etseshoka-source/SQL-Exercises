---Query 1: Viewing first 10 rows of the table
select * from `coffee`.`shop`.`bright_coffee_shop_sales` limit 10;

---Query 2: Viewing distinct store locations
Select Distinct store_location
from `coffee`.`shop`.`bright_coffee_shop_sales`;

---Query 3: Selecting specific column
Select transaction_id,
       product_category,
       unit_price
from `coffee`.`shop`.`bright_coffee_shop_sales` limit 20;

---Query 4: Using a column alias
select product_category AS Category,
       unit_price AS Price
from `coffee`.`shop`.`bright_coffee_shop_sales` limit 100;

---Query 5: Filtering using where
select *
from `coffee`.`shop`.`bright_coffee_shop_sales`
Where product_category = 'Coffee';

---Query 6: Filtering using WHERE and AND
select *
from `coffee`.`shop`.`bright_coffee_shop_sales`
Where product_category = 'Coffee'
AND unit_price > 10;


---Query 7: Finding the minimum unit price
Select MIN(unit_price) AS Min_Price
from `coffee`.`shop`.`bright_coffee_shop_sales`;

---Query 8: Finding the maximum unit price
Select MAX(unit_price) AS Max_Price
from `coffee`.`shop`.`bright_coffee_shop_sales`;

---Query 9: Filtering using WHERE and OR
select *
from `coffee`.`shop`.`bright_coffee_shop_sales`
Where product_category = 'Coffee'
OR product_category = 'Tea';

---Query 10: Filtering using WHERE and IN
select *
from `coffee`.`shop`.`bright_coffee_shop_sales`
Where product_category IN ('Coffee','Tea');

---Query 11: Sorting results
Select product_category,
       unit_price
from `coffee`.`shop`.`bright_coffee_shop_sales`
ORDER BY unit_price DESC;

---Query 12: Counting total transactions
Select COUNT(*)
from `coffee`.`shop`.`bright_coffee_shop_sales`;

---Query 13: Calculate total sales
SELECT SUM(transaction_qty * unit_price ) AS Total_sales
from `coffee`.`shop`.`bright_coffee_shop_sales`;

---Query 14: Calculate minimum and maximum price
Select MIN(unit_price) AS Cheapest_item,
       MAX(unit_price) AS Most_Expensive_item
from `coffee`.`shop`.`bright_coffee_shop_sales`;

---Query 15: Total sales per Category
Select product_category,
       SUM(transaction_qty * unit_price) AS Total_Sales
from `coffee`.`shop`.`bright_coffee_shop_sales`
GROUP BY  product_category
ORDER BY Total_Sales DESC;      
