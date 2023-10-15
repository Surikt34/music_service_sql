CREATE TABLE IF  NOT EXISTS artists(
    id_artist SERIAL PRIMARY KEY,
    name_artist VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres(
    id_genre SERIAL PRIMARY KEY,
    name_genre VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE artist_genres(
    id_artist INTEGER REFERENCES artists(id_artist),
    id_genre INTEGER REFERENCES genres(id_genre),
    PRIMARY KEY (id_artist, id_genre)
);

CREATE TABLE IF NOT EXISTS albums(
    id_album SERIAL PRIMARY KEY,
    name_album VARCHAR(20) NOT NULL,
    release_year INT
);

CREATE TABLE IF NOT EXISTS tracks(
    id_track SERIAL PRIMARY KEY,
    name_track VARCHAR(20),
    duration INTERVAL,
    id_album INTEGER REFERENCES albums(id_album)
);

CREATE TABLE IF NOT EXISTS collections(
    id_collection SERIAL PRIMARY KEY,
    name_collection VARCHAR(20),
    release_year YEAR
);

CREATE TABLE IF NOT EXISTS tracks_collection(
    id_track INTEGER REFERENCES tracks(id_track),
    id_collection INTEGER REFERENCES collections(id_collection),
    PRIMARY KEY (id_track, id_collection)
);

CREATE TABLE IF NOT EXISTS artist_albums(
    id_artist INTEGER REFERENCES artists(id_artist),
    id_album INTEGER REFERENCES albums(id_album),
    PRIMARY KEY (id_artist, id_album)
);


INSERT INTO artists(id_artist, name_artist)
VALUES (1, 'The Beatles'),
       (2, 'Rolling Stones'),
       (3, 'Led Zeppelin'),
       (4, 'Pink Floyd');

INSERT INTO genres(id_album, name_genre)   
VALUES (1, 'Rock'),
       (2, 'Rock and roll'),
       (3, 'Hard rock'),
       (4, 'Psychedelic space-rock');

INSERT INTO albums(id_album, name_album, release_year)
VALUES (1, 'The Beatles', 1968),
       (2, 'Goats Head Soup', 1973),
       (3, 'Houses of the Holy', 1973),
       (4, 'The Dark Side of the Moon', 1973);

INSERT INTO tracks(id_track, name_track, duration, id_album)  
VALUES (1, 'Back in the U.S.S.R.', '0:02:43', 1),
       (2, 'Dear Prudence', '0:03:56', 1),
       (3, 'Angie', '0:04:33', 2),
       (4, 'Doo Doo Doo Doo Doo', '0:03:26', 2),
       (5, 'Dancing Days', '0:03:43', 3),
       (6, 'Dyer Maker', '0:04:23', 3),
       (7, 'Speak to Me', '0:01:13', 4),
       (8, 'Breathe', '0:02:43', 4);    

INSERT INTO collections (id_collection, name_collection, release_year)
VALUES ('Greatest Hits I', 1981),
       ('Greatest Hits II', 1991),
       ('Classic Rock Anthems', 2017),
       ('80s Rock Anthems', 2016),
       ('70s Rock Anthems', 2015);

SELECT MAX(duration) FROM tracks;  
