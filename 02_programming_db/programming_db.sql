--Make a new database called "programming_db" and switch to it for this activity
CREATE DATABASE programming_db;

USE programming_db;
--Create a table called "programming_languages" which includes a primary key named "id" which will automatically increment with each new row created, a string column called "languages," and a numeric column called "rating."
CREATE TABLE programming_languages(
  id INT AUTO_INCREMENT NOT NULL,
  languages VARCHAR(100),
  rating INT,
  PRIMARY KEY (id)
);

--Insert some data into the table and then modify the data using the id column.
INSERT INTO programming_languages(languages, rating)
VALUES
('Java', 7),
('JavaScript', 9),
('Python', 9);

--add column to a table and then create a boolean column called "mastered" which has a default value of true.
ALTER TABLE programming_languages
ADD COLUMN mastered BOOLEAN DEFAULT true;
