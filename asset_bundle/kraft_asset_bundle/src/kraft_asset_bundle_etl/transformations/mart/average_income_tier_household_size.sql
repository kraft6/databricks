-- Please edit the sample below

CREATE MATERIALIZED VIEW  average_income_tier_household_size AS
SELECT 
    `HOUSEHOLD_SIZE`, 
    AVG(`HOUSEHOLD_INCOME_TIER`) AS `average_income_tier`
FROM 
    `workspace`.`kraft6`.`customer_household`
GROUP BY 
    `HOUSEHOLD_SIZE`
ORDER BY 
    `HOUSEHOLD_SIZE`;