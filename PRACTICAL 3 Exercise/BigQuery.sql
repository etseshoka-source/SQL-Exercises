  SELECT * 
  FROM `fresh-airfoil-493417-u7.Retail_sales.Data` LIMIT 100;


---Q1: Filter all transactions that occurred in the year 2023.

  select *
  from `fresh-airfoil-493417-u7.Retail_sales.Data`
  where Date BETWEEN '2023-01-01' AND '2023-12-31';

---Q2: Display all transactions where the Total Amount is more than the average Total Amount of the entire dataset.

  select *
  from `fresh-airfoil-493417-u7.Retail_sales.Data`
  where `Total Amount` > (select AVG(`Total Amount`) 
  from `fresh-airfoil-493417-u7.Retail_sales.Data`);

 ---Q3: Calculate the total revenue (sum of Total Amount

   select 
        sum(`Total Amount`) AS Total_Revenue
   from `fresh-airfoil-493417-u7.Retail_sales.Data`;

---Q4: Display all distinct Product Categories in the dataset

   select distinct`Product Category`
   from `fresh-airfoil-493417-u7.Retail_sales.Data`;


---Q5: For each Product Category, calculate the total quantity sold

     select `Product Category`,
        Sum(Quantity) AS Total_Quantity
     from `fresh-airfoil-493417-u7.Retail_sales.Data`
     group by `Product Category`;


---Q6: Create a column called Age_Group that classifies customers as:

   select `Customer ID`,
           Age,
           Case
               When Age < 30 THEN 'Youth'
               When Age BETWEEN 30 AND 59 THEN 'Adult'
               When Age >= 60 THEN 'Senior'
               End AS `Age Group`
    from `fresh-airfoil-493417-u7.Retail_sales.Data`;

  ---Q7: For each Gender, count how many high-value transactions occurred (where Total Amount > 500)

     select Gender,
            Count(*) AS High_Value_Transactions
     from `fresh-airfoil-493417-u7.Retail_sales.Data`
     where `Total Amount` > 500
     group by Gender;
  
  ---Q8: For each Product Category, show only those categories where the total revenue exceeds 5,000.

     select `Product Category`,
             SUM(`Total Amount`) AS `Total Revenue`
     from `fresh-airfoil-493417-u7.Retail_sales.Data`
     group by `Product Category`
     having `Total Revenue` > 5000;

  ---Q9: Display a new column called Unit_Cost_Category that labels a transaction as: – 'Cheap' if Price per Unit < 50       --    'Moderate' if Price per Unit between 50 and 200 – 'Expensive' if Price per Unit > 200

    select `Transaction ID` AS Transaction_ID,
           `Price per Unit` AS Price_per_Unit,
           CASE
               When `Price per Unit` < 50 THEN 'Cheap'
               When `Price per Unit` BETWEEN 50 AND 200 THEN 'Moderate'
               When `Price per Unit` > 200 THEN 'Expensive'
               End AS Unit_Cost_Category
    from `fresh-airfoil-493417-u7.Retail_sales.Data`;


  ---Q10: Display all transactions from customers aged 40 or older and add a column Spending_Level showing: – 'High' if ---Total Amount > 1000 – 'Low' otherwise

    select `Transaction ID` AS Transaction_ID,
           `Total Amount` AS Total_Amount,
            Age,
           CASE
               When `Total Amount` > 1000 THEN 'High'
               Else 'Low'
               End AS Spending_Level
    from `fresh-airfoil-493417-u7.Retail_sales.Data`
    where Age >= 40;
    
  
