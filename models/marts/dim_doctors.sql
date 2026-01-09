SELECT
    doc.doctor_id,
    doc.doctor_name,
    doc.specialization,
    doc.experience_years,
    doc.department_id,
    dept.department_name,
    dept.hospital_branch
FROM {{ ref('stg_doctors') }} doc
LEFT JOIN {{ ref('stg_departments') }} dept
    ON doc.department_id = dept.department_id
