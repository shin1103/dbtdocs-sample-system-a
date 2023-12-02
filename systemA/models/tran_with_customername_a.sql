with customer as (
    select * from {{ source('master', 'customer') }}
),
tran as (
    select * from {{ source('systema', 'tran_table') }}
)
select 
    tran.id,
    tran.value,
    customer.cust_name
from tran
left join customer on
    tran.cust_id = customer.cust_id
