with raw_links as(
    select * from MOVIELENS.DEV.raw_links
)

SELECT  
    MOVIEID as movie_id,
    IMDBID,
    TMDBID
FROM raw_links

