CREATE DATABASE music_by;

\c music_by

CREATE TABLE food(
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT
);

INSERT INTO food(name, image_url);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
);

ALTER TABLE users ADD COLUMN password_digest TEXT;