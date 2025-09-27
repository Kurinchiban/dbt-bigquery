LOAD DATA INTO `sales_dataset_dbt.customers`
FROM FILES (
  format = 'CSV',
  uris = ['gs://dbt-bigquery-project/customers.csv'],
  skip_leading_rows = 1
);

LOAD DATA INTO `sales_dataset_dbt.products`
FROM FILES (
  format = 'CSV',
  uris = ['gs://dbt-bigquery-project/products.csv'],
  skip_leading_rows = 1
);


LOAD DATA INTO `sales_dataset_dbt.sales`
FROM FILES (
  format = 'CSV',
  uris = ['gs://dbt-bigquery-project/sales.csv'],
  skip_leading_rows = 1
);