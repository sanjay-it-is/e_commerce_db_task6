---Scalar Subquery in SELECT 
SELECT
    product_name,
    price,
    ROUND((SELECT AVG(price) FROM Products), 2) AS overall_average_price
FROM Products;


---Scalar Subquery in WHERE
SELECT
    product_name,
    price
FROM Products
WHERE price > (SELECT AVG(price) FROM Products);



---Subquery with IN
SELECT
    customer_id,
    first_name,
    last_name
FROM Customers
WHERE customer_id IN (SELECT customer_id FROM Orders);


---Correlated Subquery with EXISTS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM Customers c
WHERE EXISTS (SELECT 1 FROM Orders o WHERE o.customer_id = c.customer_id);



---Subquery in FROM Clause
SELECT
    coa.customer_id,
    ROUND(coa.avg_customer_order_total, 2)
FROM (
    -- Derived table: Calculates average order total for each customer
    SELECT
        customer_id,
        AVG(total_amount) AS avg_customer_order_total
    FROM Orders
    GROUP BY customer_id
) AS coa -- Alias for the derived table
WHERE coa.avg_customer_order_total > ROUND((SELECT AVG(total_amount) FROM Orders), 2); -- Scalar subquery for overall average
