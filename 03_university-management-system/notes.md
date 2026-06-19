# University Management System Notes

## Relationships

professors -> courses (1:N)

students -> enrollments (1:N)

courses -> enrollments (1:N)

students <-> courses (M:N)

---

## Key Concept

Many-to-Many relationships cannot be implemented directly.

A junction table is required:

```text
students
    │
    ▼
enrollments
    ▲
    │
courses
```

The `enrollments` table connects students and courses.

---

## Concepts Practiced

* Primary Keys
* Foreign Keys
* Composite Keys
* Many-to-Many Relationships
* JOIN
* GROUP BY
* COUNT
* EXISTS
* ORDER BY

---

## Real World Examples

Many-to-Many relationships:

* Students ↔ Courses
* Users ↔ Roles
* Customers ↔ Products
* Actors ↔ Movies

