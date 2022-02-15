/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select co.country, sum(p.amount) as "profit" from country co, city ci, address a, customer cu, rental r, payment p where co.country_id = ci.country_id and ci.city_id = a.city_id and  a.address_id = cu.address_id and cu.customer_id = r.customer_id and r.rental_id = p.rental_id group by co.country order by co.country;
