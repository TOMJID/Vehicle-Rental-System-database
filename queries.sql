
---

## 📁 File: queries.sql

```sql
-- ============================================
-- Vehicle Rental System - SQL Queries
-- ============================================

-- Query 1: JOIN - Get all booking details with customer and vehicle info
SELECT
    B.BOOKING_ID,
    U.NAME AS CUSTOMER_NAME,
    V.NAME AS VEHICLE_NAME,
    B.START_DATE,
    B.END_DATE,
    B.STATUS
FROM
    BOOKING AS B
    JOIN USERS AS U ON B.USER_ID = U.USER_ID
    JOIN VEHICLES AS V ON B.VEHICLE_ID = V.VEHICLE_ID;

-- Query 2: EXISTS - Find vehicles that have never been booked
SELECT * FROM
    VEHICLES V
WHERE
    NOT EXISTS (
        SELECT 1 FROM
            BOOKING B
        WHERE
            B.VEHICLE_ID = V.VEHICLE_ID
    )
ORDER BY
    VEHICLE_ID ASC;

-- Query 3: WHERE - Get all available cars
SELECT
    *
FROM
    VEHICLES
WHERE
    TYPE = 'car'
    AND STATUS = 'available';

-- Query 4: GROUP BY & HAVING - Vehicles with more than 2 bookings
SELECT
    V.NAME AS VEHICLE_NAME,
    COUNT(*) AS TOTAL_BOOKINGS
FROM
    BOOKING AS B
    JOIN VEHICLES AS V ON B.VEHICLE_ID = V.VEHICLE_ID
GROUP BY
    B.VEHICLE_ID,
    V.NAME
HAVING
    COUNT(*) > 2;
