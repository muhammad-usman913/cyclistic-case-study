CREATE OR REPLACE VIEW `cyclistic-project-496716.bike_rides.cleaned_rides` AS

SELECT
  ride_id,
  started_at,
  ended_at,
  ride_length_seconds,
  day_of_week,

  CASE
    WHEN member_casual IN ('Subscriber', 'member') THEN 'member'
    WHEN member_casual IN ('Customer', 'casual') THEN 'casual'
  END AS rider_type

FROM `cyclistic-project-496716.bike_rides.all_rides`

WHERE
  ride_length_seconds > 0
  AND ride_length_seconds < 86400;