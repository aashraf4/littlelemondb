USE `littlelemondb`;
-- Sample data for Staff_Information table
INSERT INTO `Staff_Information` (`staff_id`, `role`, `salary`) VALUES
(1, 'Manager', 5000.00),
(2, 'Chef', 4000.00),
(3, 'Waiter', 3000.00);

-- Sample data for Custome_ Details table
INSERT INTO `Custome_ Details` (`customer_id`, `name`, `contact_details`, `Order_order_id`) VALUES
(1, 'John Doe', '1234567890', 101),
(2, 'Jane Smith', '0987654321', 102),
(3, 'Alice Johnson', '5555555555', 103);

-- Sample data for Booking table
INSERT INTO `Booking` (`booking_id`, `date`, `customer_id`, `staff_id`, `time`) VALUES
(101, '2024-04-01', 1, 1, '18:00:00'),
(102, '2024-04-02', 2, 2, '19:00:00'),
(103, '2024-04-03', 3, 3, '20:00:00');

-- Sample data for Order table
INSERT INTO `Order` (`order_id`, `order_date`, `quantity`, `total_cost`, `customer_id`) VALUES
(101, '2024-04-01 12:00:00', 2, 50.00, 1),
(102, '2024-04-02 13:00:00', 1, 30.00, 2),
(103, '2024-04-03 14:00:00', 4, 80.00, 3);

-- Sample data for Delivery_Status table
INSERT INTO `Delivery_Status` (`order_id`, `delivery_date`, `status`) VALUES
(101, '2024-04-01', 'Delivered'),
(102, '2024-04-02', 'In transit'),
(103, '2024-04-03', 'Pending');

-- Sample data for Menu table
INSERT INTO `Menu` (`menu_id`, `cuisine`, `starter`, `course`, `drink`, `dessert`) VALUES
(1, 'Italian', 'Bruschetta', 'Pasta', 'Wine', 'Tiramisu'),
(2, 'Chinese', 'Spring rolls', 'Kung Pao Chicken', 'Green tea', 'Fortune cookies'),
(3, 'Mexican', 'Guacamole', 'Tacos', 'Margarita', 'Churros');

-- Sample data for Order_Menu table
INSERT INTO `Order_Menu` (`order_id`, `menu_item_id`, `quantity`) VALUES
(101, 1, '2'),
(102, 2, '1'),
(103, 3, '2');


-- Additional sample data for Staff_Information table
INSERT INTO `Staff_Information` (`staff_id`, `role`, `salary`) VALUES
(4, 'Bartender', 2800.00),
(5, 'Host/Hostess', 2500.00),
(6, 'Busser', 2000.00),
(7, 'Sous Chef', 4200.00),
(8, 'Server', 2800.00),
(9, 'Dishwasher', 1800.00),
(10, 'Line Cook', 3200.00);

-- Additional sample data for Custome_ Details table
INSERT INTO `Custome_ Details` (`customer_id`, `name`, `contact_details`, `Order_order_id`) VALUES
(4, 'Michael Johnson', '5551234567', 104),
(5, 'Emily Wilson', '7894561230', 105),
(6, 'David Brown', '3216549870', 106),
(7, 'Jennifer Martinez', '4567890123', 107),
(8, 'Chris Lee', '9876543210', 108),
(9, 'Amanda Taylor', '1239876540', 109),
(10, 'Matthew Clark', '4567891230', 110);

-- Additional sample data for Booking table
INSERT INTO `Booking` (`booking_id`, `date`, `customer_id`, `staff_id`, `time`) VALUES
(104, '2024-04-04', 4, 1, '18:30:00'),
(105, '2024-04-05', 5, 2, '19:30:00'),
(106, '2024-04-06', 6, 3, '20:30:00'),
(107, '2024-04-07', 7, 4, '21:00:00'),
(108, '2024-04-08', 8, 5, '17:30:00'),
(109, '2024-04-09', 9, 6, '16:30:00'),
(110, '2024-04-10', 10, 7, '15:30:00');

-- Additional sample data for Order table
INSERT INTO `Order` (`order_id`, `order_date`, `quantity`, `total_cost`, `customer_id`) VALUES
(104, '2024-04-04 12:30:00', 3, 70.00, 4),
(105, '2024-04-05 13:30:00', 2, 40.00, 5),
(106, '2024-04-06 14:30:00', 5, 100.00, 6),
(107, '2024-04-07 15:30:00', 4, 90.00, 7),
(108, '2024-04-08 16:30:00', 2, 50.00, 8),
(109, '2024-04-09 17:30:00', 3, 60.00, 9),
(110, '2024-04-10 18:30:00', 4, 80.00, 10);

-- Additional sample data for Delivery_Status table
INSERT INTO `Delivery_Status` (`order_id`, `delivery_date`, `status`) VALUES
(104, '2024-04-04', 'Pending'),
(105, '2024-04-05', 'Delivered'),
(106, '2024-04-06', 'In transit'),
(107, '2024-04-07', 'Pending'),
(108, '2024-04-08', 'Delivered'),
(109, '2024-04-09', 'Delivered'),
(110, '2024-04-10', 'In transit');

-- Additional sample data for Menu table
INSERT INTO `Menu` (`menu_id`, `cuisine`, `starter`, `course`, `drink`, `dessert`) VALUES
(4, 'French', 'Escargot', 'Coq au Vin', 'Champagne', 'Crème Brûlée'),
(5, 'Japanese', 'Edamame', 'Sushi', 'Sake', 'Mochi Ice Cream'),
(6, 'Indian', 'Samosa', 'Tikka Masala', 'Lassi', 'Gulab Jamun'),
(7, 'Greek', 'Spanakopita', 'Moussaka', 'Ouzo', 'Baklava'),
(8, 'Thai', 'Spring Rolls', 'Pad Thai', 'Thai Iced Tea', 'Mango Sticky Rice'),
(9, 'Spanish', 'Patatas Bravas', 'Paella', 'Sangria', 'Churros'),
(10, 'American', 'Buffalo Wings', 'Burger', 'Milkshake', 'Apple Pie');

-- Additional sample data for Order_Menu table
INSERT INTO `Order_Menu` (`order_id`, `menu_item_id`, `quantity`) VALUES
(104, 4, '2'),
(105, 5, '1'),
(106, 6, '3'),
(107, 7, '2'),
(108, 8, '1'),
(109, 9, '2'),
(110, 10, '3');


-- Additional sample data for Staff_Information table
INSERT INTO `Staff_Information` (`staff_id`, `role`, `salary`) VALUES
(11, 'Waiter', 2500.00),
(12, 'Bartender', 2800.00),
(13, 'Chef de Partie', 3500.00),
(14, 'Server', 2600.00),
(15, 'Sous Chef', 4000.00),
(16, 'Host/Hostess', 2300.00),
(17, 'Busser', 2000.00),
(18, 'Line Cook', 3200.00),
(19, 'Dishwasher', 1800.00),
(20, 'Assistant Chef', 3000.00),
(21, 'Manager', 5000.00),
(22, 'Sommelier', 3800.00),
(23, 'Pastry Chef', 3600.00),
(24, 'Food Runner', 2100.00),
(25, 'Mixologist', 2900.00),
(26, 'Head Waiter', 3200.00),
(27, 'Expeditor', 2700.00),
(28, 'Greeter', 2200.00),
(29, 'Prep Cook', 2800.00),
(30, 'Barback', 2000.00);

-- Additional sample data for Custome_ Details table
INSERT INTO `Custome_ Details` (`customer_id`, `name`, `contact_details`, `Order_order_id`) VALUES
(11, 'Sarah Johnson', '5551234567', 111),
(12, 'Andrew Wilson', '7894561230', 112),
(13, 'Olivia Brown', '3216549870', 113),
(14, 'William Martinez', '4567890123', 114),
(15, 'Sophia Lee', '9876543210', 115),
(16, 'Ethan Taylor', '1239876540', 116),
(17, 'Isabella Clark', '4567891230', 117),
(18, 'Alexander Rodriguez', '7891234560', 118),
(19, 'Emma Lewis', '6549873210', 119),
(20, 'James Hall', '3214567890', 120),
(21, 'Charlotte Allen', '9876541230', 121),
(22, 'Daniel Scott', '6541237890', 122),
(23, 'Mia King', '3217894560', 123),
(24, 'Benjamin Wright', '7896543210', 124),
(25, 'Amelia Green', '4563217890', 125),
(26, 'Harper Evans', '1237894560', 126),
(27, 'Matthew Hill', '7894563210', 127),
(28, 'Ava Adams', '4561237890', 128),
(29, 'Jackson Baker', '1234567890', 129),
(30, 'Evelyn Morris', '7896541230', 130);

-- Additional sample data for Booking table
INSERT INTO `Booking` (`booking_id`, `date`, `customer_id`, `staff_id`, `time`) VALUES
(111, '2024-04-11', 11, 1, '18:30:00'),
(112, '2024-04-12', 12, 2, '19:30:00'),
(113, '2024-04-13', 13, 3, '20:30:00'),
(114, '2024-04-14', 14, 4, '21:00:00'),
(115, '2024-04-15', 15, 5, '17:30:00'),
(116, '2024-04-16', 16, 6, '16:30:00'),
(117, '2024-04-17', 17, 7, '15:30:00'),
(118, '2024-04-18', 18, 8, '14:30:00'),
(119, '2024-04-19', 19, 9, '13:30:00'),
(120, '2024-04-20', 20, 10, '12:30:00'),
(121, '2024-04-21', 21, 11, '11:30:00'),
(122, '2024-04-22', 22, 12, '10:30:00'),
(123, '2024-04-23', 23, 13, '09:30:00'),
(124, '2024-04-24', 24, 14, '08:30:00'),
(125, '2024-04-25', 25, 15, '07:30:00'),
(126, '2024-04-26', 26, 16, '06:30:00'),
(127, '2024-04-27', 27, 17, '05:30:00'),
(128, '2024-04-28', 28, 18, '04:30:00'),
(129, '2024-04-29', 29, 19, '03:30:00'),
(130, '2024-04-30', 30, 20, '02:30:00');

