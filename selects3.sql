
select a.name, count(g.name) c from album a
join album_executor ae on ae.albumid = a.albumid
join executor e on e.executorid = ae.executorid
join genre_executor ge on ge.executorid = e.executorid 
join genre g on g.genreid = ge.genreid
group by a.name
having count(g.name) > 1; 


select t.name ,count(c.collectionid) from track t
left join collection_track ct on ct.trackid = t.trackid
left join collection c on c.collectionid = ct.collectionid
group by t.name
having count(c.collectionid) = 0;


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
