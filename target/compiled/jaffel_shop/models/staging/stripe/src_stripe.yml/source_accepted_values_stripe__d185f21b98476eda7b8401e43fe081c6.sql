
    
    

with all_values as (

    select
         as value_field,
        count(*) as n_records

    from "dev"."stripe"."paymentmethod"
    group by 

)

select *
from all_values
where value_field not in (
    'coupon','credit_card','bank_transfer','gift_card'
)


