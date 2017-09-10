DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS viewer;


-- I decided to create 2 separate tables because each table represents different data.

CREATE TABLE movies
(
  movie_id int PRIMARY KEY,
  title varchar(30) NOT NULL UNIQUE
);
INSERT INTO movies (movie_id, title) VALUES ( 1, 'Spider-Man');
INSERT INTO movies (movie_id, title) VALUES ( 2, 'Wind River');
INSERT INTO movies (movie_id, title) VALUES ( 3, 'Dunkirk');
INSERT INTO movies (movie_id, title) VALUES ( 4, 'The Dark Tower');
INSERT INTO movies (movie_id, title) VALUES ( 5, 'Tulip Fever');
INSERT INTO movies (movie_id, title) VALUES ( 6, 'Atomic Blonde');



CREATE TABLE viewer
(
  viewer_id int PRIMARY KEY,
  viewer_name varchar (15),
  movie_id int NULL REFERENCES movies(movie_id),
  rating int
);
INSERT INTO viewer (viewer_id, viewer_name, movie_id, rating) VALUES ( 1,'James', 6, 5);
INSERT INTO viewer (viewer_id, viewer_name, movie_id, rating) VALUES ( 2,'Sofia', 4, 2);
INSERT INTO viewer (viewer_id, viewer_name, movie_id, rating) VALUES ( 3,'John', 5, 3);
INSERT INTO viewer (viewer_id, viewer_name, movie_id, rating) VALUES ( 4,'Roland', 2, 4);
INSERT INTO viewer (viewer_id, viewer_name, movie_id, rating) VALUES ( 5,'Barbara', 3, 4);
INSERT INTO viewer (viewer_id, viewer_name, movie_id, rating) VALUES ( 6,'Sam', 1, 5);

SELECT movies.movie_id, movies.title, viewer.rating, viewer.viewer_name
FROM movies
LEFT JOIN viewer ON movies.movie_id = viewer.movie_id

ORDER BY movies.movie_id

-- After I join 2 tables, I saved the results as "moviereviews" table. 

