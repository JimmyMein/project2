CREATE DATABASE music_by;

\c music_by

CREATE TABLE music(
    id SERIAL PRIMARY KEY,
    user_id TEXT, 
    name TEXT,
    sound_name TEXT 
    );

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

INSERT INTO music(name, sound_name)
VALUES 
    ('Stromae', 'Defiler'),
    ('BIA', 'LONDON'),
    ('Foushee', 'Deep End'),
    ('Rina Sawayama', 'Bad Friend');

