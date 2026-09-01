with source 
as
(
    select * from {{source('tpch','PART')}}
),
renamed as
(
    select 
        P_BRAND as PART_BRAND,
        P_COMMENT as PART_COMMENT,
        P_CONTAINER as PART_CONTAINER,
        P_NAME as PART_NAME,
        P_PARTKEY as PART_KEY,
        P_RETAILPRICE as PART_RETAIL_PRICE,
        P_SIZE as PART_SIZE,
        P_TYPE as PART_TYPE
    from source
)

select * from renamed