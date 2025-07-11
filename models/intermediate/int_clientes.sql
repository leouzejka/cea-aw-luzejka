with 
    clientes as (
    
        select *
        from {{ ref('stg_erp__sales_customer') }}
    ), 

    pessoas as (
        select *
        from {{ ref('stg_erp__person_person') }}

    ), 

    joined as (
        select
              clientes.id_cliente as cliente_pk
            , pessoas.id_entidade
            , clientes.id_loja
            , pessoas.tipo_pessoa
            , pessoas.nome_completo
        from clientes 
        left join pessoas on clientes.id_pessoa = pessoas.id_entidade

    )

select * from joined
    