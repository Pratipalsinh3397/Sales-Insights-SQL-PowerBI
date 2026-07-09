-- Analysis on Sales Data using SQL

-- Q1. Show all customer records
select * from customers;

-- Q2. Show total number of customers
select count(*) total_customers from customers;

-- Q3. Show transactions for Chennai market (market code for chennai is Mark001)
select * from markets;

select * from transactions where market_code='Mark001';

-- Q4. Show distinct product codes that were sold in chennai
select distinct(product_code) from transactions where market_code='Mark001';

-- Q5. Show transactions where currency is US dollars
select * from transactions where currency="USD";

-- Q6. Show transactions in 2020 join by date table 
select t.*,d.year from transactions t 
join date d 
on t.order_date=d.date
where d.year=2020;

-- Q7. Show total revenue in year 2020,
select sum(t.sales_amount) total_revenue from transactions t 
join date d 
on t.order_date=d.date
where d.year=2020;

-- Q8. Show total revenue in year 2020, January Month,\
select sum(t.sales_amount) total_revenue from transactions t 
join date d 
on t.order_date=d.date
where d.year=2020 and d.month_name="January";

-- Q9. Show total revenue in year 2020 in Chennai
select sum(t.sales_amount) total_revenue from transactions t 
join date d 
on t.order_date=d.date
where d.year=2020 and t.market_code="Mark001";