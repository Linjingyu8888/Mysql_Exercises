-- schema
Create table If Not Exists Customer (id int, name varchar(25), referee_id int)
Truncate table Customer
insert into Customer (id, name, referee_id) values ('1', 'Will', 'None')
insert into Customer (id, name, referee_id) values ('2', 'Jane', 'None')
insert into Customer (id, name, referee_id) values ('3', 'Alex', '2')
insert into Customer (id, name, referee_id) values ('4', 'Bill', 'None')
insert into Customer (id, name, referee_id) values ('5', 'Zack', '1')
insert into Customer (id, name, referee_id) values ('6', 'Mark', '2')

-- solution
select name
from Customer
where referee_id != 2 or referee_id is null;

-- note:
--In this example, the query retrieves all rows where the value in your_column is not equal to 'some_value' or where the value is NULL. 
--The IS NULL condition is used to include rows where the column is NULL.
--Note that using the standard inequality operator (<> or !=) with NULL values might behave differently depending on the database system. 
--In SQL, NULL is considered unknown, so comparing anything (including NULL) with an unknown value using the standard inequality operator results in an unknown result. 
--Therefore, explicitly including the IS NULL condition is often necessary for the desired outcome.