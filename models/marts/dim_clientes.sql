with
    dim_clientes as (
    select 
          cliente_pk
        , id_entidade
        , id_loja
        , tipo_pessoa
        , nome_completo
    from {{ ref('int_clientes') }}
)
select * from dim_clientes