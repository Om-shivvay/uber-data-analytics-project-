create database uber; 
use uber;
select * from bookings; 

-- retrive all succesful bookings 
 
select * from bookings where booking_status = 'success'; 

-- find the average ride distance for each vehicle type 

select vehicle_Type, AVG(ride_distance)
as avg_distance from bookings 
group by Vehicle_Type; 

-- get the total number of cancelled rides by coustamer 

select count(*) from bookings 
where Booking_Status = 'canceled by customer';

-- list the top 5 customers who booked the highest no of rides 

select customer_id, count(booking_id) as total_rides
from bookings
group by Customer_ID 
order by total_rides desc limit 5; 

-- get the number of rides cancelled by drivers due to personal and car related issues

select count(*) from bookings 
where Canceled_Rides_by_Driver = "personal & car related issue"; 

-- find the maximum and minimum driver ratings for prime sedan bookings

select max(driver_ratings) as max_rating,
min(driver_ratings) as min_rating 
from bookings where Vehicle_Type = 'prime sedan'; 

-- retrive all rides where payment was made using UPI 

select * from bookings where Payment_Method = 'UPI';

-- FIND THE AVERAGE CUSTAMER RATING PER VEHICLE TYPE 

SELECT VEHICLE_TYPE, AVG(CUSTOMER_RATING) AS AVG_CUSTOMER_RATING 
FROM BOOKINGS
group by VEHICLE_TYPE; 

-- calculate the total booking valu of rides completed succesfully 

SELECT SUM(BOOKING_VALUE) AS TOTAL_SUCCESFUL_VALUE
FROM BOOKINGS 
WHERE BOOKING_STATUS = 'SUCCESS';

-- LIST ALL INCOMPLETE RIDES ALONG WITH THE REASONS 

SELECT BOOKING_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'YES';













