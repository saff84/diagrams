--количество исполнителей в каждом жанре;
select id_genre, count(id_author) s_author FROM music_genre
group by id_genre 
order by s_author DESC;

--количество треков, вошедших в альбомы 2019-2020 годов;
select id_playlist_tracks, COUNT(id_track) num_tracks from playlist_tracks pt 
left join playlist p on pt.id_playlist  = p.id_playlist 
where p.year_playlist >= 2019 and p.year_playlist <= 2020
group by id_playlist_tracks;

--средняя продолжительность треков по каждому альбому;
select a.id_album, AVG(duration) sr_duration from track t
join album a on t.id_album = a.id_album
group by a.id_album
order by a.id_album ; 

--все исполнители, которые не выпустили альбомы в 2020 году;
select name_author from author a
where a.name_author not in (select name_author n from author a
join albums alb on a.id_author = alb.id_author 
join album alb2 on alb.id_album = alb2.id_album
where alb2.year = 2020)
order by name_author;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct p.name_playlist from playlist p 
join playlist_tracks pt on p.id_playlist = pt.id_playlist
join track tr on pt.id_track = tr.id_track
join album alb on tr.id_album = alb.id_album
join albums albs on alb.id_album = albs.id_album
join author ath on albs.id_author = ath.id_author
where ath.name_author like '%%Cашка%%'
order by p.name_playlist ;

--название альбомов, в которых присутствуют исполнители более 1 жанра
select name_album from album a 
join albums a2 on a.id_album = a2.id_album 
join author a3  on a2.id_author = a3.id_author 
join music_genre mg on a3.id_author = mg.id_author 
join genre g on mg.id_genre = g.id_genre 
group by a.name_album 
having count(distinct g.name_genre) > 1
order by a.name_album; 

--наименование треков, которые не входят в сборники
select id_track, name_track from track t 
where t.id_track not in (select id_track from playlist_tracks pt)
order by t.id_track ; 

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
select a.name_author, t.duration  from author a 
join albums a2 on a.id_author = a2.id_author 
join album a3 on a2.id_album = a3.id_album 
join track t on a3.id_album = t.id_album 
group by a.name_author, t.duration  
having  t.duration = (select min(duration) from track)
order by a.name_author; 

--название альбомов, содержащих наименьшее количество треков


select distinct a.name_album from album as a
left join track t on t.id_album = a.id_album 
where t.id_album in (select id_album  from track
				    group by id_album
				    having count(id_album) = (select count(id_album) from track
										        group by id_album
										        order by count
										        limit 1
										    )
					)
order by a.name_album

