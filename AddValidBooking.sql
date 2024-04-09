DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN bookingDate DATE,
    IN bookingTime TIME,
    IN customerId INT,
    IN staffId INT,
    IN tableNumber INT
)
BEGIN
    DECLARE bookingExists INT;
    
    -- Check if the booking already exists with the given date and time
    SELECT COUNT(*) INTO bookingExists
    FROM `littlelemondb`.`booking`
    WHERE `date` = bookingDate AND `time` = bookingTime;

    -- If the booking already exists, return a message
    IF bookingExists > 0 THEN
        SELECT 'Booking already exists for the given date and time.' AS 'Status';
    ELSE
        -- Insert the new booking record
        INSERT INTO `littlelemondb`.`booking` (`date`, `time`, `customer_id`, `staff_id`, `table_id`)
        VALUES (bookingDate, bookingTime, customerId, staffId, tableNumber);
        
        SELECT 'Booking added successfully.' AS 'Status';
    END IF;
END

DELIMITER ;

CALL AddValidBooking('2024-04-08', '12:00:00', 1, 1, 1);

CALL AddValidBooking('2024-04-10', '18:00:00', 4, 3, 3);

CALL AddValidBooking('2024-04-11', '19:00:00', 5, 1, 1);

