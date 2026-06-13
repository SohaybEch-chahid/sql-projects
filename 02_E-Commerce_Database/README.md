# 🛒 E-Commerce Database

A PostgreSQL database project that simulates the backend of a small online store.

## 📌 Project Overview

This project demonstrates how to design and query a relational database using PostgreSQL.

The database manages:

* Customers
* Product Categories
* Products
* Orders
* Order Items

It also includes analytical queries for reporting and business insights.

---

## 🗄️ Database Schema

### Tables

| Table       | Description                            |
| ----------- | -------------------------------------- |
| customers   | Stores customer information            |
| categories  | Stores product categories              |
| products    | Stores product details                 |
| orders      | Stores customer orders                 |
| order_items | Stores products included in each order |

---

## 🔗 Relationships

```text
customers
    │
    ▼
orders
    │
    ▼
order_items
    ▲
    │
products
    ▲
    │
categories
```

---

## 🚀 Features

* Customer management
* Product catalog management
* Order tracking
* Revenue calculations
* Sales reports
* Product performance analysis

---

## 🛠 Technologies Used

* PostgreSQL
* SQL
* Git
* GitHub

---

## 📂 Project Structure

```text
ecommerce-database/
├── README.md
├── schema.sql
├── data.sql
├── queries.sql
└── notes.md
```

---

## ▶️ How To Run

Create the database:

```bash
sudo -u postgres createdb ecommerce_db
```

Run the schema:

```bash
sudo -u postgres psql -d ecommerce_db -f schema.sql
```

Insert sample data:

```bash
sudo -u postgres psql -d ecommerce_db -f data.sql
```

Execute queries:

```bash
sudo -u postgres psql -d ecommerce_db -f queries.sql
```

---

## 📚 Concepts Practiced

* Primary Keys
* Foreign Keys
* One-to-Many Relationships
* JOIN
* GROUP BY
* COUNT
* AVG
* SUM
* ORDER BY
* Aggregate Functions

---

## 🎯 Learning Goals

By completing this project, I practiced:

* Database design
* Relationship modeling
* Writing SQL queries
* Data analysis with SQL
* PostgreSQL project workflow

---

## 👨‍💻 Author

Sohayb Chahid

Learning PostgreSQL through hands-on projects.

