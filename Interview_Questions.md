# Basic DBMS Questions (Frontend-Focused)

1. What is a DBMS and why do we use it?

2. What is the difference between SQL and NoSQL databases?

3. What is the difference between relational and non-relational databases?

4. What is a primary key?

5. What is a foreign key?

6. What is normalization?

7. What is indexing and why is it important?

8. What is the difference between INNER JOIN and LEFT JOIN?

9. What are CRUD operations?

10. What is a transaction?

🔹 Practical Questions (More Relevant to Frontend)

Why is indexing important for frontend performance?

What happens on the frontend if a database query is slow?

How can poor database design affect UI performance?

What is pagination and why is it important?

What is caching and how does it reduce database load?

What is the N+1 query problem?

Why shouldn’t frontend directly connect to a database?

What is rate limiting and how is it related to databases?

🔹 SQL-Oriented Questions

Write a query to fetch the latest 10 users.

Write a query to count users grouped by country.

What is the difference between WHERE and HAVING?

What is a composite key?

What is a unique constraint?

Common relational DB examples:

MySQL

PostgreSQL

NoSQL example:

MongoDB

🔹 Advanced Conceptual Questions

What is ACID?

What is eventual consistency?

What are database locks?

What is sharding?

What is replication?

What is an ORM and why is it used?

How does GraphQL help reduce over-fetching?

🔹 Scenario-Based Questions (Very Common in Interviews)

1. Your dashboard is loading very slowly. How would you debug if it’s a database issue?

2. You need to display 1 million records in a table. What would you do?

Expected answers:

Pagination

Infinite scrolling

Server-side filtering

Indexing

Caching

3. Backend says they optimized the query but UI is still slow. What do you check?

Expected:

Network tab

Payload size

Serialization

Caching headers

🎯 What Interviewers Actually Want From Frontend Devs

They want to know:

You understand backend constraints

You think about performance

You know how APIs interact with databases

You won’t design inefficient frontend data fetching