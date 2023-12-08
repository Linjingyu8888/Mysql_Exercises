
-- schema
Create table If Not Exists Products (product_id int, low_fats ENUM('Y', 'N'), recyclable ENUM('Y','N'))
Truncate table Products
insert into Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N')
insert into Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('4', 'N', 'N')

-- solution
select product_id
from Products
where low_fats = 'Y' AND recyclable = 'Y';

-- note:
-- In SQL, the TRUNCATE TABLE statement is used to quickly delete all rows from a table. 
-- Unlike the DELETE statement in Sqlite, which removes rows one at a time and logs individual row deletions, 
-- TRUNCATE TABLE is a more efficient operation for removing all data from a table.