{{ config(materialized='table') }}
with source_data as (
    select gas, gwp_ar5, units
    from osc_datacommons_dev.essd.gwp_100yr
)
select * from source_data


