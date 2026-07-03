with source as (
    select * from {{ source('google_transit', 'calendar_dates') }}
)

,raw as (
    select
        service_id
        ,date
        ,exception_type
        ,exception_label
    from
        source
)

select
    *
from
    raw