# Flight_Price_Analysis
@ Authors: Pranjal Shrestha and Riley Fowler

### Overview
As students at Centre College with a passion for travel but limited budgets, we aimed to identify the cheapest travel times, destinations, and airlines. We analyzed flight data from NYC to Paris and Moscow for February, March, and April 2022 using **R** to answer:

1. **When is it cheapest to fly?**
2. **Is it cheaper to fly to Paris or Moscow?**
3. **Is American Airlines or United Airlines cheaper?**

![download](https://github.com/pranjalshrestha/Flight_Price_Analysis/assets/135492582/c7b401dc-c0c9-42cb-aff0-ac45616fc742)

### Data
We used a dataset from Kayak, collected by a web scraper, including airline, duration, stops, price, and dates for flights from NYC to Paris and Moscow. Data was cleaned in Python and analyzed in R-Studio.

### Findings
- **Cheapest Month**: February had the lowest average flight prices, followed by March and April.
- **Cheapest Destination**: Flights to Paris were cheaper than flights to Moscow.
- **Cheapest Airline**: American Airlines was generally cheaper than United Airlines for both destinations.
Analysis

We performed hypothesis tests to compare mean flight prices:
- **February vs. March**: February flights were significantly cheaper.
- **March vs. April**: March flights were significantly cheaper.
- **February vs. April**: February flights were significantly cheaper.
- **NYC to Paris vs. Moscow**: Flights to Paris were significantly cheaper.
- **American Airlines vs. United Airlines**: American Airlines was significantly cheaper for both destinations.

### Recommendations
For the lowest costs, travel from NYC to Paris in February on American Airlines. We assume 2024 prices follow similar trends to 2022.

### Limitations
- Data limited to three months, two destinations, and two airlines.
- Independent tests for month, destination, and airline; combined effect not analyzed.
- Results may lack practical significance despite statistical significance.
- Outliers could skew results.

### Future Work
Expand analysis to more destinations, airlines, and months. Consider additional variables like weekday and flight duration. Remove outliers for cleaner results.


### Bibliography
Alamr, Meshal. “Flight Price Prediction.” GitHub, 1 Nov. 2021, github.com/MeshalAlamr/flight-price-prediction.





