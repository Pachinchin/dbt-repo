-- Use the `ref` function to select from other models

select *
from "dev"."dbt_nobodozie"."my_first_dbt_model"
where id = 1