INSERT INTO genre(name_genre)
VALUES ('pop');
INSERT INTO genre(name_genre)
VALUES ('rap');
INSERT INTO genre(name_genre)
VALUES ('hip-hop');
INSERT INTO genre(name_genre)
VALUES ('classic');
INSERT INTO genre(name_genre)
VALUES ('drumm');

INSERT INTO author(name_author)
VALUES ('Cашка');
INSERT INTO author(name_author)
VALUES ('Вася');
INSERT INTO author(name_author)
VALUES ('Андрей');
INSERT INTO author(name_author)
VALUES ('Серега');
INSERT INTO author(name_author)
VALUES ('Иван');
INSERT INTO author(name_author)
VALUES ('Влад');
INSERT INTO author(name_author)
VALUES ('Вова');
INSERT INTO author(name_author)
VALUES ('Петя');

INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Cашка', 1, 2018);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Вася', 2, 2019);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Андрей', 3, 2020);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Серега', 4, 2021);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Иван', 5, 2017);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Влад', 6, 2018);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Вова', 7, 2019);
INSERT INTO album(name_album, id_author, year)
VALUES ('Альбом_Петя', 8, 2020);

INSERT INTO track(name_track, id_album, duration)
VALUES ('For Those About To Rock (We Salute You)', 1, 2.5);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Balls to the Wall', 6, 2);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Fast As a Shark', 3, 1.5);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Restless and Wild', 5, 4);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Princess of the Dawn', 2, 3);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Put The Finger On You', 1, 5);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Let`s Get It Up', 2, 3);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Inject The Venom', 2, 4);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Snowballed', 7, 3);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Evil Walks', 8, 5);
INSERT INTO track(name_track, id_album, duration)
VALUES ('C.O.D.', 4, 3);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Breaking The Rules', 4, 6);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Night Of The Long Knives', 8, 2);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Spellbound', 3, 4.5);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Go Down', 6, 3.5);
INSERT INTO track(name_track, id_album, duration)
VALUES ('Dog Eat Dog', 7, 3.5);

UPDATE track 
SET name_track = 'my' 
WHERE id_track = 1;


INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('первый', 2018);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('второй', 20121);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('третий', 2019);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('четвертый', 2018);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('пятый', 2020);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('шестой', 2019);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('седьмой', 2017);
INSERT INTO playlist(name_playlist, year_playlist)
VALUES ('восьмой', 2020);

UPDATE playlist  
SET year_playlist = 2021 
WHERE id_playlist = 2;

INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (1, 15);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (2, 1);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (2, 4);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (1, 10);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (2, 7);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (3, 12);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (1, 14);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (3, 14);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (2, 3);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (1, 5);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (1, 8);
INSERT INTO playlist_tracks (id_playlist , id_track)
VALUES (1, 9);


INSERT INTO music_genre  (id_genre , id_author)
VALUES (1, 2);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (1, 3);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (1, 4);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (1, 5);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (2, 2);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (2, 4);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (2, 5);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (2, 8);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (1, 7);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (3, 2);
INSERT INTO music_genre  (id_genre , id_author)
VALUES (3, 2);

INSERT INTO albums  (id_album , id_author)
VALUES (1, 2);
INSERT INTO albums  (id_album , id_author)
VALUES (1, 3);
INSERT INTO albums  (id_album , id_author)
VALUES (1, 4);
INSERT INTO albums  (id_album , id_author)
VALUES (1, 5);
INSERT INTO albums  (id_album , id_author)
VALUES (2, 2);
INSERT INTO albums  (id_album , id_author)
VALUES (2, 3);
INSERT INTO albums  (id_album , id_author)
VALUES (2, 8);
INSERT INTO albums  (id_album , id_author)
VALUES (1, 7);
INSERT INTO albums  (id_album , id_author)
VALUES (3, 6);
INSERT INTO albums  (id_album , id_author)
VALUES (4, 5);
INSERT INTO albums  (id_album , id_author)
VALUES (4, 1);





