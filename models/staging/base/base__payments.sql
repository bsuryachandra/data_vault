WITH source_table AS (
    SELECT
        customer_number,
        check_number,
        payment_date,
        amount,
        _sync_date
    FROM {{ source('lnd_models', 'payments') }}
)

SELECT *
FROM source_table
