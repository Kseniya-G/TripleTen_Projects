# Data Collection and Storage (SQL)

# Ride-Sharing Analysis for Zuber Chicago


## Description of the Project:
In this project, we'll be assisting Zuber, a new ride-sharing company about to launch in Chicago. Our role as analysts is to examine data from competitors in the ride-sharing industry and investigate a hypothesis related to how weather conditions may influence ride frequency.

## Project Goal:
The goal of the project is to find patterns in the available information and understand passenger preferences and the impact of external factors on rides.

### Tools and Libraries:
-	SQLite Studio

## Data Documentation:

`neighborhoods` table - data on city neighborhoods:
- `'name'` -  name of the neighborhood
- `'neighborhood_id'` -  neighborhood code

`cabs` table - data on taxis:
- `'cab_id'` - vehicle code
- `'vehicle_id'` - the vehicle's technical ID
- `'company_name'` - the company that owns the vehicle

`trips` table: - data on rides:
- `'trip_id'` - ride code
- `'cab_id'` - code of the vehicle operating the ride
- `'start_ts'` date and time of the beginning of the ride (time rounded to the hour)
- `'end_ts'` date and time of the end of the ride (time rounded to the hour)
- `'duration_seconds'` ride duration in seconds
- `'distance_miles'` - ride distance in miles
- `'pickup_location_id'` -  pickup neighborhood code
- `'dropoff_location_id'` -  dropoff neighborhood code

`weather_records` table - data on weather:
- `'record_id'` - weather record code
- `'ts'` - record date and time (time rounded to the hour)
- `'temperature'` - temperature when the record was taken
- `'description'` - brief description of weather conditions, e.g. "light rain" or "scattered clouds"

## Workbook Preview:
![Rideshare Analysis](https://github.com/Kseniya-G/TripleTen_Projects/blob/main/SQL%20-%20Rideshare%20Analysis/Pics/1.png)

![Rideshare Analysis](https://github.com/Kseniya-G/TripleTen_Projects/blob/main/SQL%20-%20Rideshare%20Analysis/Pics/2.png)

![Rideshare Analysis](https://github.com/Kseniya-G/TripleTen_Projects/blob/main/SQL%20-%20Rideshare%20Analysis/Pics/3.png)

## Conclusions
1. Flash Cab is the most popular taxi company in Chicago, doing twice as many trips as the next one, Taxi Affiliation Services. Zuber should look into how Flash Cab achieves this success, maybe by getting advice from someone who knows the local taxi business. 
2. Chicago taxis can be any color, but many choose colors for easy recognition. "Yellow" is a common choice, originating in Chicago and popular in other cities. Zuber should consider hiring drivers with colors used by trusted companies, like Blue/white for Flash Cab or the regular yellow.
3. Weather affects trip duration, with bad weather making trips longer. Longer trips mean cabs are busy for a while, leading to less availability. Zuber needs to think about how to adjust prices based on the weather.
