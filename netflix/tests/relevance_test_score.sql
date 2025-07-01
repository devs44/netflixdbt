select  
    MOVIEID,
    TAGID,
    relevance_score
from
    {{ ref('fct_genome_scores')}}
where
    relevance_score <= 0 
