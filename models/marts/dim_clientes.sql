with
    dim_clientes as (
    select *
    from {{ ref('int_clientes') }}
)
select * from dim_clientes