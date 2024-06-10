-- membuat database
CREATE DATABASE contoh_database;

-- Membuat Tabel nama
CREATE TABLE nama (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    parent_id INT
);

-- melakukan insert ke table nama
INSERT INTO nama (id, name, parent_id) VALUES
(1, 'Zaki', 2),
(2, 'Ilham', NULL),
(3, 'Irwan', 2),
(4, 'Arka', 3);


-- Query
SELECT 
    a.id, 
    a.name, 
    b.name AS parent_name
FROM 
    nama a
LEFT JOIN 
    nama b
ON 
    a.parent_id = b.id;
