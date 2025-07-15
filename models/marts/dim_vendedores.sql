with vendedores as (
    select 
        vendedor_pk
        , nome_completo
    from {{ ref('int_vendedores') }}
)
select * from vendedores