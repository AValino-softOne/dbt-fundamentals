with payment as(
    select orderid as order_id,
    amount/100 as amount, --pasar de centimos a dolares
    status as status,
     from {{ source('stripe', 'payment') }}
     where status='success'
)

select * from  payment
