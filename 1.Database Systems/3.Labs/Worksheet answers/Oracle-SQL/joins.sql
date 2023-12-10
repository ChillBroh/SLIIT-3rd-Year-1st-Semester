CREATE TABLE palette_a (
    id INT PRIMARY KEY,
    color VARCHAR2 (100) NOT NULL
);

CREATE TABLE palette_b (
    id INT PRIMARY KEY,
    color VARCHAR2 (100) NOT NULL
);

INSERT INTO palette_a (id, color)
VALUES (1, 'Red');

INSERT INTO palette_a (id, color)
VALUES (2, 'Green');

INSERT INTO palette_a (id, color)
VALUES (3, 'Blue');

INSERT INTO palette_a (id, color)
VALUES (4, 'Purple');

-- insert data for the palette_b
INSERT INTO palette_b (id, color)
VALUES (1, 'Green');

INSERT INTO palette_b (id, color)
VALUES (2, 'Red');

INSERT INTO palette_b (id, color)
VALUES (3, 'Cyan');

INSERT INTO palette_b (id, color)
VALUES (4, 'Brown');

-- INNER JOIN
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
INNER JOIN palette_b b ON a.color = b.color;

-- LEFT JOIN
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
LEFT JOIN palette_b b ON a.color = b.color;

-- LEFT JOIN: with exclusion of rows from right
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
LEFT JOIN palette_b b ON a.color = b.color WHERE b.id IS NULL;

-- RIGHT JOIN
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
RIGHT JOIN palette_b b ON a.color = b.color;

-- RIGHT JOIN: only rows from right table
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
RIGHT JOIN palette_b b ON a.color = b.color WHERE a.id IS NULL;

-- FULL JOIN
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
FULL OUTER JOIN palette_b b ON a.color = b.color;

-- FULL JOIN: unique rows
SELECT a.id id_a, a.color color_a, b.id id_b, b.color color_b
FROM palette_a a
FULL JOIN palette_b b ON a.color = b.color WHERE a.id IS NULL OR b.id IS NULL;