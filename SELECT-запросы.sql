--Название и продолжительность самого длительного трека.
SELECT name_track, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name_track, duration FROM tracks
WHERE duration >= interval '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name_collection, release_year FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name_artist FROM artists
WHERE name_artist NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name_track FROM tracks
WHERE name_track LIKE '%my%';

--Количество исполнителей в каждом жанре
SELECT g.name_genre, COUNT(ag.id_artist) as artist_count FROM genres g
JOIN artist_genres ag ON g.id_genre = ag.id_genre
GROUP BY g.name_genre
ORDER BY artist_count DESC;

--Количество треков, вошедших в альбомы 2019–2022 годов.
SELECT a.name_album, COUNT(t.id_track) AS track_count FROM albums a
JOIN tracks t ON a.id_album = t.id_album
WHERE a.release_year BETWEEN 2019 AND 2022
GROUP BY a.name_album
ORDER BY track_count DESC;

--Средняя продолжительность треков по каждому альбому.
SELECT a.name_album, AVG(t.duration) AS average_duration FROM tracks t
JOIN albums a ON t.id_album = a.id_album
GROUP BY a.id_album, a.name_album;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.name_artist FROM artists a
WHERE NOT EXISTS (SELECT 1 FROM artist_albums aa
JOIN albums al ON aa.id_album = al.id_album
WHERE aa.id_artist = a.id_artist AND al.release_year = 2020
);
SELECT * FROM tracks ;
SELECT * FROM artists;
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
--не работает, не могу разобраться...
SELECT DISTINCT col.name_collection FROM collections col
JOIN tracks_collection tc ON col.id_collection = tc.id_collection
JOIN tracks at ON at.id_track = tc.id_track
JOIN artists art ON art.id_artist = at.id_artist
WHERE art.name_artist = 'The Beatles';