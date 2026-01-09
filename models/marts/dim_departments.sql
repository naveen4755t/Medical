SELECT
    d.department_id,
    d.department_name,
    d.hospital_branch,
    COUNT(DISTINCT doc.doctor_id) AS total_doctors
FROM {{ ref('stg_departments') }} d
LEFT JOIN {{ ref('stg_doctors') }} doc
    ON d.department_id = doc.department_id
GROUP BY
    d.department_id,
    d.department_name,
    d.hospital_branch
