with
    dim_calendario as (
    select 
          data_pk
        , data_completa
        , dia 
        , mes
        , ano
        , nome_mes
    from {{ ref('int_calendario') }}
)
select * from dim_calendario