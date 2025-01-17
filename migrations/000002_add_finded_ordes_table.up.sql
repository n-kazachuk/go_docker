CREATE TABLE IF NOT EXISTS ticket
(
    from_city VARCHAR(255) NOT NULL,
    to_city   VARCHAR(255) NOT NULL,
    date      DATE         NOT NULL,
    from_time TIME         NOT NULL,
    to_time   TIME         NOT NULL,
    price     FLOAT   DEFAULT NULL,
    is_free   BOOLEAN DEFAULT NULL,
    UNIQUE (from_city, to_city, date, from_time, to_time)
);