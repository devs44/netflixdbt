WITH raw_movies as(
    SELECT * FROM MOVIELENS.DEV.raw_movies
)

SELECT 
    movieID as movie_id,
    title,
    genre
FROM raw_movies