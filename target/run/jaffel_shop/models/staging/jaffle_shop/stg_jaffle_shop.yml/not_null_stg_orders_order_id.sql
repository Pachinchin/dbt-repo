select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from "dev"."dbt_nobodozie"."stg_orders"
where order_id is null



      
    ) dbt_internal_test