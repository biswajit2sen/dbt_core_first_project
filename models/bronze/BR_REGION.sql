with source 
as
(
    select * from {{source('tpch','REGION')}}
),
renamed as
(
    select 
        R_COMMENT as REGION_COMMENT,
        R_NAME as REGION_NAME,
        R_REGIONKEY as REGION_KEY
    from source
)

select * from renamed