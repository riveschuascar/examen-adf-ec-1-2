IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
END;
GO

CREATE TABLE bronze.customer (
    cst_id NVARCHAR(255),
    cst_key NVARCHAR(255),
    cst_firstname NVARCHAR(255),
    cst_lastname NVARCHAR(255),
    cst_marital_status NVARCHAR(255),
    cst_gndr NVARCHAR(255)
);
GO

CREATE TABLE bronze.customer_bdate_gen (
    cid NVARCHAR(255),
    bdate NVARCHAR(255),
    gen NVARCHAR(255)
);
GO

CREATE TABLE bronze.customer_location (
    cid NVARCHAR(255),
    cntry NVARCHAR(255)
);
GO

CREATE TABLE bronze.sales (
    sls_ord_num NVARCHAR(255),
    sls_prd_key NVARCHAR(255),
    sls_cust_id NVARCHAR(255),
    sls_order_dt NVARCHAR(255),
    sls_ship_dt NVARCHAR(255),
    sls_sales NVARCHAR(255),
    sls_quantity NVARCHAR(255),
    sls_price NVARCHAR(255)
);
GO

CREATE TABLE bronze.product (
    prd_id NVARCHAR(255),
    prd_key NVARCHAR(255),
    prd_nm NVARCHAR(255),
    prd_cost NVARCHAR(255),
    prd_line NVARCHAR(255)
);
GO

CREATE TABLE bronze.product_cat_mant (
    id NVARCHAR(255),
    cat NVARCHAR(255),
    subcat NVARCHAR(255),
    maintenance NVARCHAR(255)
);
GO
