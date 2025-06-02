-- CREATE TABLE Customers (Customer_ID VARCHAR PRIMARY KEY,
-- Customer_Name VARCHAR);
-- CREATE TABLE orders(
--     Order_Id VARCHAR PRIMARY KEY,
--     Order_Date VARCHAR,
--     Ship_Date VARCHAR,
--     Ship_Mode VARCHAR,
--     Customer_Id VARCHAR REFERENCES customers(customer_id),
--     Segment VARCHAR,
--     Country VARCHAR,
--     City VARCHAR,
--     State VARCHAR,
--     Postal_Code VARCHAR,
--     Region VARCHAR
-- );
-- DROP TABLE orders;

-- CREATE TABLE Products (
--     Product_Id VARCHAR PRIMARY KEY,
--     Product_Name VARCHAR,
--     Category VARCHAR,
--     Sub_Category VARCHAR
-- );
CREATE TABLE Sales (
    Order_Id VARCHAR REFERENCES orders(Order_Id),
    Product_Id VARCHAR REFERENCES products(Product_Id),
    Sales NUMERIC,
    Quantity INTEGER,
    Discount NUMERIC,
    Profit NUMERIC
);

