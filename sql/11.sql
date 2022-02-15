/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
select f.film_id, f.title, count(f.title) from film f, inventory i where f.film_id = i.film_id and substring(f.title, 1, 1) = 'H' group by f.film_id, f.title order by f.title desc;
