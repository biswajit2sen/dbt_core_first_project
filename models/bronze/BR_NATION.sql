with source 
as
(
    select * from {{source('tpch','NATION')}}
),
renamed as
(
    select 
        N_COMMENT as NATION_COMMENT,
        N_NAME as NATION_NAME,
        N_NATIONKEY as NATION_KEY,
        N_REGIONKEY as REGION_KEY
    from source
)

select * from renamed