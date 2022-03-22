with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `ip-trabajo-avalino.dbt_avalino.orders`

)

select * from orders