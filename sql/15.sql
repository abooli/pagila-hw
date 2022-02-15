/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select c.name, count(*) as "sum" from category c, film_category fc, film f, language l where c.category_id = fc.category_id and fc.film_id = f.film_id and f.language_id = l.language_id and l.name = 'English' group by c.name;

