---
name: databases
description: Work with MongoDB (document database, aggregation pipelines, Atlas cloud) and PostgreSQL (relational database, SQL queries, psql CLI). Use when designing schemas, writing queries, optimizing indexes, performing migrations, configuring replication, implementing backups, managing permissions, or analyzing query performance.
---

# Databases

Unified guide for MongoDB (document-oriented) and PostgreSQL (relational).

## Database Selection

**MongoDB** — Schema flexibility, horizontal scaling, JSON data, high write throughput, rapid prototyping
**PostgreSQL** — ACID transactions, complex relationships, SQL, strict schema, mature ecosystem

## Quick Start

### MongoDB
```bash
mongosh "mongodb+srv://cluster.mongodb.net/mydb"
db.users.insertOne({ name: "Alice", age: 30 })
db.users.find({ age: { $gte: 18 } })
```

### PostgreSQL
```bash
psql -U postgres -d mydb
CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, age INT);
SELECT * FROM users WHERE age >= 18;
```

## References

### MongoDB
- `references/mongodb-crud.md` - CRUD, query operators
- `references/mongodb-aggregation.md` - Aggregation pipeline
- `references/mongodb-indexing.md` - Index types, performance
- `references/mongodb-atlas.md` - Atlas cloud setup

### PostgreSQL
- `references/postgresql-queries.md` - SELECT, JOINs, CTEs
- `references/postgresql-psql-cli.md` - psql commands
- `references/postgresql-performance.md` - EXPLAIN, optimization
- `references/postgresql-administration.md` - User management, backups
