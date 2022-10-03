{{ config(materialized='view', view_security='invoker') }}
with source_data as (
    select ISO, name, region_ar6_6, region_ar6_10, region_ar6_22, region_ar6_dev
    from osc_datacommons_dev.essd.regions_source
)
select * from source_data


