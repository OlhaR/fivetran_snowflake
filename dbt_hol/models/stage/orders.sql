select
    order_id
    , customer_id
    , order_status
    , date(order_purchase_timestamp) as order_date
FROM {{source('stg','OLIST_ORDERS_DATASET')}}
group by 1,2,3,4