CREATE OR REPLACE VIEW `cyclistic-project-496716.bike_rides.rides_2019_prepared` AS
SELECT
  CAST(trip_id AS STRING) AS ride_id,

  start_time AS started_at,
  end_time AS ended_at,

  -- Ride duration in seconds
  TIMESTAMP_DIFF(end_time, start_time, SECOND) AS ride_length_seconds,

  -- 1 = Sunday, 7 = Saturday
  EXTRACT(DAYOFWEEK FROM start_time) AS day_of_week,

  usertype AS member_casual

FROM `cyclistic-project-496716.bike_rides.rides_2019_raw`;
