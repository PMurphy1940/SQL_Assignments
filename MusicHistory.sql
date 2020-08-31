/* 1.
SELECT * FROM Genre
*/

/* 2.
Select * FROM Artist
ORDER BY ArtistName desc

*/

/* 3.
SELECT s.Title,
		a.ArtistName
	From Song s
	LEFT JOIN Artist a on s.ArtistId = a.id;
	*/

/* 4.
SELECT a.ArtistName,
		alb.Title,
		Genre.Label
		
	FROM Album alb
	LEFT JOIN Artist a on alb.ArtistId = a.Id 
	LEFT JOIN Genre on alb.GenreId = Genre.Id
	WHERE Genre.Label LIKE 'Pop';
	*/

/* 5. 
SELECT DISTINCT (a.ArtistName)		
	FROM Album alb
	LEFT JOIN Artist a on alb.ArtistId = a.Id 
	LEFT JOIN Genre on alb.GenreId = Genre.Id
	WHERE Genre.Label LIKE 'Jazz' OR Genre.Label LIKE 'Rock';
	*/

/* 6.

SELECT a.Title
FROM Album a
Left Join Song s on a.Id = s.AlbumId
WHERE s.Title IS NULL;
*/

/* 7. 

INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Rage Against The Machine', 1991)


SELECT * from Artist

*/

/* 8. 

INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('Evil Empire', '04/16/1996', 2794, 'Epic', 28, 2);

SELECT * FROM Album
*/

/* 9. 
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
VALUES ('People Of The Sun', 150, '04/16/1996', 2, 28, 23)
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
VALUES ('Bulls On Parade', 229, '04/16/1996', 2, 28, 23);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
VALUES ('Vietnow', 279, '04/16/1996', 2, 28, 23);
*/

/* 10.

Select s.Title, al.Title, ar.ArtistName
From Album al
LEFT JOIN Song s ON al.Id = s.AlbumId
LEFT JOIN Artist ar on al.ArtistId = ar.Id
WHERE al.Title LIKE 'Evil Empire'

*/

/* 11.

Select al.Title, COUNT(s.Title) AS NumberOfSongs
From Song s
LEFT JOIN Album al ON al.Id = s.AlbumId
LEFT JOIN Artist ar on al.ArtistId = ar.Id 
GROUP BY al.Title

*/

/* 12.

Select ar.ArtistName, COUNT(s.Title) AS NumberOfSongs
From Song s
LEFT JOIN Artist ar ON ar.Id = s.ArtistId
GROUP BY ar.ArtistName

*/

/* 13.

Select g.Label, COUNT(s.Title) AS NumberOfSongs
From Song s
LEFT JOIN Genre g ON g.Id = s.GenreId
GROUP BY g.Label

*/

/* 14.

SELECT COUNT (DISTINCT (al.Label)) AS Labels, ar.ArtistName
FROM Album al
LEFT JOIN Artist ar on al.ArtistId = ar.Id
GROUP BY ar.ArtistName
HAVING COUNT (DISTINCT (al.Label)) > 1

*/

/* 15.

SELECT Title, AlbumLength as Duration 
FROM Album
WHERE AlbumLength in (SELECT MAX(AlbumLength)
FROM Album)

*/

/* 16

SELECT Title as SongTitle, SongLength as Duration 
FROM Song
WHERE SongLength in (SELECT MAX(SongLength)
FROM Song)

*/

/* .17

SELECT Album.Title as AlbumTitle, Song.Title as SongTitle, SongLength as Duration 
FROM Song
LEFT JOIN Album ON Song.AlbumId = Album.Id
WHERE SongLength in (SELECT MAX(SongLength)
FROM Song)

*/




