-- singular test
select
    total_amount_paid
from {{ ref('int_orders') }}
where total_amount_paid <= 5.0