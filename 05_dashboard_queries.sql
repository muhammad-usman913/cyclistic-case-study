

-- Chart 1 — Total Rides by Rider Type

SELECT
  rider_type,
  COUNT(*) AS total_rides
FROM `cyclistic-project-496716.bike_rides.cleaned_rides`
GROUP BY rider_type;

-- Chart 2 — Average Ride Duration by Rider Type

SELECT
  rider_type,
  ROUND(AVG(ride_length_seconds)/60, 2) AS avg_ride_minutes
FROM `cyclistic-project-496716.bike_rides.cleaned_rides`
GROUP BY rider_type;

-- Chart 3 — Ride Frequency by Weekday

SELECT
  CASE day_of_week
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'
  END AS day,

  COUNT(CASE WHEN rider_type = 'member' THEN 1 END) AS member,

  COUNT(CASE WHEN rider_type = 'casual' THEN 1 END) AS casual

FROM `cyclistic-project-496716.bike_rides.cleaned_rides`
GROUP BY day_of_week
ORDER BY day_of_week;

-- Chart 4 — Average Ride Duration by Weekday

SELECT
  CASE day_of_week
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'
  END AS day,

  ROUND(
    AVG(CASE WHEN rider_type = 'member'
    THEN ride_length_seconds END)/60, 2
  ) AS member,

  ROUND(
    AVG(CASE WHEN rider_type = 'casual'
    THEN ride_length_seconds END)/60, 2
  ) AS casual

FROM `cyclistic-project-496716.bike_rides.cleaned_rides`
GROUP BY day_of_week
ORDER BY day_of_week;





