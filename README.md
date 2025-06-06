# 🎬 Movie Rental Database Project

## 📘 Project Overview
This project involves creating a SQL-based **Movie Rental Database** system to manage customer details, movie inventory, and rental transactions. The system helps in tracking **rental history**, identifying **late returns**, and generating reports such as most rented movies and pending returns.

## 🎯 Objective
To design and query a transactional database using SQL that:
- Stores customer and movie data
- Records rental and return dates
- Identifies late returns
- Generates rental-based insights

---

## 🛠️ Tools Used
- SQL (MySQL / PostgreSQL / SQLite compatible)
- DB Browser / MySQL Workbench (for local testing)

---

## 🗃️ Database Schema

### Customers
| Column       | Type        | Description                    |
|--------------|-------------|--------------------------------|
| customer_id  | INT (PK)    | Unique customer ID             |
| name         | VARCHAR     | Full name                      |
| email        | VARCHAR     | Email address                  |
| phone        | VARCHAR     | Contact number                 |
| address      | TEXT        | City or address info           |

### Movies
| Column       | Type        | Description                    |
|--------------|-------------|--------------------------------|
| movie_id     | INT (PK)    | Unique movie ID                |
| title        | VARCHAR     | Movie title                    |
| genre        | VARCHAR     | Movie genre                    |
| release_year | INT         | Year of release                |
| available    | BOOLEAN     | Availability status            |

### Rentals
| Column       | Type        | Description                    |
|--------------|-------------|--------------------------------|
| rental_id    | INT (PK)    | Unique rental transaction ID   |
| customer_id  | INT (FK)    | Linked customer ID             |
| movie_id     | INT (FK)    | Linked movie ID                |
| rental_date  | DATE        | Date of rental                 |
| due_date     | DATE        | Expected return date           |
| return_date  | DATE        | Actual return date             |

---

## 🧪 Sample Data
- 20 Customers
- 20 Movies
- 25+ Rental records

This data simulates a working rental store environment with both on-time and late returns.

---


