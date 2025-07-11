with
    dim_produtos as (
    select *
    from {{ ref('int_produtos') }}
)
select * from dim_produtos