CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/calender/',
    FORMAT = 'PARQUET'
) AS query1


CREATE VIEW gold.customers
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/customers/',
    FORMAT = 'PARQUET'
) AS query2

CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/Territories/',
    FORMAT = 'PARQUET'
) AS query3

CREATE VIEW gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/Sales/',
    FORMAT = 'PARQUET'
) AS query4

CREATE VIEW gold.returns
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/Returns/',
    FORMAT = 'PARQUET'
) AS query5

CREATE VIEW gold.products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/Products/',
    FORMAT = 'PARQUET'
) AS query6


CREATE VIEW gold.prodsubcat
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/Product_SubCategories/',
    FORMAT = 'PARQUET'
) AS query7


CREATE VIEW gold.procat
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awadls.dfs.core.windows.net/silver/Product_Categories/',
    FORMAT = 'PARQUET'
) AS query8





