SELECT
    t.treatment_id,
    t.treatment_name,
    t.category,
    t.cost,
    t.department_id,
    dept.department_name
FROM {{ ref('stg_treatments') }} t
LEFT JOIN {{ ref('stg_departments') }} dept
    ON t.department_id = dept.department_id
