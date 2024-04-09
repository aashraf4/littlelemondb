DELIMITER //

CREATE PROCEDURE AddBooking(
    IN customerId INT,
    IN bookingDate DATE,
    IN staffId INT,
    IN bookingTime TIME,
    IN tableNumber INT
)
BEGIN
    INSERT INTO `littlelemondb`.`booking` (`date`, `customer_id`, `staff_id`, `time`, `table_id`)
    VALUES (bookingDate, customerId, staffId, bookingTime, tableNumber);
END //

DELIMITER ;

CALL AddBooking(1, '2024-04-08', 2, '1:00', 1);


DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN bookingId INT,
    IN newCustomerId INT,
    IN newStaffId INT,
    IN newTime TIME,
    IN newTableId INT
)
BEGIN
    -- Update the booking details for the specified booking id
    UPDATE `littlelemondb`.`booking`
    SET `customer_id` = newCustomerId,
        `staff_id` = newStaffId,
        `time` = newTime,
        `table_id` = newTableId
    WHERE `booking_id` = bookingId;
    
    SELECT 'Booking updated successfully.' AS 'Status';
END //

DELIMITER ;

CALL UpdateBooking(121, 3, 2, '14:00', 3);


DELIMITER //

CREATE PROCEDURE DeleteBooking(
    IN bookingId INT
)
BEGIN
    DELETE FROM `littlelemondb`.`booking`
    WHERE `booking_id` = bookingId;
END //

DELIMITER ;

CALL DeleteBooking(121);

