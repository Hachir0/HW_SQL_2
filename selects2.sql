SELECT g.name , COUNT(e.executorID) AS executors_count FROM Genre g
JOIN Genre_Executor ge ON g.genreID = ge.genreID
JOIN Executor e ON e.executorID = ge.executorID
GROUP BY g.name
ORDER BY executors_count DESC;

select count(*) from Track t 
join Album a on t.albumID = a.albumID
where year_release between 2019 and 2020;

SELECT a.name, AVG( EXTRACT(EPOCH FROM t.duration::interval))
FROM Track t
JOIN Album a ON t.albumID = a.albumID
GROUP BY a.name;

SELECT 
    e.name AS executor_name
FROM Executor e
WHERE e.executorID NOT IN (
    SELECT DISTINCT ae.executorID
    FROM Album_Executor ae
    JOIN Album a ON ae.albumID = a.albumID
    WHERE a.year_release = 2020
)
AND e.executorID IN (
    SELECT DISTINCT executorID
    FROM Album_Executor
);

select DISTINCT c.name from Collection c
join collection_track ct on c.collectionid = ct.collectionid
join track t on t.trackid = ct.trackid
join album a on a.albumid = t.albumid
join album_executor ae on ae.albumid = a.albumid
join executor e on e.executorid = ae.executorid
where e.name = 'Eminem';

SELECT 
    e.name AS executor_name,
    COUNT(DISTINCT a.albumID) AS album_count 
FROM Executor e
JOIN Album_Executor ae ON e.executorID = ae.executorID
JOIN Album a ON ae.albumID = a.albumID
WHERE a.year_release <> 2020 
GROUP BY e.name
ORDER BY album_count DESC;