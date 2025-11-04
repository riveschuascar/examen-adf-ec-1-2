// dim categoria
SELECT DISTINCT cat FROM silver.product

// dim fecha
SELECT DISTINCT sls_order_dt AS dates
FROM silver.sales

SELECT DISTINCT sls_ship_dt AS dates
FROM silver.sales

// dim genero
SELECT DISTINCT gen FROM silver.customer

// dim pais
SELECT DISTINCT cntry FROM silver.customer

// hechos ventas
SELECT
id_date AS id_ship_dt,
dates
FROM gold.dim_dates

SELECT
id_date AS id_order_dt,
dates
FROM gold.dim_dates
