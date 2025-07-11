with
    dim_cartao as (
    select *
    from {{ ref('int_cartao') }}
)
select * from dim_cartao