WITH src_movies as (
    select * from {{ ref('src_movies') }}
)

select
    movie_id,
    initcap(trim(title)) as movie_title,
    split(genre,'|') as genre_array,
    genre
from src_movies

