with 
    enderecos as (
        select *
        from {{ ref('stg_erp__person_address') }}
    ),

    estados as (
        select *
        from {{ ref('stg_erp__person_stateprovince') }}
    ),

    paises as (
        select *
        from {{ ref('stg_erp__person_countryregion') }}
    ), 

    joined as (
        select
              enderecos.id_endereco as local_pk
            , enderecos.cidade
            , estados.nome_estado
            , paises.nome_pais

        from enderecos
        left join estados on enderecos.id_estado = estados.id_estado
        left join paises on estados.codigo_pais = paises.codigo_pais
    )

    select * from joined