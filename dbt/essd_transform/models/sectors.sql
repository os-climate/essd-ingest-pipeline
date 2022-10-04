{{
  config(materialized='view',
         view_security='invoker',
         meta = { 'owner': 'MichaelTiemannOSC' })
}}
with source_data as (
    select edgar_code, fossil_bio, sector_title, description, subsector_title, ipcc_2006
    from osc_datacommons_dev.essd.sectors_source
)
select * from source_data

