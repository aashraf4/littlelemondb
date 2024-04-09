/*
DELIMITER //

CREATE PROCEDURE CheckBooking(
    IN booking_date DATE,
    IN booking_time TIME,
    IN table_number INT
)
BEGIN
    DECLARE is_booked INT;

    -- Check if the table is already booked for the given date and time
    SELECT COUNT(*) INTO is_booked
    FROM booking
    WHERE date = booking_date AND time = booking_time AND table_id = table_number;

    -- Output the result
    IF is_booked > 0 THEN
        SELECT 'The table is already booked for the given date and time.' AS Status;
    ELSE
        SELECT 'The table is available for booking on the given date and time.' AS Status;
    END IF;
    
END //

DELIMITER ;
*/

CALL CheckBooking('2024-04-08', '12:00:00', 1);
CALL CheckBooking('2024-04-07', '12:00:00', 1);
