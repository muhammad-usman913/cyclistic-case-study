CREATE OR REPLACE VIEW `cyclistic-project-496716.bike_rides.all_rides` AS

SELECT
  ride_id,
  started_at,
  ended_at,
  ride_length_seconds,
  day_of_week,
  member_casual
FROM `cyclistic-project-496716.bike_rides.rides_2019_prepared`

UNION ALL

SELECT
  ride_id,
  started_at,
  ended_at,
  ride_length_seconds,
  day_of_week,
  member_casual
FROM `cyclistic-project-496716.bike_rides.rides_2020_prepared`;