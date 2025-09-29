SELECT *
FROM {{ source('employee_dataset', 'customers') }}