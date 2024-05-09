{{
  config(materialized='view',
         view_security='invoker',
         meta = { 'owner': 'MichaelTiemannOSC' })
}}
with source_data as (
    select sector_code, fossil_bio, gas, gwp_ar5_feedbacks, gwp_ar5, description, subsector, chapter_title, subsector_title
    from osc_datacommons_dev.essd.ch4_gwp_source
)
select * from source_data
