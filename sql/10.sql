/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select f.title, f.film_id, count(*) as "actor_count" from film f, film_actor fa where f.film_id = fa.film_id group by(f.title, f.film_id) order by "actor_count", f.title;
