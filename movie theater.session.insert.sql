INSERT INTO customer(
    first_name,
    last_name
) VALUES(
    'David',
    'Sandoval'
);

INSERT INTO ticket(
    ticket_num,
    customer_id
) VALUES(
    '1',
    1
);

INSERT INTO concession(
    prod_name,
    amount,
    customer_id
) VALUES(
    'popcorn',
    1,
    1
);

INSERT INTO movie(
    movie_name,
    ticket_id
) VALUES(
    'Casino Royale',
    1
)
