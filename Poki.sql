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
*/




