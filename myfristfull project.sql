DROP TABLE IF EXISTS sales;

create table  
   sales (customer_id varchar(1) ,
   order_date date,
   product_id integer );
   
desc sales;


INSERT INTO sales 
 VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 


DROP TABLE IF EXISTS menu;

create table  
  menu (product_id integer,
  product_name varchar(100),
  price integer );
   
desc menu;
INSERT INTO menu
  VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  
DROP TABLE IF EXISTS  members;

create table  
   members (customer_id varchar(1) ,
   join_date timestamp);
   
desc members;

INSERT INTO members
 VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');