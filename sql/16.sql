/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
select f.title, sum(p.amount) as "profit"  from payment p, rental r, inventory i, film f where p.rental_id = r.rental_id and r.inventory_id = i.inventory_id and i.film_id = f.film_id group by f.title order by "profit" desc;
