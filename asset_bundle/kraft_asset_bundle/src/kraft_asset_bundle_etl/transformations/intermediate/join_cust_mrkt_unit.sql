CREATE OR REFRESH STREAMING TABLE join_cust_mrkt_unit_stream AS
SELECT 
    c.*,
    m.HOUSEHOLD_SIZE, 
    m.HOUSEHOLD_INCOME_TIER,
    m.HOUSEHOLD_TYPE_IND
FROM STREAM(workspace.kraft6.bronze_cust_inc_stream) AS c
LEFT JOIN workspace.kraft6.bronze_mrkt_unit_inc_stream AS m
ON c.MRKT_UNIT_BUSN_ID = m.MRKT_UNIT_BUSN_ID;