with source 
as
(
    select * from {{source('tpch','CUSTOMER')}}
),
renamed as
(
    select 
        C_ACCTBAL as ACCOUNT_BALANCE,
        C_ADDRESS as CUSTOMER_ADDRESS,
        C_COMMENT as CUSTOMER_COMMENT,
        C_CUSTKEY as CUSTOMER_KEY,
        C_MKTSEGMENT as CUSTOMER_MARKET_SEGMENT,
        C_NAME as CUSTOMER_NAME,
        C_NATIONKEY as CUSTOMER_NATION_KEY,
        C_PHONE as CUSTOMER_PHONE,
    from source
)

select * from renamed