 1. View all records 
   SELECT * FROM orders;

2. Count total orders 
  SELECT COUNT(*) AS total_orders FROM orders;

3. Total sales 
  SELECT SUM(Sales) AS total_sales FROM orders;

4. Average sales 
  SELECT AVG(Sales) AS average_sales FROM orders;

5. Highest sales order 
  SELECT * FROM orders 
  ORDER BY Sales 
  DESC LIMIT 1;

6. Lowest sales order
  SELECT * FROM orders
  ORDER BY Sales ASC
  LIMIT 1;

7. Sales by category 
  SELECT Category, SUM(Sales) AS total_sales 
  FROM orders 
  GROUP BY Category
  ORDER BY total_sales DESC;

8. Average sales by category 
  SELECT Category, AVG(Sales) AS avg_sales 
  FROM orders 
  GROUP BY Category 
  ORDER BY avg_sales DESC;

9. Orders with sales greater than 1000 
  SELECT * FROM orders 
  WHERE Sales > 1000;

10. Top 5 highest sales orders 
  SELECT * FROM orders 
  ORDER BY Sales DESC 
  LIMIT 5;

11. Total quantity sold by category 
  SELECT Category, SUM(Quantity) AS total_quantity
  FROM orders 
  GROUP BY Category;

12. Count orders by payment method 
  SELECT PaymentMethod, COUNT(*) AS order_count
  FROM orders 
  GROUP BY PaymentMethod;

13. Sales by customer 
  SELECT CustomerName, SUM(Sales) AS customer_sales 
  FROM orders 
  GROUP BY CustomerName 
  ORDER BY customer_sales DESC;

14. Monthly sales trend 
  SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS month, 
             SUM(Sales) AS monthly_sales 
  FROM orders 
  GROUP BY month 
  ORDER BY month;

15. Categories with sales above 5000 
  SELECT Category, SUM(Sales) AS total_sales 
  FROM orders 
  GROUP BY Category 
  HAVING total_sales > 5000;
