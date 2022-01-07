with payment as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,

        -- amount is stored in cents, convert it to dollars
        amount/100 as amount,
        status

    from {{ source('stripe', 'payment')}}

)
select * from payment