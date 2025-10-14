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
### Run dbt Project

``` bash
dbt run
```

### To Run dbt in different environments:

``` bash
dbt run --target prod
```

### Test dbt Project

``` bash
dbt test
```

## Orchestration


### Initialize a Dagster

``` bash
pip install dagster-dbt dagster-webserver
```

### Create Dagster Folder

``` bash
cd dbt_bq_project
dagster-dbt project scaffold --project-name dagster_dbt_pipeline
```

### Run Dagster in Local

``` bash
cd dagster_dbt_pipeline
dagster dev
```

### Reference:
- https://vabnix.medium.com/orchestrating-dbt-with-dagster-a-powerful-duo-for-data-pipelines-4ee033eaaf19