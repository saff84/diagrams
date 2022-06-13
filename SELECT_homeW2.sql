select id_genre, count(id_author) s_author FROM music_genre
group by id_genre 
order by s_author DESC;

select id_playlist_tracks, COUNT(id_track) num_tracks from playlist_tracks pt 
left join playlist p on pt.id_playlist  = p.id_playlist 
where p.year_playlist >= 2019 and p.year_playlist <= 2020
group by id_playlist_tracks;

select a.id_album, AVG(duration) sr_duration from track t
join album a on t.id_album = a.id_album
group by a.id_album
order by a.id_album ; 




