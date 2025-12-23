# Vehicle Rental System - Database Project

## Project Overview

This is a database project for a **Vehicle Rental System** that allows customers to rent vehicles like cars, bikes, and trucks. The system manages users, vehicles, and bookings efficiently. The project demonstrates SQL query techniques including **JOIN**, **EXISTS**, **WHERE**, **GROUP BY**, and **HAVING** to manage and retrieve data effectively.

---

<div align='center'>
  

## Database Tables

| Table Name | Description |
|------------|-------------|
| **users** | Stores customer information (name, email, phone, role) |
| **vehicles** | Stores vehicle details (name, type, model, price, status) |
| **booking** | Stores rental booking records (user, vehicle, dates, cost) |

---

## Table Relationships

| Relationship | Description |
|--------------|-------------|
| One-to-Many | One user can have multiple bookings |
| Many-to-One | Multiple bookings can refer to same vehicle |
| One-to-One | Each booking links to one user and one vehicle |

---

## Tools Used

| Purpose | Tool |
|---------|------|
| Database | PostgreSQL |
| Query Tool | psql / pgAdmin |

</div>

---

## Queries Explanation

### Query 1: JOIN

**Purpose:** Display all booking details with customer name and vehicle name.

**How it works:**
- Combines data from booking, users, and vehicles tables
- Uses JOIN to link related records
- Shows booking ID, customer name, vehicle name, dates, and status


### Query 2: NOT EXISTS
Purpose: Find vehicles that have never been booked.

**How it works:**
- Checks each vehicle against the booking table
- Returns vehicles with no matching booking records
- Useful for identifying unused inventory

---

### Query 3: WHERE
Purpose: Find all available cars for rental.

**How it works:**
- Filters vehicles table using two conditions
- TYPE must be 'car' AND status must be 'available'
- Shows only cars ready for booking

---

### Query 4: GROUP BY & HAVING
Purpose: Find popular vehicles with more than 2 bookings.

**How it works:**
- Groups bookings by vehicle
- Counts total bookings per vehicle
- HAVING filters only vehicles with count > 2

---

<div align='center'> > - Tomjid - < </div>
