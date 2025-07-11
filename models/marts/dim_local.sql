with
    dim_local as (
    select *
    from {{ ref('int_local') }}
)
select * from dim_local