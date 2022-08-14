# Introduction
This is a documentation of the data analysis project I completed as a part of Google Data Analytics Professional Certificate. 

## Statement of Purpose
This project aimed to analyze public/open data about electric scooter usage to find key characteristics, and correlation with public transportation and weather.

## Background
As we see more and more electric scooters (e-scooters) or rental bikes (or electric bikes) on a daily basis, it is becoming a common way of transportation--often referred to micromobility. [This study](https://www.wired.com/story/e-scooter-micromobility-infographics-cost-emissions/) shows that micromobility is a solution to some environmental problems because they are more sustainable and efficient compared to conventional vehicles. For example, fueling costs of e-scooters are only 1.6% of conventional vehicles. 
However, as the name "micromobility" suggests, e-scooters are not designed for long distance trips. They are often used for transit between other means of public transportation. This study visualizes how e-scooters were used in a city setting where other transportation systems such as bus and metro exist. 

## Metrics
1. Map of the city of Chicago with its city districts shown, visualizing usage data of e-scooters
2. Correlation of Chicago's public transportation system and e-scooter usage
3. Correlation of Chicago's weather history and e-scooter trip count

# Data Sources
- Chicago Data Portal
  1. [E-scooter Trips 2020](https://data.cityofchicago.org/Transportation/E-Scooter-Trips-2020/3rse-fbp6/data)
  2. [CTA Bus Stops](https://data.cityofchicago.org/Transportation/CTA-Bus-Stops-kml/84eu-buny)
  3. [CTA Bus Routes](https://data.cityofchicago.org/Transportation/CTA-Bus-Routes-kml/rytz-fq6y)
  4. [CTA Rail Stations](https://data.cityofchicago.org/dataset/CTA-L-Rail-Stations-kml/4qtv-9w43)
  5. [CTA Rail Lines](https://data.cityofchicago.org/Transportation/CTA-L-Rail-Lines-kml/sgbp-qafc)
  6. [Chicago Community Area](https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Community-Areas-current-/cauq-8yn6)
  7. [CTA Bus Ridership](https://data.cityofchicago.org/Transportation/CTA-Ridership-Bus-Routes-Monthly-Day-Type-Averages/bynn-gwxy)
  8. [CTA Rail Ridership](https://data.cityofchicago.org/Transportation/CTA-Ridership-L-Station-Entries-Monthly-Day-Type-A/t2rn-p8d7)
- [National Weather Service](https://www.weather.gov/wrh/Climate?wfo=lot)

# Data Processing
## Cleaning
- E-scooter Trips 2020 Data
  - Start date and end date are the same for 476049 rows of 630816 total rows. Decided to use only the dates and save as TripDate.
  - Start community area name and end community area name cannot be null. Eliminated all the null data.
  - Verified that there are no null data in the fields included for final data.
- National Weather Service Data: 
  - Modified the table by deleting unnecessary fields -- final table has the date, average temperature, precipitation, new snow, and snow depth.
  - "T" standing for trace--meaning less than the 0.01 inch measured for rain and snow. Decided to change "T" to 0.
- CTA Ridership Data 
  - The field of "beginning month" is changed from 'yyyy-mm-dd' to 'yyyy-mm', since dd is always 01, to make a connection with existing data.

## Software Used
- SQL
  - Because most of the data sets consisted of more than 10,000 rows, SQL could organize them faster than the spreadsheet.
  - [Sample Code](/sample.sql)
- Excel
  - The National Weather Service database did not provide a csv file. Manually copied and pasted the dataset from the website to an Excel spreadsheet. 
## Cleaned Data
[Processed Data files](/Data_Cleaned)
# Data Analysis
- Districts witout rail stations tended to use e-scooters for a longer time/distance.
- Districts with little bus usage tended to use e-scooters for a longer time/distance. 
- Almost 70% of trips began and ended within the same district.
- Temperature and e-scooter trip count are significantly correlated.
- E-scooters were used more frequently on weekends compared to weekdays.
- E-scooters were used more frequently in the late afternoon, between 3pm and 7pm.

# Data Visualization
[Tableau Public](https://public.tableau.com/views/E-ScooterUsageinChicagofromAug_toDec_in2020/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)
## User Interactability
- For the first two maps, rail and bus lines can be shown or hidden with the filters on the right.

# Conclusion
This project can be a stepping stone for even broader analyses of micomobility usage and can be applied by rental e-scooter vendors to make business decisions such as how to distribute their e-scooters and forecast their usage. Although this project is completed, it has points of improvement:
1. The data is from August to December, 2020--the most recent available open-data. The effects of the COVID-19 pandemic should be explored.
2. Data size is limited; broader data with a longer timeframe is required to make more accurate analyses.
3. More detailed metrics should have been set and mentioned in the methodology.
4. Incorporating numbers into the correlation visuals would have been helpful for a stronger analysis.

Thank you for reading!
