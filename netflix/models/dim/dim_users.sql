with ratings as(
    select distinct USERID from {{ ref("src_ratings")}}
),
tags as(
    select distinct USERID from {{ ref("src_tags")}}
)

select distinct USERID
from (
    select * from ratings
    union
    select * from tags
)