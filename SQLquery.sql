--Thực hiện truy vấn với hql
-- Số sản phẩm và số tiền bán được của từng nhân viên
select employee_key, de.first_name, de.last_name, count(quantity), sum(soldAmount)
from fact_order fo join dim_employees de on fo.employee_key =de.id
group by employee_key, de.first_name, de.last_name;

-- Số lượng bán được của từng sản phẩm
select dp.product_name, count(fo.quantity)
from fact_order fo join dim_products dp on fo.Product_key = dp.id
group by dp.product_name;

-- Khách hàng mua nhiều sản phẩm nhất
select customer_key, de.first_name, de.last_name, count(quantity)
from fact_order to join dim_customers de on fo.customer_key =de.id
group by customer_key, de.first_name, de.last_name;