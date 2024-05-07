{{
  config(materialized='view',
         view_security='invoker',
         meta = { 'owner': 'MichaelTiemannOSC' })
}}
with source_data as (
    select iso, country, region_ar6_6, region_ar6_10, region_ar6_22, region_ar6_dev, sector_title, subsector_title, gas, gwp100_ar5, value, value_units, year
    from osc_datacommons_dev.essd.ghg_data_source
)
select * from source_data
