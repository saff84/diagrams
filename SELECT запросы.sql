SELECT name_playlist, year_playlist FROM playlist  
WHERE year_playlist = 2018;


select name_track, duration
FROM track
WHERE duration = (select MAX(duration) from track);

select name_track
FROM track
WHERE duration > 3.5;

select name_playlist
FROM playlist
WHERE year_playlist  between 2018 and 2020;

select name_author
from author
where not name_author like '%% %%'

select name_track
FROM track
where name_track  like '%мой%' or name_track  like '%my%';
