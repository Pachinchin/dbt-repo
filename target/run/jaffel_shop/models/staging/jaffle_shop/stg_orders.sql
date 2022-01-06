

  create view "dev"."dbt_nobodozie"."stg_orders__dbt_tmp" as (
    with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from jaffle_shop.orders

)
select * from orders
  ) ;
