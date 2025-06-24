with raw_ratings as ( 
    select * from MOVIELENS.DEV.raw_ratings
)

SELECT 
    USERID,
    MOVIEID,
    RATING,
    TIMESTAMP
FROM raw_ratings