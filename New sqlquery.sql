create database Sale;
use Sale;
create table salesman(
	salesman_id INT,
	fname varchar(20),
	city varchar(20),
	commission FLOAT);

	insert into salesman(salesman_id,fname,city,commission) values 
	(5002,'Nail Knite','Paris',0.13),
	(5005,'Pit Alex','London',0.11),
	(5006,'Mc Lyon','Paris ',0.14),
	(5003,'Lauson Hen',null,0.12),
	(5007,'Paul Adam','Rome',0.13);


	select * from salesman;

	SELECT fname AS NAME, commission AS COMMISSION
FROM salesman;

use Sale;

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,           
    purch_amt DECIMAL(10, 2),         
    ord_date DATE,                   
    customer_id INT,                  
    salesman_id INT                   
);


INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 500);

select * from orders;

UPDATE salesman
SET commission = commission + 0.5
WHERE commission > 0.20;




UPDATE salesman
SET city = 'Amsterdam'
WHERE city IS NULL;


DELETE FROM salesman
WHERE commission < 0.13;


DELETE FROM salesman
WHERE city = 'Rome';
