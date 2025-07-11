with 
    vendedores as (
        select *
        from {{ ref('stg_erp__sales_salesperson') }}
    ),

    funcionarios as (
        select *
        from {{ ref('stg_erp__human_resources_employee') }}
    ),

    pessoas as (
        select *
        from {{ ref('stg_erp__person_person') }}
    )

    select
    
          vendedores.id_vendedor as vendedor_pk     
        , pessoas.nome_completo
        , funcionarios.titulo_funcionario
        , funcionarios.data_contratacao
        , DATEDIFF('day', cast(funcionarios.data_contratacao as date), '2014-08-01') as dias_de_casa
    
        from vendedores
        left join funcionarios on vendedores.id_vendedor = funcionarios.id_funcionario
        left join pessoas on vendedores.id_vendedor = pessoas.id_entidade