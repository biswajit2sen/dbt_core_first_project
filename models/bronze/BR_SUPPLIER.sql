with source 
as
(
    select * from {{source('tpch','SUPPLIER')}}
),
renamed as
(
    select 
        S_ACCTBAL as SUPPLIER_ACCOUNT_BALANCE,
        S_ADDRESS as SUPPLIER_ADDRESS,
        S_COMMENT as SUPPLIER_COMMENT,
        S_NAME as SUPPLIER_NAME,
        S_NATIONKEY as SUPPLIER_NATION_KEY,
        S_PHONE as SUPPLIER_PHONE,
        S_SUPPKEY as SUPPLIER_KEY
    from source
)

select * from renamed