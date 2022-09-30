{{ config(materialized='table') }}

with source_data as (
    select EDGAR_code, fossil_bio, sector_title, description, subsector_title, IPCC_2006
    from osc_datacommons_dev.essd.sectors
)

select * from source_data

