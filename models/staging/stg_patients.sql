SELECT
  patient_id,
  patient_name,
  gender,
  age,
  city,
  insurance_type
FROM {{ source('raw', 'patients') }}
