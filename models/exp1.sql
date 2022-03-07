with _a1 as 
(

    select
        json_extract_scalar(_airbyte_data, "$['country']") as country,
        json_extract_scalar(_airbyte_data, "$['sys_keyword_id']") as sys_keyword_id,
        _airbyte_ab_id
    from `utopian-cistern-339604`.`abtest`.`_airbyte_raw_test_bigquery_1`
    where 1=1
)
select * from _a1