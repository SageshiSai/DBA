-------------------------------------1-----------------------------------
SELECT * FROM actor WHERE first_name = "Scarlett";
-------------------------------------2-----------------------------------
SELECT * FROM actor WHERE last_name = "Johansson";
-------------------------------------3-----------------------------------
SELECT * FROM actor WHERE first_name LIKE "%O%";
-------------------------------------4-----------------------------------
SELECT * FROM actor WHERE first_name LIKE "%O%" AND last_name LIKE "%A%";
-------------------------------------5-----------------------------------
SELECT * FROM actor WHERE first_name LIKE "%O%O%" AND last_name LIKE "%A%";
-------------------------------------6-----------------------------------
SELECT * FROM actor WHERE first_name LIKE "___B%";
-------------------------------------7-----------------------------------
SELECT * FROM city WHERE city LIKE "A%";
-------------------------------------8-----------------------------------
SELECT * FROM city WHERE city LIKE "%S";
-------------------------------------9-----------------------------------
SELECT * FROM city WHERE country_id = 61;
-------------------------------------10----------------------------------
SELECT * FROM city WHERE country_id=(SELECT country_id FROM country WHERE country="SPAIN");
SELECT city.city FROM country, city WHERE country.country="SPAIN" AND city.country_id=country.country_id;
SELECT c.city FROM country co, city c WHERE co.country="SPAIN" AND c.country_id=co.country_id;
-------------------------------------11----------------------------------
SELECT * FROM `city` WHERE city LIKE "% %" OR city LIKE "%-%";
-------------------------------------12----------------------------------
SELECT * FROM film WHERE length BETWEEN 80 AND 100;
length >=80 AND length <=100;
-------------------------------------13----------------------------------
SELECT * FROM film WHERE rental_rate BETWEEN 1 AND 3;
-------------------------------------14----------------------------------
SELECT * from film WHERE length(title)>=12 AND rating in("PG", "G");
-------------------------------------15----------------------------------
SELECT * from film WHERE rating !="NC-17";
SELECT * from film WHERE rating <>"NC-17";
-------------------------------------16----------------------------------
SELECT * from film WHERE rating ="PG" AND length > 120;
-------------------------------------17----------------------------------
SELECT count(*) from actor;
-------------------------------------18----------------------------------
SELECT count(*) FROM city WHERE country_id=(SELECT country_id FROM country WHERE country="SPAIN");
-------------------------------------19----------------------------------
SELECT count(*) as num_countries FROM country WHERE country LIKE ="A%";
-------------------------------------20----------------------------------
SELECT AVG(length) FROM film WHERE rating="PG";
-------------------------------------21----------------------------------
SELECT SUM(rental_rate) FROM film;
-------------------------------------22----------------------------------
SELECT length FROM film ORDER BY length DESC LIMIT 1;
-------------------------------------23----------------------------------
SELECT length FROM film ORDER BY length LIMIT 1;
-------------------------------------24----------------------------------
SELECT c.city, co.country FROM city c, country co WHERE co.country="SPAIN" AND c.country_id=co.country_id;
-------------------------------------25----------------------------------
SELECT t.title, a.first_name, a.last_name FROM film t, actor a, film_actor fa WHERE t.film_id = fa.film_id AND fa.actor_id = a.actor_id;
-------------------------------------26----------------------------------
SELECT t.title, c.name FROM film t, category c, film_category fc WHERE t.film_id = fc.film_id AND fc.category_id = c.category_id;
-------------------------------------27----------------------------------
SELECT co.country, c.city, a.address FROM city c, country co, address a, staff s WHERE s.address_id = a.address_id AND c.country_id=co.country_id AND c.city_id = a.city_id;
-------------------------------------28----------------------------------
SELECT co.country, c.city, a.address FROM city c, country co, address a, customer s WHERE s.address_id = a.address_id AND c.country_id=co.country_id AND c.city_id = a.city_id;
-------------------------------------29----------------------------------
SELECT count(*), rating FROM film GROUP BY rating;
-------------------------------------30----------------------------------
SELECT COUNT(*), a.first_name FROM film f, film_actor fa, actor a WHERE a.first_name = "ED" AND a.last_name = "CHASE" AND f.film_id = fa.film_id AND fa.actor_id = a.actor_id GROUP BY a.first_name;
-------------------------------------31----------------------------------
SELECT AVG(f.length),c.name FROM category c, film f, film_category fc WHERE c.category_id = fc.category_id AND fc.film_id=f.film_id GROUP BY c.name;