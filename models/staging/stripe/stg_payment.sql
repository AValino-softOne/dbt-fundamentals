with payment as(
    select orderid as order_id,
    amount/100 as amount, --pasar de centimos a dolares
    status as status,
     from `ip-trabajo-avalino.dbt_avalino.payment`
     where status='success'
)

select * from  payment
