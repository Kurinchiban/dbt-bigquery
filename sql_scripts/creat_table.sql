create table sales_dataset_dbt.customers
(
  customer_id int64,
  first_name string,
  last_name string,
  email string,
  signup_date date
)
partition by signup_date
cluster by last_name;


create table sales_dataset_dbt.products
(
  product_id int64,
  product_name string,
  category string,
  price int64
)
cluster by category;


create table sales_dataset_dbt.sales
(
  sale_id int64,
  customer_id int64,
  product_id int64,
  quantity int64,
  sale_date date
)
partition by sale_date
cluster by customer_id, product_id;

