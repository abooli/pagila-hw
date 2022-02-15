/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
 select S.first_name, S.last_name, A.address as "street_address" from staff S, address A where S.address_id = A.address_id;

