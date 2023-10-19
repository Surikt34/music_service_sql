CREATE TABLE IF  NOT EXISTS artists(
    id_artist SERIAL PRIMARY KEY,
    name_artist VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres(
    id_genre SERIAL PRIMARY KEY,
    name_genre VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE artist_genres(
    id_artist INTEGER REFERENCES artists(id_artist),
    id_genre INTEGER REFERENCES genres(id_genre),
    PRIMARY KEY (id_artist, id_genre)
);

CREATE TABLE IF NOT EXISTS albums(
    id_album SERIAL PRIMARY KEY,
    name_album VARCHAR(255) NOT NULL,
    release_year INT
);

CREATE TABLE IF NOT EXISTS tracks(
    id_track SERIAL PRIMARY KEY,
    name_track VARCHAR(255),
    duration INTERVAL,
    id_album INTEGER REFERENCES albums(id_album)
);

CREATE TABLE IF NOT EXISTS collections(
    id_collection SERIAL PRIMARY KEY,
    name_collection VARCHAR(255) NOT NULL,
    release_year INT
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