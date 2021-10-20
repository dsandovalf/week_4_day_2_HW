CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_num VARCHAR(50),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
    prod_name VARCHAR(50),
    amount NUMERIC(2,0),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE
)