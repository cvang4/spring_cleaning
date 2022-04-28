--Create a new database
CREATE DATABASE shirts_db;

--Create a new table
  (
      shirt_id INT NOT NULL AUTO_INCREMENT,
      article VARCHAR(30),
      color VARCHAR(30),
      shirt_size VARCHAR(30),
      last_worn INT,
      PRIMARY KEY(shirt_id)
    );

--Populate the table with the following data
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- Get all that data in there with a single line
SELECT * FROM shirts

-- Add a new shirt, purple polo shirt, size M last worn 50 days ago
INSERT INTO shirts (article, color, shirt_size, last_worn) VALUES
('polo shirt', 'purple', 'M', 50);

-- SELECT all shirts but only print out article and color
SELECT article, color FROM shirts

--SELECT all medium shirts and print out everything but shirt_id
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';

-- Update all polo shirts Change their size to L
UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

-- Update the shirt last worn 15 days ago change last_worn to zero ('0')
UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;

--Update all white shirts and change size to 'XS' and color to 'off white'
UPDATE shirts SET shirt_size = 'XS', color = 'off white' WHERE color = 'white';

--Delete all old shirts that were last worn 200 days ago
DELETE FROM shirts WHERE last_worn = 200;

-- Delete all tank tops. Your tastes have changed...
DELETE FROM shirts WHERE article = 'tank top';

--Delete all shirts. You are doing some major spring cleaning!
DELETE FROM shirts;

--Drop the entire shirts table. Scraping everything... you must be rich or something!
DROP TABLE shirts;


