
-- SQL ALTER STATEMENTS
--Movie Theatre Database


--Stored functions 
--add customer
create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void 
as $MAIN$
begin 
	insert into customer(customer_id, first_name, last_name)
	values (_customer_id, _first_name, _last_name);
end
$MAIN$
language plpgsql;

--add car
create or replace function add_car(_car_id INTEGER, _car_condition VARCHAR, _make VARCHAR, _model VARCHAR, _ticket_id INTEGER)
returns void 
as $MAIN$
begin 
	insert into car(car_id, car_condition, make, model, ticket_id)
	values (_car_id, _car_condition, _make, _model, _ticket_id);
end
$MAIN$
language plpgsql;

--call of add customer
select add_customer(1500, 'Lizzie', 'McGuire');

--call of add car
select add_car(7530, 'New', 'Ford','F-150', 0000);

--Verify additions 
select* from customer where customer_id = 1500;
select* from car where car_id = 7530;




