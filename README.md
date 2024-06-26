
> [!IMPORTANT]
> On June 26 2024, Linux Foundation announced the merger of its financial services umbrella, the Fintech Open Source Foundation ([FINOS](https://finos.org)), with OS-Climate, an open source community dedicated to building data technologies, modeling, and analytic tools that will drive global capital flows into climate change mitigation and resilience; OS-Climate projects are in the process of transitioning to the [FINOS governance framework](https://community.finos.org/docs/governance); read more on [finos.org/press/finos-join-forces-os-open-source-climate-sustainability-esg](https://finos.org/press/finos-join-forces-os-open-source-climate-sustainability-esg)

# ESSD Ingestion Pipeline

[Earth System Science Data](https://www.earth-system-science-data.net/) (ESSD) is an international, interdisciplinary journal for the publication of articles on original research data (sets), furthering the reuse of high-quality data of benefit to Earth system sciences. Its open data licensing and high-quality data sources and editorial review processes make it an excellent source of data for the [Data Commons](https://github.com/os-climate/os_c_data_commons) in general, and for region-based GHG timeseries data in particular.

This data pipeline was initially forked from the AI CoE [project template](https://github.com/aicoe-aiops/project-template), which is geared toward AI/ML data extraction. The ESSD data is already highly curated, and so we don't really use much of that structure here. However, by having a common build and run environment, the pipeline is friendly to our CI/CD systems, GitHub, and help connect all the pipelines to the Data Commons in a consistent fashion.

The principal ingestion code can be found in the [notebooks](notebooks) directory. At present there are two steps in the pipeline:

1. Extract (which copies data into a Pachyderm repository to support data reproducibility)
2. Load (which loads data into Trino, builds the DBT transformas, and initializes metadata for Open Metadata).

A third pipeline step may be to elaborate and curate the metadata to better support an ever-expanding Data Catalog.

The data transformation step runs from the [dbt/essd_transform](dbt/essd_transform) directory and is/will be documented there.

Metadata for the tables we have ingested can be viewed from our [OpenMetadata portal](https://openmetadata-openmetadata.apps.odh-cl2.apps.os-climate.org/explore/tables/?searchFilter=databaseschema%3Dessd) (GitHub User ID and ODH User access tokens required).

If you have questions, please file [Issues](https://github.com/os-climate/essd-ingest-pipeline/issues). If you have answers, please contribute [Pull Requests](https://github.com/os-climate/essd-ingest-pipeline/pulls)!

---

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
