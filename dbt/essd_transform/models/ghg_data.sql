{{ config(materialized='view', view_security='invoker') }}
with source_data as (
    select ISO, country, region_ar6_6, region_ar6_10, region_ar6_22, region_ar6_dev, sector_title, subsector_title, gas, gwp100_ar5, value, value_units, year
    from osc_datacommons_dev.essd.ghg_data_source
)
select * from source_data


