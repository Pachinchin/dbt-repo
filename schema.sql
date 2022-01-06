create schema if not exists jaffle_shop;
	
create schema if not exists stripe;

create table jaffle_shop.customers(
  id integer,
  first_name varchar(50),
  last_name varchar(50)
);
	
create table jaffle_shop.orders(
  id integer,
  user_id integer,
  order_date date,
  status varchar(50),
  _etl_loaded_at timestamp default current_timestamp
);
	
create table stripe.payment(
  id integer,
  orderid integer,
  paymentmethod varchar(50),
  status varchar(50),
  amount integer,
  created date,
  _batched_at timestamp default current_timestamp
);


copy jaffle_shop.orders(id, user_id, order_date, status)
from 's3://dbt-tutorial-public/jaffle_shop_orders.csv'
iam_role 'arn:aws:iam::342412686791:role/service-role/AmazonRedshift-CommandsAccessRole-20220105T004634'
region 'us-west-2'
delimiter ','
ignoreheader 1
acceptinvchars;

copy stripe.payment(id, orderid, paymentmethod, status, amount, created)
from 's3://dbt-tutorial-public/stripe_payments.csv'
iam_role 'arn:aws:iam::342412686791:role/service-role/AmazonRedshift-CommandsAccessRole-20220105T004634'
region 'us-west-2'
delimiter ','
ignoreheader 1
acceptinvchars;

copy jaffle_shop.customers( id, first_name, last_name)
from 's3://dbt-tutorial-public/jaffle_shop_customers.csv'
iam_role 'arn:aws:iam::342412686791:role/service-role/AmazonRedshift-CommandsAccessRole-20220105T004634'
region 'us-west-2'
delimiter ','
ignoreheader 1
acceptinvchars;