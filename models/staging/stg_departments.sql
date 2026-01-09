SELECT
  department_id,
  department_name,
  hospital_branch
FROM {{ source('raw', 'departments') }}
