{{ config(materialized='table')}}

with fct_ratings as (
    select * from {{ ref('fct_ratings')}}
),
seed_dates as (
    select * from {{ ref('seed_movie_release_dates')}}
)

select 
    f.*,
    case
        when d.release_date is null then 'unknown'
        else 'known'
    end as release_info_available
from fct_ratings f
left join seed_dates d 
on f.movieid=d.movie_id