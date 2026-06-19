# 🎓 University Management System

A PostgreSQL database project that simulates a university management system.

## 📌 Project Overview

This project demonstrates how to manage:

* Students
* Professors
* Courses
* Enrollments

The main objective is to practice many-to-many relationships and advanced JOIN operations.

---

## 🗄️ Database Schema

### Tables

| Table       | Description                         |
| ----------- | ----------------------------------- |
| students    | Stores student information          |
| professors  | Stores professor information        |
| courses     | Stores course information           |
| enrollments | Stores student-course registrations |

---

## 🔗 Relationships

```text
professors
     │
     ▼
courses
     ▲
     │
enrollments
     │
     ▼
students
```

---

## 🚀 Features

* Student management
* Professor management
* Course management
* Enrollment tracking
* Course reports
* Student reports

---

## 🛠 Technologies Used

* PostgreSQL
* SQL
* Git
* GitHub

---

## 📂 Project Structure

```text
university-management-system/
├── README.md
├── schema.sql
├── data.sql
├── queries.sql
└── notes.md
```

---

## 📚 Concepts Practiced

* Primary Keys
* Foreign Keys
* Many-to-Many Relationships
* Composite Primary Keys
* JOIN
* COUNT
* GROUP BY
* ORDER BY

---

## 🎯 Learning Goals

* Design relational databases
* Model university systems
* Practice SQL reporting
* Understand enrollment systems

---

## 👨‍💻 Author

Sohayb Chahid

