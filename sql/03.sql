/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */

select last_name from actor where strpos(last_name, 'LI') > 0 order by last_name;
