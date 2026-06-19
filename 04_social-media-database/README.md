# 📱 Social Media Database

A PostgreSQL database project that simulates the backend of a social media platform.

## 📌 Project Overview

This project demonstrates how social networks manage:

* Users
* Posts
* Comments
* Likes
* Followers

The goal is to practice relational database design and social network modeling.

---

## 🗄️ Database Schema

### Tables

| Table     | Description                   |
| --------- | ----------------------------- |
| users     | Stores user accounts          |
| posts     | Stores user posts             |
| comments  | Stores comments on posts      |
| likes     | Stores likes on posts         |
| followers | Stores follower relationships |

---

## 🔗 Relationships

```text
users
 │
 ├── posts
 │
 ├── comments
 │
 ├── likes
 │
 └── followers
```

---

## 🚀 Features

* User management
* Post creation
* Comment system
* Like system
* Follower system
* Engagement analytics

---

## 🛠 Technologies Used

* PostgreSQL
* SQL
* Git
* GitHub

---

## 📂 Project Structure

```text
social-media-database/
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
* Self Joins
* Many-to-Many Relationships
* Aggregation
* Ranking Queries

---

## 🎯 Learning Goals

* Design social network databases
* Practice advanced JOINs
* Understand follower systems
* Build analytics queries

---

## 👨‍💻 Author

Sohayb Chahid

