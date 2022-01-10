{%- set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] -%}

with 
payment as (
    select
        order_id,
        {%- for payment_method in payment_methods %}
        sum(CASE when payment_method = '{{ payment_method }}' then amount else 0 end) as {{payment_method}}_amount
        {%- if not loop.last -%}
            ,
        {%- endif -%}
        {% endfor %}
    from {{ ref('stg_payments') }}
    group by 1
)

select * from payment