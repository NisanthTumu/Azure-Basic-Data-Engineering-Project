CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.sales

CREATE EXTERNAL TABLE gold.extcal
WITH
(
    LOCATION = 'extcal',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.calendar

CREATE EXTERNAL TABLE gold.extcus
WITH
(
    LOCATION = 'extcus',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.customers

CREATE EXTERNAL TABLE gold.extprocat
WITH
(
    LOCATION = 'extprocat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.procat


CREATE EXTERNAL TABLE gold.extprodsubcat
WITH
(
    LOCATION = 'extprodsubcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.prodsubcat


CREATE EXTERNAL TABLE gold.extpro
WITH
(
    LOCATION = 'extpro',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.products


CREATE EXTERNAL TABLE gold.extret
WITH
(
    LOCATION = 'extret',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.returns


CREATE EXTERNAL TABLE gold.extter
WITH
(
    LOCATION = 'extter',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = parquet_format
)
AS
SELECT * FROM gold.territories



