select * from customer_data

select* from sales_data
select* from product_data

--sales amount in sales data = 1st char is 6 to 9 and 3rd char is 2 to 6 and after point 1st char is 0 and 2nd char is 0,9,2,5
select customer_id,sales_amount:: varchar from sales_data
where sales_amount::varchar ~* '^[6-9][0-9][2-6].0(0|9|2|5)$'
order by sales_amount;


--customer_id in sales data 4 char is (2,6,1) ,6 char is 0 to 5 and 7 is 5

select customer_id, product_id, product_category from sales_data 
where customer_id ~ '^cst(2|6|1)[0-9][0-5]5$' 
order by customer_id

--those whoes product_id data char is 8 char and and last 2 digit is 4 and 0-3

select product_id, product_category, sales_amount from product_data
where product_id ~* '^pcdt[0-9]{2}[4][0-3]$';

/*find the customer data of customer_id sales amount is befor point 2 digit and the 
1char is between 5 to 9 and after point the 1st char is 0 total 5 char in sales_amount */

select customer_id,sales_amount::varchar from sales_data 
where sales_amount::varchar ~ '^[5-9][0-9]{2}.[0-5][0-9]$' ;


/* find the purchase amount in product data the totl char in purchase amount is 4 but befor pont value is between 2 and 4 and 
after point 1 st cahr is 3,4,7 and 2nd char is 0 ,9,1*/

select product_id, product_category,purchase_amount:: varchar from product_data
where purchase_amount:: varchar ~ '^[2-6]{2}.(3|4|7)(0|9|1)$';

/* in prouct data of region 1st char id a to z , 2nd char is e and 3& 4 char is a-z*/

select product_id,product_category,sales_amount,region from product_data 
where region ~* '^[a-z][e][a-z]{2}$';


/* in prouct data of region 1st char id a to z , 2nd char is e and 3& 4 char is a-z
and
the sales amount is first two char is between 5 to 9 and 3rd char is 3 to 9 after point the 2 char is 0 to 9*/

select product_id,product_category,sales_amount,region from product_data 
where region ~* '^[a-z][e][a-z]{2}$' and
sales_amount:: varchar ~ '^[5-9]{2}[3-9].[0-9]{2}$'


select customer_id, customer_segment,purchase_amount::varchar from customer_data where customer_segment ~* '^[a-z][o]' 
and 
purchase_amount:: varchar ~ '^[0-8][2-9]{2}.[0-9]{2}$'
order by customer_segment,purchase_amount


select customer_id,shipping_mode,delivery_time from customer_data 
where shipping_mode ~* '^[p-z]' 
and delivery_time::varchar ~* '^[0-3].[0-4][5-9]$'
order by delivery_time




































































