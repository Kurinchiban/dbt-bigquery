# dbt-bigquery

## Dbt Setup

### Install dbt for BigQuery

``` bash
pip install dbt-bigquery
```

### Initialize a dbt Project

``` bash
dbt init dbt_bq_project
```

### Configure BigQuery Profile

dbt uses a `profiles.yml` file to connect to BigQuery.\
**Location:** `~/.dbt/profiles.yml`

### Test Connection

``` bash
dbt debug
```