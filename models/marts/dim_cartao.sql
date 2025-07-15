with
    dim_cartao as (
    select 
          cartao_pk
        , tipo_cartao
    from {{ ref('int_cartao') }}
)
select * from dim_cartao