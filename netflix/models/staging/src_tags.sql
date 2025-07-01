{{ config (materialized='table')}}

with raw_tags as(
    select * from MOVIELENS.DEV.raw_tags
)

SELECT 
    USERID,
    MOVIEID,
    tag,
    TIMESTAMP
FROM raw_tags