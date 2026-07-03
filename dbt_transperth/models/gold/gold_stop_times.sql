with stop_times as (
    select * from {{ ref('silver_stop_times') }}
)

,trips as (
    select * from {{ ref('silver_trips') }}
)

,stops as (
    select * from {{ ref('silver_stops') }}
)

select
    t.trip_headsign
    ,t.direction_label
    ,s.stop_name
    ,s.supported_modes
    ,st.arrival_time
    ,st.departure_time
    ,s.stop_lat
    ,s.stop_lon
    -- ,f.fare_amount
from
    stop_times st
    left join trips t on st.trip_id = t.trip_id
    left join stops s on st.stop_id = s.stop_id
    -- left join fare_attributes f on st.fare = f.fare_id