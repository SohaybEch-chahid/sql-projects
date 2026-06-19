# Social Media Database Notes

## Relationships

users -> posts (1:N)

users -> comments (1:N)

users -> likes (1:N)

posts -> comments (1:N)

posts -> likes (1:N)

users <-> users (followers)

---

## Self-Referencing Relationship

The followers table references the users table twice:

```text
users
  ▲
  │
followers
  │
  ▼
users
```

This allows:

* One user to follow many users
* One user to be followed by many users

---

## Concepts Practiced

* Primary Keys
* Foreign Keys
* Many-to-Many Relationships
* Self Joins
* Aggregation
* Ranking Queries
* Social Graph Modeling

---

## Real World Examples

* Instagram
* Facebook
* X (Twitter)
* LinkedIn

All of them use similar database structures.

