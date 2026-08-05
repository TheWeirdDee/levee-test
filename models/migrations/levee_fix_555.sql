-- Levee Generated Safe dbt Model Migration for Column Rename
-- Exposes the new column name alongside the old one so downstream consumers
-- (dashboards, ML features) keep working until they migrate to new_col.

SELECT
    *,
    old_col AS new_col -- New name; old column 'old_col' stays available via *
FROM {{ ref('stg_test') }}
