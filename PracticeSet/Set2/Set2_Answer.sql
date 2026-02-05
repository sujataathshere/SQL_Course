/* 
Que1: Write the Query to find avg marks in each city in ascending order.
*/

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

/* 
Que2: For the given table, find the total payment according to each payment method.
*/

SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;