with source as (
    select * from {{ ref('bronze_stop_times') }}
)

select
    trip_id
    ,SAFE_CAST(arrival_time AS TIME) AS arrival_time
    ,SAFE_CAST(departure_time AS TIME) AS departure_time
    ,stop_id
    ,stop_sequence
    ,pickup_type
    ,drop_off_type
    ,timepoint
    ,fare
    ,zone
    ,section
from
    source