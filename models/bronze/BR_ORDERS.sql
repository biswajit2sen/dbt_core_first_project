with source 
as
(
    select * from {{source('tpch','ORDERS')}}
),
renamed as
(
    select 
        O_CLERK as ORDER_CLERK,
        O_COMMENT as ORDER_COMMENT,
        O_CUSTKEY as ORDER_CUSTOMER_KEY,
        O_ORDERDATE as ORDER_DATE,
        O_ORDERKEY as ORDER_KEY,
        O_ORDERPRIORITY as ORDER_PRIORITY,
        O_ORDERSTATUS as ORDER_STATUS,
        O_SHIPPRIORITY as ORDER_SHIP_PRIORITY,
        O_TOTALPRICE as ORDER_TOTAL_PRICE
    from source
)

select * from renamed