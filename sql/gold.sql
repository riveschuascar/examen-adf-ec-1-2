IF NOT EXISTS (SELECT * FROM sys.schemas WHERE NAME = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold');
END;
GO

CREATE TABLE gold.dim_country (
    id_cntry INT PRIMARY KEY IDENTITY(1,1),
    cntry NVARCHAR(255)
);
GO

CREATE TABLE gold.dim_gender (
    id_gen INT PRIMARY KEY IDENTITY(1,1),
    gen NVARCHAR(1)
);
GO

CREATE TABLE gold.dim_customer (
    cst_id INT PRIMARY KEY,
    cst_firstname NVARCHAR(255),
    cst_lastname NVARCHAR(255),
    cst_marital_status NVARCHAR(1),
    bdate DATE,
    id_cntry INT,
    id_gen INT
);
GO

CREATE TABLE gold.dim_category (
    id_cat INT PRIMARY KEY IDENTITY(1,1),
    cat NVARCHAR(255)
);
GO

CREATE TABLE gold.dim_product (
    prd_key VARCHAR(255) PRIMARY KEY,
    prd_nm NVARCHAR(255),
    prd_cost INT,
    prd_line NVARCHAR(1),
    id_cat INT,
    maintenance BIT
);
GO

CREATE TABLE gold.dim_dates (
    id_date INT PRIMARY KEY IDENTITY(1,1),
    dates DATE
);
GO

CREATE TABLE gold.facts_sales (
    id_fact INT PRIMARY KEY IDENTITY(1,1),
    sls_ord_num VARCHAR(255),
    sls_prd_key VARCHAR(255),
    sls_cust_id INT,
    id_order_dt INT,
    id_ship_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);
GO

ALTER TABLE gold.dim_product
ADD CONSTRAINT fk_dim_product_category
FOREIGN KEY (id_cat) REFERENCES gold.dim_category (id_cat);
GO

ALTER TABLE gold.dim_customer
ADD CONSTRAINT fk_dim_customer_gender
FOREIGN KEY (id_gen) REFERENCES gold.dim_gender (id_gen);
GO

ALTER TABLE gold.dim_customer
ADD CONSTRAINT fk_dim_customer_country
FOREIGN KEY (id_cntry) REFERENCES gold.dim_country (id_cntry);
GO

ALTER TABLE gold.facts_sales
ADD CONSTRAINT fk_facts_sales_order_date
FOREIGN KEY (id_order_dt) REFERENCES gold.dim_dates (id_date);
GO

ALTER TABLE gold.facts_sales
ADD CONSTRAINT fk_facts_sales_ship_date
FOREIGN KEY (id_ship_dt) REFERENCES gold.dim_dates (id_date);
GO

ALTER TABLE gold.facts_sales
ADD CONSTRAINT fk_facts_sales_product
FOREIGN KEY (sls_prd_key) REFERENCES gold.dim_product (prd_key);
GO

ALTER TABLE gold.facts_sales
ADD CONSTRAINT fk_facts_sales_customer
FOREIGN KEY (sls_cust_id) REFERENCES gold.dim_customer (cst_id);
GO
