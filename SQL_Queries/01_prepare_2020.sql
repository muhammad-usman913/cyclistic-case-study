CREATE OR REPLACE VIEW `cyclistic-project-496716.bike_rides.rides_2020_prepared` AS
SELECT
  ride_id,
  started_at,
  ended_at,

  -- Ride duration in seconds
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS ride_length_seconds,

  -- 1 = Sunday, 7 = Saturday
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,

  member_casual

FROM `cyclistic-project-496716.bike_rides.rides_2020_raw`;
