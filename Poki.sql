/* 1.

SELECT * FROM Grade

*/

/* 2.

SELECT * FROM Emotion

*/

/* 3.

SELECT COUNT(PokiNum) FROM Poem

*/

/* 4.

SELECT TOP 76 Name FROM Author

*/

/* 5.

SELECT TOP 76 a.Name, g.Name
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id

*/

/* 6.

SELECT TOP 76 a.Name, g.Name, gen.Name
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
LEFT JOIN Gender gen ON a.GenderId = gen.Id

*/

/* 7.

// Really get it

SELECT  
sum(LEN(CAST(Text As nvarchar(max))) - LEN(REPLACE(CAST(Text As nvarchar(max)), ' ', '')) + 1) AS 'TotalWordsInAllPoems'
FROM Poem

//OR
Assume the data has been entered correctly

SELECT SUM(WordCount) FROM Poem

*/

/* 8.

//Really get it


SELECT Title, Text, LEN(CAST(Text As nvarchar(max))) as 'CharacterCount'
FROM Poem
WHERE LEN(CAST(Text As nvarchar(max))) in (SELECT MIN(LEN(CAST(Text As nvarchar(max))))
FROM Poem)

//OR
Assume the data has been entered correctly

SELECT Title, Text, CharCount
FROM Poem
WHERE CharCount in (SELECT Min(CharCount)
FROM Poem) 

*/

/* 9.

SELECT COUNT(g.Name) as 'NumberOfThirdGraders'
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
WHERE g.Name LIKE '3rd Grade'
*/

/* 10.
SELECT COUNT (g.Name) AS FuturePoetLaureates, g.Name
FROM Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
GROUP BY g.Name
HAVING g.Name LIKE '3rd Grade' OR  g.Name LIKE '2nd Grade' OR g.Name LIKE '1st Grade'
*/

/* 11.

SELECT COUNT (p.Title) , g.Name
FROM Poem p
LEFT JOIN Author au ON p.AuthorId = au.Id
LEFT JOIN Grade g ON au.GradeId = g.Id
GROUP BY g.Name
HAVING g.Name LIKE '4th Grade'

*/

/* 12.

SELECT COUNT (p.Title) AS Poems , g.Name as Grade
FROM Poem p
LEFT JOIN Author au ON p.AuthorId = au.Id
LEFT JOIN Grade g ON au.GradeId = g.Id
GROUP BY g.Name
ORDER BY g.Name

*/

/* 13.

SELECT COUNT (DISTINCT(au.Name)) AS Authors , g.Name as Grade
FROM Poem p
LEFT JOIN Author au ON p.AuthorId = au.Id
LEFT JOIN Grade g ON au.GradeId = g.Id
GROUP BY g.Name
ORDER BY g.Name

*/

/* 14.

SELECT Title, TEXT, WordCount
FROM Poem
WHERE WordCount in (SELECT MAX(WordCount)
FROM Poem) 

*/

/* 15.

SELECT p.AuthorID, COUNT(AuthorId) as AuthoredPoems
FROM Poem p
LEFT JOIN Author au ON p.AuthorId = au.Id
GROUP BY p.AuthorId
ORDER BY COUNT(p.AuthorId) desc

*/

/* 16.

SELECT COUNT (e.Name) as PoemsOfSadness 
FROM PoemEmotion pe
LEFT JOIN Poem p on pe.PoemId = p.Id
LEFT JOIN Emotion e on pe.EmotionId = e.Id
WHERE e.Name LIKE 'Sadness'

*/

/* 17.a
//Either

SELECT COUNT(ISNULL(pe.PoemId, 0)) as BereftOfEmotion 
FROM Poem p
LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId
WHERE pe.PoemId IS NULL

//OR 17.b

SELECT COUNT(1) - COUNT(pe.PoemId) as BereftOfEmotion 
FROM Poem p
LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId

*/

/* 18.

SELECT COUNT(e.Name) as 'Count', e.Name 
FROM PoemEmotion pe
LEFT JOIN Poem p on pe.PoemId = p.Id
LEFT JOIN Emotion e on pe.EmotionId = e.Id
GROUP BY e.Name
ORDER BY COUNT(e.Name) asc

*/

/* 19.

SELECT COUNT(e.Name)as 'EmotionCount', e.name, g.Name 
FROM PoemEmotion pe
LEFT JOIN Poem p on pe.PoemId = p.Id
LEFT JOIN Emotion e on pe.EmotionId = e.Id
LEFT JOIN Author au on p.AuthorId = au.Id
LEFT JOIN Grade g on au.GradeId = g.Id
GROUP BY e.Name, g.Name
HAVING e.NAME LIKE 'JOY'
ORDER BY COUNT(e.Name) desc

*/

/* 20.a

This way gives only the lowest value, but I can't seem to get the name of the gender out of the inner window

SELECT MIN(EmotionCount.num) 
FROM (
SELECT COUNT(e.Name) as num
FROM PoemEmotion pe
LEFT JOIN Poem p on pe.PoemId = p.Id
LEFT JOIN Emotion e on pe.EmotionId = e.Id
LEFT JOIN Author au on p.AuthorId = au.Id
LEFT JOIN Gender g on au.GenderId = g.Id
GROUP BY e.Name, g.Name
HAVING e.NAME LIKE 'Fear') EmotionCount

//
This way just puts them in order
// 20.b

SELECT COUNT(e.Name) as FearLevel, g.Name
FROM PoemEmotion pe
LEFT JOIN Poem p on pe.PoemId = p.Id
LEFT JOIN Emotion e on pe.EmotionId = e.Id
LEFT JOIN Author au on p.AuthorId = au.Id
LEFT JOIN Gender g on au.GenderId = g.Id
GROUP BY e.Name, g.Name
HAVING e.NAME LIKE 'Fear'
ORDER BY COUNT(e.Name) asc

*/
