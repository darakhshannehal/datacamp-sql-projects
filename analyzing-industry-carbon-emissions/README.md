## Analyzing Industry Carbon Emissions

The goal of this analysis is to identify and compare the total carbon impact across different industries in the most recent year available in the dataset.

### Dataset Schema

The `product_emissions.csv` file contains the following fields:

| Field                        | Data Type |
|------------------------------|-----------|
| id                           | VARCHAR   |
| year                         | INT       |
| product_name                 | VARCHAR   |
| company                      | VARCHAR   |
| country                      | VARCHAR   |
| industry_group               | VARCHAR   |
| weight_kg                    | NUMERIC   |
| carbon_footprint_pcf         | NUMERIC   |
| upstream_percent_total_pcf   | VARCHAR   |
| operations_percent_total_pcf | VARCHAR   |
| downstream_percent_total_pcf | VARCHAR   |

## Analysis Objective

Find the number of unique companies and their total carbon footprint PCF for each industry group, filtering for the most recent year in the database.

The query should return three columns: industry_group, num_companies, and total_industry_footprint, with the last column being rounded to one decimal place. The results should be sorted by total_industry_footprint from highest to lowest values.