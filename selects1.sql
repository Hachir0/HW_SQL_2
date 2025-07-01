SELECT name, duration from Track t
order by duration desc 
limit 1;

select name, duration from Track t
where duration > '00:03:29';

select name, release_year from Collection
where release_year between 2018 and 2020;

select name from Executor
where name not like '% %';

select name from Track t
WHERE name ~* '\y(my|мой)\y';
