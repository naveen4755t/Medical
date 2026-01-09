SELECT
    v.visit_id,
    v.visit_date,
    v.patient_id,
    v.doctor_id,
    v.department_id,
    v.treatment_id,
    p.gender,
    p.age,
    p.city,
    p.insurance_type,
    d.specialization,
    d.experience_years,
    dept.department_name,
    dept.hospital_branch,
    t.category AS treatment_category,
    t.cost AS treatment_cost,
    v.bill_amount,
    (v.bill_amount - t.cost) AS hospital_margin,
    v.payment_type,
    v.visit_status

FROM {{ ref('stg_visits') }} v
LEFT JOIN {{ ref('dim_patients') }} p
    ON v.patient_id = p.patient_id
LEFT JOIN {{ ref('dim_doctors') }} d
    ON v.doctor_id = d.doctor_id
LEFT JOIN {{ ref('dim_departments') }} dept
    ON v.department_id = dept.department_id
LEFT JOIN {{ ref('dim_treatments') }} t
    ON v.treatment_id = t.treatment_id
