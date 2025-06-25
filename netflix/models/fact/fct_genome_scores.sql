with src_genome_scores as (
    SELECT * from {{ ref('src_genome_score') }}
)

SELECT
    MOVIEID,
    TAGID,
    round(relevance,4) as relevance_score
from src_genome_scores