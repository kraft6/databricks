CREATE OR REFRESH STREAMING TABLE bronze_cust_inc_stream AS
WITH batch_info AS (
    SELECT uuid() AS batch_id
)
SELECT
   src.*,
   'kraft_testing'           AS source_system,
   'test_schema'             AS source_schema,
   'cust'                    AS source_table,
   current_timestamp()       AS ingestion_timestamp,
   b.batch_id                AS batch_id,
   'data_migration'          AS workflow_name
FROM STREAM(kraft_testing.test_schema.cust_inc) as src
CROSS JOIN batch_info AS b;

CREATE OR REFRESH STREAMING TABLE bronze_mrkt_unit_inc_stream AS
WITH batch_info AS (
    SELECT uuid() AS batch_id
)
SELECT
   src.*,
   'kraft_testing'           AS source_system,
   'test_schema'             AS source_schema,
   'mrkt_unit'               AS source_table,
   current_timestamp()       AS ingestion_timestamp,
   b.batch_id                AS batch_id,
   'data_migration'          AS workflow_name
FROM STREAM(kraft_testing.test_schema.mrkt_unit_inc) as src
CROSS JOIN batch_info AS b;
