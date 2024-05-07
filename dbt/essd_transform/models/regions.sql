{{
  config(materialized='view',
         view_security='invoker',
         meta = { 'owner': 'MichaelTiemannOSC' })
}}
with source_data as (
    select iso, name, region_ar6_6, region_ar6_10, region_ar6_22, region_ar6_dev
    from osc_datacommons_dev.essd.regions_source
)
select * from source_data
