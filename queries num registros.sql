// ver numero de registros silver
-- Número de registros en silver.customer
SELECT COUNT(*) AS num_registros
FROM [silver].[customer];

-- Número de registros en silver.sales
SELECT COUNT(*) AS num_registros
FROM [silver].[sales];

-- Número de registros en silver.product
SELECT COUNT(*) AS num_registros
FROM [silver].[product];

// ver numero de registros gold
-- Número de registros en dim_country
SELECT COUNT(*) AS num_registros
FROM [gold].[dim_country];

-- Número de registros en dim_gender
SELECT COUNT(*) AS num_registros
FROM [gold].[dim_gender];

-- Número de registros en dim_customer
SELECT COUNT(*) AS num_registros
FROM [gold].[dim_customer];

-- Número de registros en dim_category
SELECT COUNT(*) AS num_registros
FROM [gold].[dim_category];

-- Número de registros en dim_product
SELECT COUNT(*) AS num_registros
FROM [gold].[dim_product];

-- Número de registros en dim_dates
SELECT COUNT(*) AS num_registros
FROM [gold].[dim_dates];

-- Número de registros en facts_sales
SELECT COUNT(*) AS num_registros
FROM [gold].[facts_sales];
