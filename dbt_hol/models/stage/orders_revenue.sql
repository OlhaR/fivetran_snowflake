select
    order_id
    , sum(payment_value) as order_value
FROM {{source('stg','OLIST_ORDER_PAYMENTS_DATASET')}}
group by 1