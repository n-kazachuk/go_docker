CREATE TABLE IF NOT EXISTS search_ticket_queue (
    id            SERIAL PRIMARY KEY,
    from_city     VARCHAR(255) NOT NULL,
    to_city       VARCHAR(255) NOT NULL,
    date          DATE         NOT NULL,
    from_time     TIME         NOT NULL,
    to_time       TIME         NOT NULL,
    is_picked     BOOLEAN DEFAULT FALSE,
    searched_time TIMESTAMP    NULL,
    UNIQUE (from_city, to_city, date)
);