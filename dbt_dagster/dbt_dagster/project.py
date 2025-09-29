from pathlib import Path

from dagster_dbt import DbtProject

dbt_bq_project_project = DbtProject(
    project_dir=Path(__file__).joinpath("..", "..", "..", "dbt_bq_project").resolve(),
    packaged_project_dir=Path(__file__).joinpath("..", "..", "dbt-project").resolve(),
    profiles_dir=Path.home().joinpath(".dbt").resolve()
)
dbt_bq_project_project.prepare_if_dev()