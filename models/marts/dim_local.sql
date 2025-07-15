with
    dim_local as (
    select
          local_pk
        , cidade
        , nome_estado
        , nome_pais
    from {{ ref('int_local') }}
)
select * from dim_local