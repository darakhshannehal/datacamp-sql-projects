# Analyzing Student's Mental Health

Explore and analyze the students data to see how the length of stay impacts the average mental health diagnostic scores of the international students.

#### Data description

| Field Name      | Description                                        |
|-----------------|----------------------------------------------------|
| `inter_dom`     | Types of students (international or domestic)      |
| `japanese_cate` | Japanese language proficiency                      |
| `english_cate`  | English language proficiency                       |
| `academic`      | Current academic level (undergraduate or graduate) |
| `age`           | Current age of student                             |
| `stay`          | Current length of stay in years                    |
| `todep`         | Total score of depression (PHQ-9 test)             |
| `tosc`          | Total score of social connectedness (SCS test)     |
| `toas`          | Total score of acculturative stress (ASISS test)   |

## Analysis Objective

Return a summary table showing how mental health scores vary by length of stay for international students.

-   Return a table with nine rows and five columns.

-   The five columns should be aliased as: stay, count_int, average_phq, average_scs, and average_as, in that order.

-   The average columns should contain the average of the todep (PHQ-9 test), tosc (SCS test), and toas (ASISS test) columns for each length of stay, rounded to two decimal places.

-   The count_int column should be the number of international students for each length of stay.

-   Sort the results by the length of stay in descending order.

## Tools Used

-   **R** with **`DBI`**, **`RSQLite`**, and base functions

-   **SQL** for querying and summarizing data

-   **SQLite** for lightweight local database storage