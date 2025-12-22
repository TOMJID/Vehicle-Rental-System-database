<div align='center'>
  
# Vehicle Rental System – Database Queries

</div>

<div align='center'> 
  
This document contains example SQL queries for a **Vehicle Rental System** database. 
<br/>
Each query addresses a specific real-world requirement using standard SQL techniques.

</div>

---


## Query 1: JOIN  

```sql
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

```

## Query 2: EXISTS

```sql
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
```
## Query 3: WHERE
```sql
SELECT
    *
FROM
    VEHICLES
WHERE
    TYPE = 'car'
    AND STATUS = 'available';
```

## Query 4: GROUP BY & HAVING
```sql
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
```





