with raw_genome_scores as(
    select * from MOVIELENS.DEV.raw_genome_scores
)

SELECT  
    MOVIEID,
    TAGID,
    relevance
FROM raw_genome_scores

