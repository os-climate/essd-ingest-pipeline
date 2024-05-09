{{
  config(materialized='view',
         view_security='invoker',
         meta = { 'owner': 'MichaelTiemannOSC' })
}}
with source_data as (
    select iso, country, region_ar6_6, region_ar6_10, region_ar6_22, region_ar6_dev, sector_title, subsector_title, co2, co2_units, ch4, ch4_units, n2o, n2o_units, fgas, fgas_units, ghg, ghg_units, year
    from osc_datacommons_dev.essd.gwp100_data_source
)
select * from source_data
