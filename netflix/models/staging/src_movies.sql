WITH raw_movies as(
    SELECT * FROM {{ sources ('netflix','r_movies') }}
)

SELECT 
    movieID as movie_id,
    title,
    genre
FROM raw_movies