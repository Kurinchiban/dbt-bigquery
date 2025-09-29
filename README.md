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
dagster-dbt project scaffold --project-name dbt_dagster --dbt-project-dir=dbt_bq_project
```

### Configure `profiles.yml`

``` python
profiles_dir=Path.home().joinpath(".dbt").resolve()
```
- Add the above code in dbt_dagster_project.py to allow Dagster to identify the profiles.yml file.

### Run Dagster

``` bash
dagster dev
```

### Reference:
- https://vabnix.medium.com/orchestrating-dbt-with-dagster-a-powerful-duo-for-data-pipelines-4ee033eaaf19