with source as (
    select * from {{ ref('bronze_stops') }}
)

select
    *
from
    source