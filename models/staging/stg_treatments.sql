SELECT
  treatment_id,
  treatment_name,
  category,
  department_id,
  cost
FROM {{ source('raw', 'treatments') }}
