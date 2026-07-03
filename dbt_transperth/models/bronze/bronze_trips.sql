with source as (
    select * from {{ source('google_transit', 'trips') }}
)

,raw as (
    select
        route_id
        ,service_id
        ,trip_id
        ,direction_id
        ,trip_headsign
        ,shape_id
        ,direction_label
    from
        source
)

select
    *
from
    raw