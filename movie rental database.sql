SELECT * FROM movie_rental.rentals;

SELECT r.rental_id, c.customer_id, m.movie_id, r.rental_date, r.due_date, r.return_date
FROM Rentals r
JOIN Customers c ON r.customer_id = c.customer_id
JOIN Movies m ON r.movie_id = m.movie_id;

--#late_returns
SELECT r.rental_id, c.name, m.title, r.due_date, r.return_date
FROM Rentals r
JOIN Customers c ON r.customer_id = c.customer_id
JOIN Movies m ON r.movie_id = m.movie_id
WHERE r.return_date > r.due_date;


--#still_on_rent
SELECT m.title, c.customer_id, r.rental_date, r.due_date
FROM Rentals r
JOIN Movies m ON r.movie_id = m.movie_id
JOIN Customers c ON r.customer_id = c.customer_id
WHERE r.return_date IS NULL;

--#Best seller
SELECT m.title, COUNT(*) AS rental_count
FROM Rentals r
JOIN Movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY rental_count DESC;

