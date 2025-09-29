SELECT *
FROM {{ source('employee_dataset','sales') }}