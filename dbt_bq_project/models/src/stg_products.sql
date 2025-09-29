SELECT *
FROM {{ source('employee_dataset','products') }}