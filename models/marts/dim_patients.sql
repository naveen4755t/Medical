SELECT
    patient_id,
    patient_name,
    gender,
    age,
    city,
    insurance_type
FROM {{ ref('stg_patients') }}
