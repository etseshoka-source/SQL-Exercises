select * from `retail_analysis`.`default`.`pnp_daily_transactions` limit 3;

----Q1. Display all columns for all transactions.

select * from `retail_analysis`.`default`.`pnp_daily_transactions` limit 100;

---Q2. Display only the Transaction ID, Date, and Customer ID for all records.

Select `Transaction ID`, Date, `Customer ID` 
from `retail_analysis`.`default`.`pnp_daily_transactions`;

---Q3. Display all the distinct product categories in the dataset.

Select distinct `Product Category`
from `retail_analysis`.`default`.`pnp_daily_transactions`;

---Q4. Display all the distinct gender values in the dataset.
Select distinct Gender
from `retail_analysis`.`default`.`pnp_daily_transactions`;

---Q5. Display all transactions where the Age is greater than 40.
Select *
from `retail_analysis`.`default`.`pnp_daily_transactions`
where Age > 40;


----Q6: Display all transactions where the Price per Unit is between 100 and 500.
----Expected output: All columns

Select *
from `retail_analysis`.`default`.`pnp_daily_transactions`
where `Price per Unit` BETWEEN 100 AND 500;

----Q7:Display all transactions where the Product Category is either 'Beauty' or
----'Electronics'.
Select *
from `retail_analysis`.`default`.`pnp_daily_transactions`
where `Product Category` = 'Beauty' OR `Product Category` = 'Electronics';

----Q8. Display all transactions where the Product Category is not 'Clothing'.
----Expected output: All columns

Select *
from `retail_analysis`.`default`.`pnp_daily_transactions`
where `Product Category` != 'Clothing';

-----Q9. Display all transactions where the Quantity is greater than or equal to 3.
-----Expected output: All columns
 
 Select *
from `retail_analysis`.`default`.`pnp_daily_transactions`
where `Quantity` >=3;

------ Q10. Count the total number of transactions.
------Expected output: Total_Transactions
Select Count(`Transaction ID`) AS Total_Transactions
from `retail_analysis`.`default`.`pnp_daily_transactions`;

------Q11. Find the average Age of customers.
------Expected output: Average_Age

Select AVG(Age) AS Average_Age
from `retail_analysis`.`default`.`pnp_daily_transactions`;

------Q12. Find the total quantity of products sold.
------Expected output: Total_Quantity
Select SUM(Quantity) AS Total_Quantity
from `retail_analysis`.`default`.`pnp_daily_transactions`;


-------Q13. Find the maximum Total Amount spent in a single transaction.
-------Expected output: Max_Total_Amount

Select MAX(`Total Amount`) AS Total_Amount
from `retail_analysis`.`default`.`pnp_daily_transactions`;

-------Q14. Find the minimum Price per Unit in the dataset.
-------Expected output: Min_Price_per_Unit

Select MIN(`Price per unit`) AS Min_Price_per_Unit
from `retail_analysis`.`default`.`pnp_daily_transactions`;

-------Q15. Find the number of transactions per Product Category.
-------Expected output: Product Category, Transaction_Count


Select  `Product Category`,
        Count(`Transaction ID`) AS Transaction_Count
from `retail_analysis`.`default`.`pnp_daily_transactions`
Group by `Product Category`;

------Q16. Find the total revenue (Total Amount) per gender.
------Expected output: Gender, Total_Revenue
Select Gender,
       SUM(`Total Amount`) AS Total_Revenue
from `retail_analysis`.`default`.`pnp_daily_transactions`
Group by Gender;

-------Q17. Find the average Price per Unit per product category.
-------Expected output: Product Category, Average_Price

Select  `Product Category`,
        AVG(`Price per Unit`) AS Average_Price
from `retail_analysis`.`default`.`pnp_daily_transactions`
Group by `Product Category`;


------Q18. Find the total revenue per product category where total revenue is greater than
-----10,000.
------Expected output: Product Category, Total_Revenue

Select `Product Category` ,
       SUM(`Total Amount`) AS Total_Revenue
from `retail_analysis`.`default`.`pnp_daily_transactions`
Group by `Product Category`
Having Total_Revenue > 10000;


------Q19. Find the average quantity per product category where the average is more than 2.
------Expected output: Product Category, Average_Quantity

Select `Product Category` ,
       AVG(Quantity) AS Average_Quantity
from `retail_analysis`.`default`.`pnp_daily_transactions`
Group by `Product Category`
Having Average_Quantity > 2;


------Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000,
-----otherwise 'Low'.
------Expected output: Transaction ID, Total Amount, Spending_Level

Select `Transaction ID`,
       `Total Amount`,
CASE 
     WHEN `Total Amount` > 1000 THEN 'High'
     ELSE 'Low'
     END AS Spending_Level
  from `retail_analysis`.`default`.`pnp_daily_transactions`;  

--------Q21. Display a new column called Age_Group that labels customers as:

------'Youth' if Age < 30

------'Adult' if Age is between 30 and 59

------'Senior' if Age >= 60 Expected output: Customer ID, Age, Age_Group

Select `Customer ID`,
       Age,
CASE 
     WHEN Age < 30 THEN 'Youth'
     WHEN Age BETWEEN 30 AND 50 THEN 'Adult'
     WHEN Age >= 60 THEN 'Senior'
     END AS Age_Group
  from `retail_analysis`.`default`.`pnp_daily_transactions`; 
