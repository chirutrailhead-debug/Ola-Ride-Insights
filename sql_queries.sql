-- 1. Retrieve all successful bookings
SELECT *
FROM ola_rides
WHERE Booking_Status = 'Success';

-- 2. Average ride distance per vehicle type
SELECT 
    Vehicle_Type,
    ROUND(AVG(Ride_Distance), 2) AS Avg_Ride_Distance
FROM ola_rides
GROUP BY Vehicle_Type;

-- 3. Total number of rides cancelled by customers
SELECT COUNT(*) AS Total_Cancelled_By_Customer
FROM ola_rides
WHERE Booking_Status = 'Canceled by Customer';

-- 4. Top 5 customers by number of rides
SELECT 
    Customer_ID,
    COUNT(Booking_ID) AS Total_Rides
FROM ola_rides
GROUP BY Customer_ID
ORDER BY Total_Rides DESC
LIMIT 5;

-- 5. Rides cancelled by drivers
SELECT COUNT(*) AS Total_Cancelled_By_Driver
FROM ola_rides
WHERE Canceled_Rides_by_Driver IS NOT NULL;

-- 6. Max & Min driver ratings for Prime Sedan
SELECT 
    MAX(Driver_Ratings) AS Max_Driver_Rating,
    MIN(Driver_Ratings) AS Min_Driver_Rating
FROM ola_rides
WHERE Vehicle_Type = 'Prime Sedan';

-- 7. Rides paid using UPI
SELECT *
FROM ola_rides
WHERE Payment_Method = 'UPI';

-- 8. Average customer rating per vehicle type
SELECT 
    Vehicle_Type,
    ROUND(AVG(Customer_Rating), 2) AS Avg_Customer_Rating
FROM ola_rides
GROUP BY Vehicle_Type;

-- 9. Total booking value of successful rides
SELECT 
    ROUND(SUM(Booking_Value), 2) AS Total_Successful_Booking_Value
FROM ola_rides
WHERE Booking_Status = 'Success';

-- 10. Incomplete rides with reasons
SELECT 
    Booking_ID,
    Booking_Status,
    Canceled_Rides_by_Customer,
    Canceled_Rides_by_Driver
FROM ola_rides
WHERE Booking_Status <> 'Success';
