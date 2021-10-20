-- Insertion of data into Database Tables

-- Insert for customer table
INSERT INTO customer(
    first_name,
    last_name,
    address
) VALUES(
    'Kevin',
    'Beier',
    '123 Mocking Bird Lane'
)
-- Insert statement for brand
INSERT INTO brand(
    brand_name,
    contact_number,
    address
)
VALUES(
    'Coding Temple llc',
    '773-555-4490',
    '222 W Ontario ST Chicago, IL'
)

-- Insert into cart
INSERT INTO cart(
    customer_id
)VALUES(1)



-- Insert statement for inventory
INSERT INTO inventory(

) VALUES (
	25,
);


-- Insert statement for c_order
INSERT INTO c_order(
    sub_total,
    total_cost,
    upc
) VALUES(
    20.99,
    25.95,
    1
)

-- Insert statement for product
INSERT INTO product(
    amount,
    prod_name,
    upc,
    seller_id
) VALUES(
    20.00,
    'Python 101',
    1,
    1
)

SELECT *
FROM product;
