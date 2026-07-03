with source as (
    select * from {{ ref('bronze_trips') }}
)

select
    *
from
    source