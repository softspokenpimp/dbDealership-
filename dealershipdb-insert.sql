
-- SQL INSERT STATEMENTS
--Movie Theatre Database


insert into salesperson(
	sales_id, first_name, last_name)
	values(77573, 'Andrew', 'Michaels');

insert into salesperson (
	sales_id, first_name, last_name)
	values(77523, 'Lizzie', 'Reina');

insert into customer (
	customer_id, first_name, last_name)
	values(0015, 'Sierra', 'Bounds');

insert into customer (
	customer_id, first_name, last_name)
	values(0023, 'Merlin', 'Knight');

insert into customer (
	customer_id, first_name, last_name)
	values(0000, 'Null', 'Null');
	
insert into service_ticket (
	ticket_id, service_type, sub_type, customer_id)
	values(78606, 'paint', 'touch-up', 0015);
	
insert into service_ticket (
	ticket_id, service_type, sub_type, customer_id)
	values(77805, 'tires', 'replace', 0015);

insert into service_ticket (
	ticket_id, service_type, sub_type, customer_id)
	values(00000, 'Null', 'Null', 0000);
	
insert into car (
	car_id, car_condition, make, model, ticket_id)
	values(7410, 'new', 'toyota', 'tundra', 78606);
	
insert into car (
	car_id, car_condition, make, model, ticket_id)
	values(8520, 'used', 'toyota', 'highlander', 78606);

insert into invoice (
	invoice_id, sales_id, customer_id, car_id)
	values(789789, 77573, 0023,7410);

insert into invoice (
	invoice_id, sales_id, customer_id, car_id)
	values(456456, 77573, 0023, 8520);

insert into mechanic (
	mechanic_id, first_name, last_name, ticket_id)
	values(123123, 'Kim', 'Kadash', 78606);

insert into mechanic (
	mechanic_id, first_name, last_name, ticket_id)
	values(123456, 'Kim', 'Kadash', 77805);

insert into part (
	part_id, part_type, sub_type, ticket_id)
	VALues(0001, 'tire', 'rubber', 77805);

insert into part (
	part_id, part_type, sub_type, ticket_id)
	values(0002, 'lights', '70W', 78606);









