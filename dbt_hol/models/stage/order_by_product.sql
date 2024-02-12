select
    order_id
    , order_item_id
    , product_id
    , price
FROM {{source('stg','OLIST_ORDER_ITEMS_DATASET')}}
group by 1,2,3,4