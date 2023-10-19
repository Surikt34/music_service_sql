INSERT INTO artists(name_artist)
VALUES ('The Beatles'),
       ('Rolling Stones'),
       ('Led Zeppelin'),
       ('Pink Floyd'),
       ('Rammstein');

INSERT INTO genres(name_genre)   
VALUES ('Rock'),
       ('Rock and roll'),
       ('Hard rock'),
       ('Psychedelic space-rock');

INSERT INTO albums(name_album, release_year)
VALUES ('The Beatles', 1968),
       ('Goats Head Soup', 1973),
       ('Houses of the Holy', 1973),
       ('The Dark Side of the Moon', 1973);

INSERT INTO tracks(name_track, duration, id_album)  
VALUES ('Back in the U.S.S.R.', '0:02:43', 1),
       ('Dear Prudence', '0:03:56', 1),
       ('Angie', '0:04:33', 2),
       ('Doo Doo Doo Doo Doo', '0:03:26', 2),
       ('Dancing Days', '0:03:43', 3),
       ('Dyer Maker', '0:04:23', 3),
       ('Speak to Me', '0:01:13', 4),
       ('Breathe', '0:02:43', 4);   
      

INSERT INTO collections(name_collection, release_year)
VALUES ('Greatest Hits I', 1981),
       ('Greatest Hits II', 1991),
       ('Classic Rock Anthems', 2017),
       ('80s Rock Anthems', 2016),
       ('70s Rock Anthems', 2015);
      
INSERT INTO artist_genres(id_artist, id_genre)
VALUES (1, 1),  -- The Beatles - Rock
       (2, 2),  -- Rolling Stones - Rock and roll
       (3, 3),  -- Led Zeppelin - Hard rock
       (4, 4);  -- Pink Floyd - Psychedelic space-rock     
       
INSERT INTO artist_albums(id_artist, id_album)
VALUES (1, 1), -- The Beatles - 'The Beatles', 1968
	   (2, 2), -- Rolling Stones - Goats Head Soup, 1973
	   (3, 3), -- Led Zeppelin - Houses of the Holy
	   (4, 4), -- Pink Floyd - The Dark Side of the Moon
	   (5, 5); -- Rammstein - Zeit

INSERT INTO artists(name_artist)
VALUES ('Rammstein');       
INSERT INTO albums(name_album, release_year)
VALUES ('Zeit', 2022);
INSERT INTO tracks(name_track, duration, id_album)
VALUES ('Schwarz', '0:04:19', 5);
INSERT INTO collections(name_collection, release_year)
VALUES ('The Beatles Box Set', 1988);

INSERT INTO tracks_collection(id_track, id_collection)
VALUES (1, 1), 
       (2, 2), 
       (3, 3),  
       (4, 4);  