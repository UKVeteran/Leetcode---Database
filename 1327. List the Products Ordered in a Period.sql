# Write your MySQL query statement below
select product_name as PRODUCT_NAME, sum(unit) as UNIT
from products
join orders on products.product_id=orders.product_id
where order_date > '2020-01-31' and order_date<'2020-03-01'
group by product_name
having sum(unit) >99
