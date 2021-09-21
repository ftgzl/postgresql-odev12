-- Örnek 1
SELECT COUNT(*) as filmSayısı FROM film 
WHERE length >
(SELECT ROUND(AVG(length)) FROM film)

-- Örnek 2
SELECT COUNT(*) as filmSayısı FROM film 
WHERE rental_rate =
(SELECT MAX(rental_rate) FROM film)

-- Örnek 3
SELECT * FROM film 
WHERE rental_rate = 
(SELECT MIN(rental_rate) FROM film)
AND
replacement_cost = 
(SELECT MIN(replacement_cost) FROM film)

-- Örnek 4
SELECT customer_id,first_name,last_name,(SELECT COUNT(*) FROM payment
WHERE payment.customer_id = customer.customer_id) as payment FROM customer
ORDER BY payment DESC