-- GetMaxOrderedQuantity procedure
DELIMITER //

CREATE PROCEDURE GetMaxOrderedQuantity()
BEGIN
    DECLARE max_quantity INT;
    
    SELECT MAX(quantity) INTO max_quantity FROM `littlelemondb`.`Order`;
    
    SELECT max_quantity AS 'MaxOrderedQuantity';
END //

DELIMITER ;

CALL GetMaxOrderedQuantity();

-- GetOrderDetail procedure
DELIMITER //

CREATE PROCEDURE GetOrderDetail(IN CustomerID INT)
BEGIN
    SELECT order_id, quantity, total_cost 
    FROM `littlelemondb`.`Order` 
    WHERE customer_id = CustomerID;
END //

DELIMITER ;

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

CALL GetOrderDetail(@id);

#CancelOrder procedure 
DELIMITER //

CREATE PROCEDURE CancelOrder(IN orderId INT)
BEGIN
    DELETE FROM `littlelemondb`.`Order` WHERE `order_id` = orderId;
END //

DELIMITER ;

CALL CancelOrder(1);