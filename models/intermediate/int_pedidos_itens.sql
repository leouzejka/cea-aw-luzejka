with 
    pedidos as (
        select *
        from {{ ref('stg_erp__sales_salesorderheader') }}
    ),

    detalhes_pedidos as (
        select *
        from {{ ref('stg_erp__sales_salesorderdetail') }}
    ), 


    joined as (
        select 
        --IDs
              detalhes_pedidos.id_detalhepedido as venda_sk
            , pedidos.id_pedido
            , pedidos.id_cliente
            , pedidos.id_vendedor
            , pedidos.id_territorio
            , pedidos.id_endereco_envio
            , pedidos.id_cartao
        --Datas
            , pedidos.data_pedido
            , pedidos.data_envio
            , pedidos.data_limite_entrega
        --Itens
            , detalhes_pedidos.id_produto
            , detalhes_pedidos.quantidade_item
            , detalhes_pedidos.preco_unitario
            , detalhes_pedidos.desconto_por_unidade
        --Outros
            , pedidos.status_pedido
            , pedidos.venda_online_flag
        --Metricas
            , (detalhes_pedidos.preco_unitario * detalhes_pedidos.quantidade_item) as faturamento_bruto_item
            , (detalhes_pedidos.preco_unitario * detalhes_pedidos.quantidade_item * detalhes_pedidos.desconto_por_unidade) as valor_desconto_item  
            , (detalhes_pedidos.preco_unitario * detalhes_pedidos.quantidade_item * (1 - detalhes_pedidos.desconto_por_unidade)) as faturamento_liquido_item     

        from pedidos
        left join detalhes_pedidos on pedidos.id_pedido = detalhes_pedidos.id_pedido
    )

    select * from joined

