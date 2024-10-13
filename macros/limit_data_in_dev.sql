{% macro limit_data_in_dev(column_name, amount_days=3) %}
    {% if target.name == 'default' %}
        where {{ column_name }} >= dateadd('day', - {{ amount_days }}, current_timestamp)
    {% endif %}
{% endmacro %}