## Analyze International Debt Statistics

This project analyzes international debt data collected by The World Bank. The dataset contains information about the amount of debt (in USD) owed by developing countries across several categories.

### Dataset

The `international_debt.csv` file contains the following fields:

| Column | Definition | Data Type |
|------------------|-------------------------------------|------------------|
| country_name | Name of the country | VARCHAR |
| country_code | Code representing the country | VARCHAR |
| indicator_name | Description of the debt indicator | VARCHAR |
| indicator_code | Code representing the debt indicator | VARCHAR |
| debt | Value of the debt indicator for the given country (in current US dollars) | FLOAT |

### Data Preparation (Python)

The dataset was downloaded and saved locally as a CSV file:

``` python
import pandas as pd

# Load data 
international_debt = pd.read_csv("international_debt.csv")

# Save to local CSV
international_debt.to_csv("international_debt.csv", index=False)
```

### Analysis Objective

-   What is the number of distinct countries present in the database?

-   What country has the highest amount of debt?

-   What country has the lowest amount of repayments?