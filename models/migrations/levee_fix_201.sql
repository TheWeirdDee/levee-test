-- Levee Generated Safe dbt Model Migration for Column Rename
-- Exposes the new column name alongside the old one so downstream consumers
-- (dashboards, ML features) keep working until they migrate to amount.

SELECT
    *,
    billing_amount AS amount -- New name; old column 'billing_amount' stays available via *
FROM {{ ref('raw_patients') }}
