{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshots',
        unique_key=['USERID','MOVIEID','tag'],
        strategy = 'timestamp',
        updated_at = 'timestamp',
        invalidate_hard_delete=True
    )
}}

SELECT 
    {{ dbt_utils.generate_surrogate_key(['USERID','MOVIEID','tag']) }} as row_key,
    USERID,
    MOVIEID,
    tag,
    CAST(timestamp AS TIMESTAMP_NTZ) AS timestamp
FROM {{ ref('src_tags')}}
limit 100

{% endsnapshot %}