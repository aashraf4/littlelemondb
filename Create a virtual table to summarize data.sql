USE `littlelemondb`;
-- Sample data for Staff_Information table

#Create a virtual table to summarize data.
CREATE VIEW OrdersView AS
SELECT order_id AS OrderID, quantity AS Quantity, total_cost AS Cost
FROM `Order`
WHERE quantity > 2;

Select * from OrdersView;

#Use a JOIN statement to query data from multiple tables.
SELECT 
    c.name AS Customer_Name,
    o.order_id AS Order_ID,
    o.total_cost AS Order_Cost,
    m.cuisine AS Cuisine,
    m.starter AS Starter,
    m.course AS Course,
    m.drink AS Drink,
    m.dessert AS Dessert
FROM 
    `Custome_ Details` c
JOIN 
    `Order` o ON c.customer_id = o.customer_id
JOIN 
    Order_Menu om ON o.order_id = om.order_id
JOIN 
    Menu m ON om.menu_item_id = m.menu_id
WHERE 
    o.total_cost > 50
ORDER BY 
    o.total_cost;

#Create a SQL statement with a subquery.
SELECT
    m.menu_id,
    m.cuisine,
    m.starter,
    m.course,
    m.drink,
    m.dessert
FROM
    Menu m
WHERE
    m.menu_id IN (
        SELECT
            om.menu_item_id
        FROM
            Order_Menu om
        JOIN
            `Order` o ON om.order_id = o.order_id
        WHERE
            o.quantity > 2
    );