SELECT
  visit_id,
  patient_id,
  doctor_id,
  department_id,
  treatment_id,
  visit_date,
  bill_amount,
  payment_type,
  visit_status
FROM {{ source('raw', 'visits') }}
