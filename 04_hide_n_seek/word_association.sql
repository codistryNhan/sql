d--Create a query that collects all of the rows whose "source" is "AC"
SELECT * FROM wordassociation.wordassociation WHERE source = 'AC';

--Create a query that collects all of the rows whose "source" is "BC"
SELECT * FROM wordassociation.wordassociation WHERE source = 'BC';

--Create a query that collects all of the rows whose "source" is "CC"
SELECT * FROM wordassociation.wordassociation WHERE source = 'CC';

--Create a query that collects all of the rows whose author is within the range of 0-20
SELECT * FROM wordassociation.wordassociation WHERE author <= 20;

--Create a query that searches for any rows that have "pie" in their "word1" or "word2" columns
SELECT * FROM wordassociation.wordassociation WHERE word1 = 'pie' OR word2 = 'pie';

--Find the lowest "ID" for those rows with a "source" of "CC"
SELECT MIN(id) FROM wordassociation.wordassociation WHERE source = 'CC';

--Count how many rows have an "author" of 12
SELECT COUNT(*) FROM wordassociation.wordassociation where author = 12;
