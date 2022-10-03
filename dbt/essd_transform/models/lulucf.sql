{{ config(materialized='view', view_security='invoker') }}
with source_data as (
    select year, region_ar6_6, region_ar6_10, blue, blue_units, houghton, houghton_units, oscar, oscar_units, mean, mean_units
    from osc_datacommons_dev.essd.lulucf_source
)
select * from source_data


