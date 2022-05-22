CREATE DATABASE music_by;

\c music_by

CREATE TABLE music(
    id SERIAL PRIMARY KEY,
    user_id TEXT, 
    name TEXT,
    sound_name TEXT,
    imge_url TEXT,
    url TEXT
    );

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);


CREATE TABLE suggested_music(
   id SERIAL PRIMARY KEY,
    name TEXT,
    sound_name TEXT,
    img_url TEXT,
    url TEXT
    );
    
INSERT INTO suggested_music(name, sound_name, img_url, url)
VALUES 
    ('Stromae', 'Defiler', 'https://media.pitchfork.com/photos/5ae77932d19d0b5d1a9eb135/1:1/w_600,h_600,c_limit/Stromae%20%E2%80%93%20De%CC%81filer%20cover.jpg', 'https://www.youtube.com/watch?v=CGJAkyTgwi8&ab_channel=StromaeVEVO'),
    ('BIA', 'LONDON', 'https://images.genius.com/430e26eefdd65dbe3d2f3b27914696f8.1000x1000x1.png', 'https://www.youtube.com/watch?v=gZFmMoeU5m0&ab_channel=BIAVEVO'),
    ('Foushee', 'Deep End', 'https://images.genius.com/807d1745190072b79f85fcdbe0a51d34.1000x1000x1.jpg', 'https://www.youtube.com/watch?v=yEgilud6tRU&ab_channel=Foushe%C3%A9'),
    ('Rina Sawayama', 'Bad Friend', 'https://upload.wikimedia.org/wikipedia/en/8/83/Sawayama_by_Rina_Sawayama_album_cover_%28digital%29.png', 'https://www.youtube.com/watch?v=OLXtc2OSrLQ&ab_channel=RinaSawayamaVEVO');

ALTER TABLE music ADD COLUMN img_url TEXT;
ALTER TABLE suggested_music ADD COLUMN img_url TEXT;



