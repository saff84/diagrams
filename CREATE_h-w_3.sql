create table if not exists genre (id_genre SERIAL primary KEY, name_genre VARCHAR(80) not NULL);

create table if not exists author (id_author SERIAL primary KEY, name_author VARCHAR(80) not NULL);

create table if not exists music_genre (id_music_genre SERIAL primary KEY, id_genre int references genre(id_genre), id_author int references author(id_author));

create table if not exists album (id_album SERIAL primary KEY, name_album VARCHAR(80) not null, id_author int references author(id_author), year int not NULL);

create table if not exists albums (id_albums SERIAL primary KEY, id_album int references album(id_album), id_author int references author(id_author));

create table if not exists track (id_track SERIAL primary KEY, name_track VARCHAR(80) not null, id_album int references album(id_album), duration int not NULL);

create table if not exists playlist (id_playlist SERIAL primary KEY, name_playlist VARCHAR(80) not null, year_playlist int not null);

create table if not exists playlist_tracks (id_playlist_tracks SERIAL primary KEY, id_playlist int references playlist(id_playlist), id_track int references track(id_track));

ALTER TABLE album
DROP COLUMN id_author;