
  create or replace   view insurance.analytics.stg_claims
  
  
  
  
  as (
    with raw as (
    select
        claim_id,
        customer_id,
        to_date(date) as claim_date,
        amount::float as amount,
        claim_type,
        is_fraud::boolean as is_fraud
    from insurance.raw.CLAIMS
)
select * from raw
  );

