SELECT
  doctor_id,
  doctor_name,
  specialization,
  department_id,
  experience_years
FROM {{ source('raw', 'doctors') }}
