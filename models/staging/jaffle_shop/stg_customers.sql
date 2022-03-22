with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from `ip-trabajo-avalino.dbt_avalino.customers`

)

select * from customers
