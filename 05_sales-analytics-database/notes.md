# Sales Analytics Database Notes

## Relationships

categories -> products (1:N)

products -> sales (1:N)

---

## Business Questions Answered

* Which product sells the most?
* Which category generates the most revenue?
* What is the monthly revenue?
* Which products are not selling?
* What are the top revenue-generating products?

---

## Concepts Practiced

* Primary Keys
* Foreign Keys
* JOIN
* GROUP BY
* COUNT
* SUM
* AVG
* ORDER BY
* DATE_TRUNC
* Business Reporting

---

## Bonus Topics To Learn Next

### Window Functions

Examples:

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* LAG()
* LEAD()

### Common Table Expressions (CTE)

```sql
WITH revenue AS (
    SELECT ...
)
SELECT * FROM revenue;
```

### Views

```sql
CREATE VIEW monthly_revenue AS
SELECT ...
```

### Indexes

```sql
CREATE INDEX idx_sales_date
ON sales(sale_date);
```

These topics are commonly used by Data Analysts, Data Engineers, and Backend Developers.

