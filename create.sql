 create table if not exists Genre (
	genreID serial primary key,
	name varchar (40) not null 
);

create table if not exists Executor (
	executorID serial primary key,
	name varchar (40) not null
);

create table if not exists Album (
	albumID serial primary key,
	name varchar (50) not null,
	year_release integer not null
);


create table if not exists Genre_Executor (
	genreID integer references Genre(genreID),
	executorID integer references Executor(executorID),
	primary key (genreID, executorID)
);

create table if not exists Album_Executor (
  albumID integer references Album(albumID),
  executorID integer references Executor(executorID),
  primary key (albumID, ExecutorID)
);

create table if not exists Track (
	trackID serial primary key,
	name varchar (40) not null,
	duration T (40) not null,
	albumID integer references Album(albumID)
);

create table if not exists Collection (
	collectionID serial primary key,
	name varchar (60) not null,
	release_year integer not null
	
);

create table if not exists Collection_Track (
	collectionID integer references Collection(collectionID),
	trackID integer references Track(trackID),
	primary key (collectionID, trackID)
);	

