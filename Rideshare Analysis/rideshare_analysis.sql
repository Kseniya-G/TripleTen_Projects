/* SQLite Studio */

/* Exploratory data analysis */
    
/*---- Script to find the number of taxi rides for each taxi company for November 15-16, 2017 ----*/

SELECT
     c.company_name, 
     COUNT(t.trip_id) as trips_amount
FROM 
     cabs c 
    JOIN 
        trips t 
    ON 
        t.cab_id = c.cab_id
WHERE 
    t.start_ts::date IN ('2017-11-15','2017-11-16')
GROUP BY 
        c.company_name 
ORDER BY 
        trips_amount DESC;          



/*---- Script to find the number of rides for every taxi companies whose name contains the words "Yellow" or "Blue" for November 1-7, 2017 ----*/

SELECT
     c.company_name, 
     COUNT(t.trip_id) as trips_amount
FROM 
    cabs c 
    JOIN 
        trips t 
    ON 
        t.cab_id = c.cab_id
WHERE 
    t.start_ts::date >= '2017-11-1' AND t.start_ts::date <='2017-11-7' 
    AND c.company_name LIKE '%Yellow%' 
GROUP BY 
       c.company_name 
UNION ALL
SELECT
     c.company_name, 
     COUNT(t.trip_id) as trips_amount
FROM 
     cabs c 
    JOIN 
         trips t 
    ON 
         t.cab_id = c.cab_id
WHERE     
    t.start_ts::date >= '2017-11-1' AND t.start_ts::date <='2017-11-7'
    AND c.company_name LIKE '%Blue%'
GROUP BY 
       c.company_name 
       
       
       
/*---- Script to find the number of rides for the most popular taxi companies (Flash Cab and Taxi Affiliation Services) and for all other companies for November 1-7, 2017 ----*/

SELECT
     CASE
        WHEN company_name = 'Flash Cab' THEN 'Flash Cab'
        WHEN company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services' 
        ELSE 'Other' 
        END AS company,
COUNT(company_name) AS trips_amount
FROM 
    cabs c
    JOIN 
          trips t 
    ON 
          t.cab_id = c.cab_id
WHERE 
    start_ts::date BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY 
       company
ORDER BY 
       trips_amount DESC;
       


/* Investigate whether the duration of rides from the the Loop to O'Hare International Airport changes on rainy Saturdays */        
                                        
/*---- Script to retrieve the identifiers of the O'Hare and Loop neighborhoods from the neighborhoods table ----*/

SELECT DISTINCT
    neighborhood_id,
    name
FROM neighborhoods
WHERE name LIKE '%Hare' OR name LIKE 'Loop'                                        
           


/*---- Script to retrieve the weather condition records from weather_records table for each hour ----*/

SELECT
     ts,
     CASE 
     WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
     ELSE 'Good'
     END AS weather_conditions
FROM 
    weather_records
GROUP BY
     weather_conditions,
     ts



/*---- Script to retrieve from the trips table all the rides that started in the Loop (pickup_location_id: 50) on a Saturday and ended at O'Hare (dropoff_location_id: 63) and the duration of each ride.----*/

SELECT
      t.start_ts,
     CASE 
     WHEN wr.description LIKE '%rain%' OR wr.description LIKE '%storm%' THEN 'Bad'
     ELSE 'Good'
     END AS weather_conditions,
     t.duration_seconds
FROM 
    trips t
         JOIN 
             weather_records wr
         ON 
             wr.ts = t.start_ts
WHERE 
      t.pickup_location_id = 50 AND
      t.dropoff_location_id = 63 AND
      EXTRACT(ISODOW FROM t.start_ts) = 6
ORDER BY
       t.trip_id;
        