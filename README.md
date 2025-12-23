<div align="center">
  
# Vehicle Rental System - Database Project

This is a database project for a **Vehicle Rental System** that allows customers to rent vehicles like cars, bikes, and trucks. The project demonstrates SQL query techniques to manage and retrieve data efficiently.


---

## Database Tables

| Table Name | Description |
|------------|-------------|
| USERS | Stores customer information |
| VEHICLES | Stores vehicle details (name, type, price, status) |
| BOOKING | Stores rental booking records |

</div>

---

## SQL Queries Explanation

### Query 1: JOIN
**Purpose:** Display all booking details with customer name and vehicle name.

**How it works:**
- Combines data from BOOKING, USERS, and VEHICLES tables
- Uses JOIN to link related records
- Shows booking ID, customer name, vehicle name, dates, and status

---

### Query 2: NOT EXISTS
**Purpose:** Find vehicles that have never been booked.

**How it works:**
- Checks each vehicle against the BOOKING table
- Returns vehicles with no matching booking records
- Useful for identifying unused inventory

---

### Query 3: WHERE
**Purpose:** Find all available cars for rental.

**How it works:**
- Filters VEHICLES table using two conditions
- TYPE must be 'car' AND STATUS must be 'available'
- Shows only cars ready for booking

---

### Query 4: GROUP BY & HAVING
**Purpose:** Find popular vehicles with more than 2 bookings.

**How it works:**
- Groups bookings by vehicle
- Counts total bookings per vehicle
- HAVING filters only vehicles with count > 2


<div align='center'> > - Tomjid - < </div>
