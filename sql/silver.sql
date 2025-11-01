IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver');
END;
GO

CREATE TABLE silver.customer (
    cst_id INT,
    cst_key NVARCHAR(255),
    cst_firstname NVARCHAR(255),
    cst_lastname NVARCHAR(255),
    cst_marital_status NVARCHAR(1),
    bdate DATE,
    gen NVARCHAR(1),
    cntry NVARCHAR(255)
);
GO

CREATE TABLE silver.sales (
    sls_ord_num NVARCHAR(255),
    sls_prd_key NVARCHAR(255),
    sls_cust_id INT,
    sls_order_dt DATE,
    sls_ship_dt DATE,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);
GO

CREATE TABLE silver.product (
    prd_id INT,
    prd_key NVARCHAR(255),
    prd_nm NVARCHAR(255),
    prd_cost INT,
    prd_line NVARCHAR(1),
    cat NVARCHAR(255),
    maintenance BIT
);
GO
