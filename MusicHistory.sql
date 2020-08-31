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
*/

Select 