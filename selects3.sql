with AEGCount as (
    select 
        a.albumID,
        a.name as album_name,
        e.executorID,
        e.name as executor_name,
        COUNT(g.genreID) as genre_count
    from Album a
    join Album_Executor ae on a.albumID = ae.albumID
    join Executor e on ae.executorID = e.executorID
    join Genre_Executor ge on e.executorID = ge.executorID
    join Genre g on ge.genreID = g.genreID
    group by a.albumID, a.name, e.executorID, e.name
)
select 
    album_name,
    executor_name,
    genre_count
from AEGCount
where genre_count > 1
order by album_name, executor_name;


select t.name from track t
left join collection_track ct on ct.trackid = t.trackid
where ct.trackid is null;


with ShortestTracks as (
    select  
        t.name AS track_name,
        t.duration,
        e.name AS executor_name
    from Track t
    join Album a ON t.albumID = a.albumID
    join Album_Executor ae ON a.albumID = ae.albumID
    join Executor e ON ae.executorID = e.executorID
    where t.duration = ( select MIN(duration) from Track)
)
select executor_name, track_name, duration from ShortestTracks;


with NewTable as (
	select a.name an, count(t.name) ct from track t
	join album a on a.albumid = t.albumid
	group by a.name
)
select an, ct from NewTable 
where ct = (select min(ct) from NewTable);
