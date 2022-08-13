{{ config(materialized='table') }}

with source_data as (
    select ISO, country, region_ar6_6, region_ar6_10, region_ar6_22, region_ar6_dev, sector_title, subsector_title, CO2, CO2_units, CH4, CH4_units, N2O, N2O_units, Fgas, Fgas_units, GHG, GHG_units, year
    from osc_datacommons_dev.mdt_sandbox.essd_gwp100_data
)

select * from source_data

