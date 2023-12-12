create database sale_of_pizza;
use sale_of_pizza;
select * from pizza_sales;

-- Total Revenue -- 
select sum(total_price) as price from pizza_sales;


select sum(total_price) / count(distinct order_id) from pizza_sales;

select sum(quantity) as Total_pizza_sold from pizza_sales;

WITH pizza_ranking AS (
  SELECT
    pizza_id,
    pizza_name,
    order_date,
    pizza_category,
    NTILE(100) OVER (ORDER BY pizza_category)  as varaities
  FROM pizza_sales
)
SELECT
 pizza_id,
pizza_name,
order_date,
pizza_category,
FROM pizza_ranking
WHERE varaities = 50
ORDER BY pizza_category;








/*
SELECT
  eid,
  l_name,
  f_name,
  salary,
  ROW_NUMBER() OVER (ORDER BY l_name) as ranking_position
FROM employees;



select count(distinct order_id) as Total_order_placed from pizza_sales;

-- Average pizza per order --
 select sum(quantity) / count(distinct order_id) as Average_pizza_per_order from pizza_sales;
 
 -- Daily trend for total ordres --
 
select date(dw , order date) , count(distinct order_id)