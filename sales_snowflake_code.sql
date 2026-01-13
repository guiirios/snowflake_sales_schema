#SNOWFLAKE Schema

CREATE TABLE dim_location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(30) NOT NULL,
    state_name VARCHAR(30) NOT NULL,
    city_name VARCHAR(30) NOT NULL
);

CREATE TABLE dim_customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(30) NOT NULL,
    customer_cpf CHAR(11) not NULL,
    birth_date DATE,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);

CREATE TABLE dim_vendor (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_name VARCHAR(30) NOT NULL,
    vendor_cpf CHAR(11) not NULL,
    birth_date DATE,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);

CREATE TABLE dim_date (
    date_id INT AUTO_INCREMENT PRIMARY KEY,
    sales_date DATE
    
);

CREATE TABLE dim_category (
    category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(30)

);

CREATE TABLE dim_product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES dim_category(category_id)

);


CREATE TABLE fact_sales (
	sales_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    vendor_id INT,
    product_id INT,
    date_id INT,
    quantity INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (vendor_id) REFERENCES dim_vendor(vendor_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
  

);
