{% macro limit_data_in_dev(column_name, days_duration=3) %}

{% if target.name == 'dev' %}
where {{ column_name }} >= dateadd('day', {{ days_duration }}, current_timestamp)
{% endif %}
{% endmacro %}