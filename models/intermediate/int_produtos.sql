with 
    produtos as (
        select *
        from {{ ref('stg_erp__production_product') }}
    ), 

    categorias as (
        select *
        from {{ ref('stg_erp__production_productcategory') }}
    ), 

    subcategorias as (
        select *
        from {{ ref('stg_erp__production_productsubcategory') }}
    ), 

    joined as (
        select
        --IDs
              produtos.id_produto
            , subcategorias.id_subcategoria
            , categorias.id_categoria

        -- Nomes
            , produtos.nome_produto
            , subcategorias.nome_subcategoria
            , categorias.nome_categoria
            
        -- Outros
            , produtos.custo_padrao

    from produtos

        left join subcategorias on produtos.id_subcategoria = subcategorias.id_subcategoria
        left join categorias on subcategorias.id_categoria = categorias.id_categoria
    )

select * from joined