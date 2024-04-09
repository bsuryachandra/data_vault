WITH source_table AS (
    SELECT
        employee_number,
        last_name,
        first_name,
        extension,
        email,
        office_code,
        reports_to,
        job_title,
        _sync_date
    FROM {{ source('lnd_models', 'employees') }}
)

SELECT *
FROM source_table
