{{ config(materialized='table') }}

with source_data as (
    select gas, gwp_ar5, units
    from osc_datacommons_dev.mdt_sandbox.essd_gwp_100yr
)

select * from source_data

