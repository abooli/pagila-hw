/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

select actor_id from actor where substring(first_name, 1, 1) = 'J';
