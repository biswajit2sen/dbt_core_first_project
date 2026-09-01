with source 
as
(
    select * from {{source('tpch','PARTSUPP')}}
),
renamed as
(
    select 
        PS_AVAILQTY as PARTSUPP_AVAIL_QTY,
        PS_COMMENT as PARTSUPP_COMMENT,
        PS_PARTKEY as PARTSUPP_PART_KEY,
        PS_SUPPKEY as PARTSUPP_SUPPLIER_KEY,
        PS_SUPPLYCOST as PARTSUPP_SUPPLY_COST
    from source
)

select * from renamed