CREATE MASTER KEY  ENCRYPTION By PASSWORD = 'Nissi@2009'

CREATE DATABASE SCOPED CREDENTIAL nis_creds
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awadls.dfs.core.windows.net/silver',
    CREDENTIAL = nis_creds
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awadls.dfs.core.windows.net/gold',
    CREDENTIAL = nis_creds
)


CREATE EXTERNAL FILE FORMAT parquet_format
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)