-- Script to find number of trips per community per hour
SELECT 
  StartArea,
  StartTime,
  COUNT(ID) as NumberOfTrips
FROM
-- Modified table with needed fields only
  (SELECT 
    TripID as ID,
    left(StartTime,10) as StartTime,  -- Eliminating 'AM' and 'PM' string because they're not standard format
    TripDistance as TripDist,
    TripDuration/60 as TripDur,       -- Original was in seconds and hard to get the idea
    StartCommunityAreaName as StartArea,
    EndCommunityAreaName as EndArea
  FROM `capstoneproject-357619.escooter_chicago.trips2020`
  -- not including rows with empty area-name
  WHERE StartCommunityAreaName IS NOT NULL AND EndCommunityAreaName IS NOT NULL
  )
-- Grouping with area it started and time it started respectively
GROUP BY StartArea, StartTime

-- To preveiw, use the following line
-- LIMIT 10
