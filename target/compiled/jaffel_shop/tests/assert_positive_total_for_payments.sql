select
    order_id,
    sum(amount) as total_amount
from "dev"."dbt_nobodozie"."stg_payments"
group by 1
having not(total_amount >= 0)