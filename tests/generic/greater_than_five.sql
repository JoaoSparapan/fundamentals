-- generic test
{% test greater_than_five(model_name, column_name) %}

select
    {{ column_name }}
from {{ model_name }}
where {{ column_name }} <= 5

{% endtest %}