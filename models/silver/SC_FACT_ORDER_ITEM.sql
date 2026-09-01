with orders as 
(
    select * from {{ref('BR_ORDERS')}}
),
lineitem as
(
    select * from {{ref('BR_LINEITEM')}}
),
order_item as
(
    select 
        O.ORDER_KEY,
        O.ORDER_CUSTOMER_KEY,
        O.ORDER_STATUS,
        O.ORDER_PRIORITY,
        YEAR(O.ORDER_DATE) as ORDER_YEAR,
        MONTH(O.ORDER_DATE) as ORDER_MONTH,
        L.LINEITEM_LINE_NUMBER,
        L.LINEITEM_PART_KEY,
        L.LINEITEM_QUANTITY,
        L.LINEITEM_EXTENDED_PRICE,
        L.LINEITEM_DISCOUNT,
        0 as NET_REVENUE,
        L.LINEITEM_SHIP_DATE,
        L.LINEITEM_SHIP_MODE,
        L.LINEITEM_RETURN_FLAG,
        0 as days_late
    from orders O 
    left join lineitem L ON O.ORDER_KEY = L.LINEITEM_ORDER_KEY
)
select * from order_item
