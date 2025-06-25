{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

with src_ratings as (
    select * from {{ ref("src_ratings")}}
)

select 
    USERID,
    MOVIEID,
    RATING,
    TIMESTAMP
from src_ratings
where RATING is not null

{% if is_incremental() %}
    and TIMESTAMP >(select max(TIMESTAMP) from {{ this }})
{% endif %}