## Analyze EV Charging Habits

This project analyzes EV charging session data to help apartment building managers better understand tenants’ charging behaviors.

### Dataset

The `charging_sessions.csv` file contains the following fields:

| Column | Definition | Data Type |
|-------------------|----------------------------------|-------------------|
| garage_id | Identifier for the garage/building | VARCHAR |
| user_id | Identifier for the individual user | VARCHAR |
| user_type | Indicates whether the station is Shared or Private | VARCHAR |
| start_plugin | Date and time the session started | DATETIME |
| start_plugin_hour | Hour (military time) the session started | NUMERIC |
| end_plugout | Date and time the session ended | DATETIME |
| end_plugout_hour | Hour (military time) the session ended | NUMERIC |
| duration_hours | Length of the session in hours | NUMERIC |
| el_kwh | Electricity used (in kilowatt hours) | NUMERIC |
| month_plugin | Month the session started | VARCHAR |
| weekdays_plugin | Day of the week the session started | VARCHAR |

### Analysis Objectives

-   What is the number of unique individuals that use each garage’s shared charging stations?
-   What are the top 10 most popular charging start times (by weekday and start hour) for shared stations?
-   Which users have an average charging duration longer than 10 hours when using shared stations?