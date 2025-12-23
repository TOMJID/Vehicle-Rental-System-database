-- Query 1: JOIN - Get all booking details with customer and vehicle info
SELECT
    B.booking_id,
    U.name AS customer_name,
    V.name AS vehicle_name,
    B.start_date,
    B.end_date,
    B.status
FROM
    booking AS B
    JOIN users AS U ON B.u_id = U.user_id
    JOIN vehicles AS V ON B.v_id = V.vehicle_id;

-- Query 2: EXISTS - Find vehicles that have never been booked
SELECT * FROM
    vehicles AS V
WHERE
    NOT EXISTS (
        SELECT 1 FROM
            booking AS B
        WHERE
            B.v_id = V.vehicle_id
    )
ORDER BY
    vehicle_id ASC;

-- Query 3: WHERE - Get all available cars
SELECT
    *
FROM
    vehicles
WHERE
    TYPE = 'car'
    AND status = 'available';

-- Query 4: GROUP BY & HAVING - Vehicles with more than 2 bookings
SELECT
    V.name AS vehicle_name ,
    COUNT(*) AS total_bookings
FROM
    booking AS B
    JOIN vehicles AS V ON B.v_id = V.vehicle_id
GROUP BY
    B.v_id,
    V.name
HAVING
    COUNT(*) > 2;
