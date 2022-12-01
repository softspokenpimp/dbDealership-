
-- SQL CREATE STATEMENTS
--Dealership Database


create table salesperson(
	sales_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	service_type VARCHAR(100),
	sub_type VARCHAR(100),
	customer_id INTEGER not null,
	foreign key (customer_id) references customer(customer_id)
);

create table car(
	car_id SERIAL primary key, 
	car_condition VARCHAR(100),
	make VARCHAR(100),
	model VARCHAR(100),
	ticket_id INTEGER not null, 
	foreign key (ticket_id) references service_ticket(ticket_id)
);

create table invoice(
	invoice_id SERIAL primary key, 
	sales_id INTEGER not null,
	customer_id INTEGER not null, 
	car_id INTEGER not null,
	foreign key (sales_id) references salesperson(sales_id),
	foreign key (customer_id) references customer(customer_id),
	foreign key (car_id) references car(car_id)
);

create table mechanic(
	mechanic_id SERIAL primary key, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	ticket_id INTEGER not null, 
	foreign key (ticket_id) references service_ticket(ticket_id)
);

create table part(
	part_id SERIAL primary key, 
	part_type VARCHAR(100),
	sub_type VARCHAR(100),
	ticket_id INTEGER not null, 
	foreign key (ticket_id) references service_ticket(ticket_id)
);












