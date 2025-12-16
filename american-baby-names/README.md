## Exploring Trends in American Baby Names

This project analyzes American baby name data from the United States Social Security Administration to understand how naming tastes have changed over the past century. The dataset spans 101 years (1920–2020) and includes names given to over 5,000 babies in a given year.

### Dataset

The `baby_names.csv` file contains the following fields:

| Column | Definition | Data Type |
|-------------|------------------------------------|-------------|
| year | Year | INT |
| first_name | First name | VARCHAR |
| sex | Sex of babies given `first_name` | VARCHAR |
| num | Number of babies of `sex` given `first_name` in that `year` | INT |

### Analysis Objectives

-   List the first five names in alphabetical order and classify each as **Classic** (appears in 50+ years) or **Trendy**.\
-   Find the **top 20 male names overall**, and determine how the name *Paul* ranks.\
-   Identify **female names that appeared in both 1920 and 2020**.

### Skills Practiced

-   SQL aggregation (`SUM`, `COUNT`)\
-   Conditional logic with `CASE`\
-   Window functions (`RANK()`)\
-   Filtering with `HAVING`\
-   Query structuring for reproducible analysis