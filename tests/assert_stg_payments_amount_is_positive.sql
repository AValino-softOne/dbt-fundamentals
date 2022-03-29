with
payments as (
    select * from {{ ref('stg_payment') }} --Aqui se referencia el modelo donde queremos hacer el test
)
--Aqui se mete la query donde se se ejecuta el test. Si devuelve algún valor entendemos 
--que  el test es negativo
select
    order_id,
    sum(amount) as total_amount
from payments
group by order_id
having total_amount<0