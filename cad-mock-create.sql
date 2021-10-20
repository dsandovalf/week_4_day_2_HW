-- DDL Clauses: Data Definition Language
-- SQL CREATE STATEMENTS
-- name data_type column-constraint (if available)

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
);

-- Brand Table Creation
CREATE TABLE brand(
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);

CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE --optional but recommended if you don't do this you get orphans which is no beuno
);

CREATE TABLE c_order(
    order_id SERIAL PRIMARY KEY,
    order_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    sub_total NUMERIC(8,2),
    total_cost NUMERIC(10,2),
    upc INTEGER NOT NULL,
    FOREIGN KEY (upc) REFERENCES inventory(upc) ON DELETE CASCADE
)

CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER,
	order_id INTEGER NOT NULL,
	FOREIGN KEY(order_id) REFERENCES c_order(order_id) ON DELETE CASCADE 
);

CREATE TABLE product(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100),
	upc INTEGER NOT NULL,
	seller_id INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES inventory(upc) ON DELETE CASCADE,
	FOREIGN KEY(seller_id) REFERENCES brand(seller_id) ON DELETE CASCADE 
);

