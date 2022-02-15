/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
select f.title from film f, film_category fc, category c where f.film_id = fc.film_id and fc.category_id = c.category_id and c.name = 'Family';
