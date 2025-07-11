with 
    motivos as (
        select *
        from {{ ref('stg_erp__sales_salesreason') }}
), 

    pedido_motivo as (
        select *
        from {{ ref('stg_erp__sales_salesorderheadersalesreason') }}
    ),
    joined as (
        select 
              pedido_motivo.id_pedido 
            , pedido_motivo.id_motivo_pedido
            , motivos.nome_motivo
            , motivos.tipo_motivo

        from pedido_motivo
        left join motivos on pedido_motivo.id_motivo_pedido = motivos.id_motivo_pedido  
    )

    select * from joined