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

SELECT  
sum(LEN(CAST(Text As nvarchar(max))) - LEN(REPLACE(CAST(Text As nvarchar(max)), ' ', '')) + 1) AS 'TotalWordsInAllPoems'
FROM Poem

//OR

SELECT SUM(WordCount) FROM Poem

*/

/* 8.

SELECT Title, Text, LEN(CAST(Text As nvarchar(max))) as 'CharacterCount'
FROM Poem
WHERE LEN(CAST(Text As nvarchar(max))) in (SELECT MIN(LEN(CAST(Text As nvarchar(max))))
FROM Poem)

//OR

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