-- Export the product_emissions DataFrame to a CSV file
-- product_emissions.to_csv('product_emissions.csv', index=False)

SELECT 
    industry_group,
    COUNT(DISTINCT company) AS num_companies,
    ROUND(SUM(carbon_footprint_pcf), 1) AS total_industry_footprint
FROM product_emissions
WHERE year = (SELECT MAX(year) FROM product_emissions)
GROUP BY industry_group
ORDER BY total_industry_footprint DESC;