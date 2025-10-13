LOAD DATA INTO `stoked-brand-474706-u8.sales_dataset_bq_dbt.customers`
FROM FILES (
  format = 'CSV',
  uris = ['gs://dbt-bigquery-project-09/customers.csv'],
  skip_leading_rows = 1
);

LOAD DATA INTO `stoked-brand-474706-u8.sales_dataset_bq_dbt.products`
FROM FILES (
  format = 'CSV',
  uris = ['gs://dbt-bigquery-project-09/products.csv'],
  skip_leading_rows = 1
);


LOAD DATA INTO `stoked-brand-474706-u8.sales_dataset_bq_dbt.sales`
FROM FILES (
  format = 'CSV',
  uris = ['gs://dbt-bigquery-project-09/sales.csv'],
  skip_leading_rows = 1
);