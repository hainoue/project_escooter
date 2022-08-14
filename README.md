# Introduction
This is a documentation for the data analysis project I completed as a part of Google Data Analytics Professional Certificate. 

## Statement of Purpose
This project aimed to analyze public/open data about electric scooter usage to find key characteristics, and correlation with public transportation and weather.

## Background
As we saw more and more electric scooters (e-scooters) or rental bikes (or electric bikes) in our daily basis, it is becoming a common way of transportation--often, referred to micromobility. [Study](https://www.wired.com/story/e-scooter-micromobility-infographics-cost-emissions/) shows the micromobility is a solution to the environmental problems since they are more sustainable and efficient compared to conventional vehicles. For example, fueling cost of e-scooter is simply 1.6% of conventional vehicles. 
However, as the name of micromobility suggests, e-scooters are not designed for long distance trips. It often used to transport between other means of public transportation. This study tried to catch how e-scooters were used in the city setting where other transportation system such as bus and metro exists. 

## Metrics
1. Map of the city of Chicago with its communities shown visualizes data of e-scooter usage
2. Correlation of Chicago's public transportation system and e-scooter usage is visualized
3. Correlation of Chicago's weather history and e-scooter trip counts is visualized

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
  - Start date and end date are same for 476049 data of 630816 total data. Decided to use only the date part and save as TripDate.
  - Start community area name and end community area name cannot be null. Eliminated all the null data.
  - Verified there are no null data in the fields included for final data.
- National Weather Service Data: 
  - Modified the table by deleting unnecessary fields -- final table is with date, average temperature, precipitation, new snow, and snow depth.
  - "T" standing for trace--meaning less than the 0.01 inch measured for rain and snow. Decided to change it to 0.
- CTA Ridership Data 
  - The field of "beggining month" changed from 'yyyy-mm-dd' to 'yyyy-mm' format, since dd is always 01, in order to make a connection with existing data.

## Software Used
- SQL
  - Since the most of data consists more than 10,000 rows, SQL can organize it faster than the spreadsheet
  - [Sample Code](/sample.sql)
- Excel
  - National Weather Service database did not provide csv file. Manually copied and pasted the dataset from website to Excel spreadsheet. 
## Cleaned Data
[Processed Data files](/Data_Cleaned)
# Data Analysis
- Community area witout rail stations tend to use e-scooter longer time/distance.
- Community area with little bus usage tend to use e-scooter longer time/distance. 
- Almost 70% of trips are started and ended within the same community area.
- Temperature and e-scooter trip count are significantly correlated.
- E-scooter was used more on the weekend compared to weekdays.
- E-scooter was used more in the late afternoon around 3pm to 7pm.

# Data Visualization
[Tableau Public](https://public.tableau.com/views/E-ScooterUsageinChicagofromAug_toDec_in2020/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)

# Conclusion
This project can be a stepping stone for even broader analysis of micomobility usage and can be used by rental e-scooter vendors to make business decisions such as how to distribute their e-scooters and forecasting their usage. Although this project is completed, it still has points of improvement:
1. The data is from August to December in 2020--most recent available open-data. The effect of COVID-19 pandemic should be considered.
2. Datasize is limited, broader data with more months will be required to make more accurate analysis.
3. More detailed metrics are needed and correlation should be presented with numbers. 

Thank you for reading!
