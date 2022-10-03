{{ config(materialized='view', view_security='invoker') }}
with source_data as (
    select gas, gwp_ar5, units
    from osc_datacommons_dev.essd.gwp_100yr_source
)
select * from source_data


