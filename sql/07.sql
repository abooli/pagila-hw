/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
 select * from ( select last_name, count(last_name) as "last_name_count" from actor group by last_name     order by "last_name_count" desc) as innerTable where "last_name_count" > 1;
