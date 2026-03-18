

CREATE or Replace MATERIALIZED VIEW customer_household AS
SELECT
    *, 
    kraft_udfs.domain_1.hh_inc_tier(HOUSEHOLD_INCOME_TIER) as household_income_tier_desc,
    kraft_udfs.domain_1.hh_type_ind(HOUSEHOLD_TYPE_IND) as HOUSEHOLD_TYPE_IND_desc,
    kraft_udfs.domain_2.member_type(MEMBER_TYPE) as MEMBER_TYPE_desc,
    kraft_udfs.domain_2.active_type(ACTV_MEM_RLTN_IND_CNT) as ACTV_MEM_RLTN_IND_CNT_desc
FROM workspace.kraft6.join_cust_mrkt_unit_stream;
