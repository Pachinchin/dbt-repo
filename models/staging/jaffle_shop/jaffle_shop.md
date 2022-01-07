{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}


{% docs primarykey_customer %}
Primary key for customers.
{% enddocs %}

{% docs primarykey_orders %}
Primary key for order.
{% enddocs %}

{% docs stg_customer %}
Staged customer data from our jaffle shop app.
{% enddocs %}

{% docs foreign_key %}
Foreign key to stg_customers.customer_id
{% enddocs %}