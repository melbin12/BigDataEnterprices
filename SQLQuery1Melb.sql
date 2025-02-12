create database studentSystem;
use studentSystem;
CREATE TABLE student1
(
    id INT,
    fname VARCHAR(20),
    lname VARCHAR(20),
    adds VARCHAR(20),
    country VARCHAR(20),
    cgpa DECIMAL(5,2)
);
INSERT INTO student1 (id, fname, lname, adds, country, cgpa)
VALUES
(1, 'John', 'Doe', '123 Elm St', 'USA', 3.95),
(2, 'Jane', 'Smith', '456 Oak Ave', 'UK', 3.80),
(3, 'Mike', 'Johnson', '789 Pine Rd', 'Canada', 3.60),
(4, 'Emily', 'Davis', '101 Maple Blvd', 'Australia', 4.00);

SELECT * FROM student1;
select * from student1 where cgpa < 3.60;
SELECT * FROM student1 WHERE cgpa < 3.60;
SELECT * FROM student1 WHERE cgpa > 3.80;

CREATE DATABASE NobelPrizeDB;
USE NobelPrizeDB;  


CREATE TABLE NobelPrizeWinner (
    YEAR INT,
    SUBJECT VARCHAR(50),
    WINNER VARCHAR(100),
    COUNTRY VARCHAR(50),
    CATEGORY VARCHAR(50)
);

INSERT INTO NobelPrizeWinner (YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY)
VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist'),
(2006, 'Economics', 'Muhammad Yonus', 'Bangladesh', 'Economist');


SELECT * FROM NobelPrizeWinner
WHERE YEAR = 1987;

SELECT * FROM NobelPrizeWinner
WHERE YEAR = 1970
AND SUBJECT NOT IN ('Physiology', 'Economics');


SELECT * FROM NobelPrizeWinner
WHERE (SUBJECT = 'Physiology' AND YEAR < 1971)
OR (SUBJECT = 'Peace' AND YEAR >= 1974);

SELECT * FROM NobelPrizeWinner
WHERE WINNER = 'Johannes Georg Bednorz';

SELECT * FROM NobelPrizeWinner
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY YEAR DESC, WINNER;

