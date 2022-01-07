select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        paymentmethod as value_field,
        count(*) as n_records

    from "dev"."stripe"."payment"
    group by paymentmethod

)

select *
from all_values
where value_field not in (
    'coupon','credit_card','bank_transfer','gift_card'
)



      
    ) dbt_internal_test