create table if not exists music_genre (
	genre_id SERIAL primary key,
	genre_name VARCHAR(40) not null
);

create table if not exists musician (
	musician_id SERIAL primary key,
	the_name(nickname)_of_the musician VARCHAR(216) not NULL
);

create table if not exists musician_album (
	album_id SERIAL primary key,
	album_name VARCHAR(100) not null,
	year_of_release integer 
);

create table if not exists music track (
	track_id SERIAL primary key,
	track_name VARCHAR(40) not null,
	duration interval,
	album_name INTEGER references music_album (album_id)
);

create table if not exists collection
	collection_id SERIAL primary key,
	collection_name VARCHAR(40) not null,
	year_of_release INTEGER
);
	
create table if not exists genre_musician (
	genre INTEGER references music_genre(genre_id),
	musician INTEGER references musician(musician_id)
	constraint pk primary key (genre_id, musician_id
);

create table if not exists musician_album_musician (
	album INTEGER references music_album(album_id),
	musician INTEGER references musician(musician_id)
	constraint pk primary key (album_id, musician_id)
);

create table if not exists collection_track (
	collection INTEGER references collection(collection_id),
	track INTEGER references music_track(track_id),
	constraint pk primary key (collection_id, track_id)
);
	