/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select S.first_name, S.last_name, sum(P.amount) as "sum" from staff S, payment P where (S.staff_id = P.staff_id and extract(year from P.payment_date) = 2020 and extract(month from payment_date) = 1) group by S.first_name, S.last_name;
