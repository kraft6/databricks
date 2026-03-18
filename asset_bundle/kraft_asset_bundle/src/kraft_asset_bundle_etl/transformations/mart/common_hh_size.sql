-- Please edit the sample below

CREATE MATERIALIZED VIEW common_hh_size AS
SELECT 
    `HOUSEHOLD_SIZE`, 
    COUNT(*) AS `count`
FROM 
    `workspace`.`kraft6`.`customer_household`
GROUP BY 
    `HOUSEHOLD_SIZE`
ORDER BY 
    `count` DESC
;