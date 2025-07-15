with
    dim_produtos as (
    select 
          produto_pk
        , nome_produto
        , nome_categoria
        , custo_padrao
    from {{ ref('int_produtos') }}
)
select * from dim_produtos