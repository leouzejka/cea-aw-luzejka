with 
    pedidos_itens as (
        select *
        from {{ ref('int_pedidos_itens') }}
    ),

    dim_clientes as (
        select *
        from {{ ref('dim_clientes') }}
    ),

    dim_produtos as (
        select *
        from {{ ref('dim_produtos') }}
    ),

    dim_local as (
        select *
        from {{ ref('dim_local') }}
    ),
    
    dim_calendario as (
        select *
        from {{ ref('dim_calendario') }}
    ),

    dim_cartao as (
        select *
        from {{ ref('dim_cartao') }}
    ), 

    dim_vendedores as (
        select *
        from {{ ref('dim_vendedores') }}
    )

select
    
      dim_clientes.cliente_pk
    , dim_produtos.produto_pk
    , dim_local.local_pk
    , dim_calendario.data_pk
    , dim_cartao.cartao_pk
    , dim_vendedores.vendedor_pk
    , pedidos_itens.venda_sk
    , pedidos_itens.id_pedido
    , pedidos_itens.quantidade_item
    , pedidos_itens.faturamento_bruto_item
    , pedidos_itens.valor_desconto_item
    , pedidos_itens.faturamento_liquido_item

from 
    pedidos_itens as pedidos_itens

left join dim_clientes on pedidos_itens.id_cliente = dim_clientes.cliente_pk
left join dim_produtos on pedidos_itens.id_produto = dim_produtos.produto_pk
left join dim_local on pedidos_itens.id_endereco_envio = dim_local.local_pk
left join dim_calendario on cast(TO_VARCHAR(pedidos_itens.data_pedido, 'YYYYMMDD') as int) = dim_calendario.data_pk
left join dim_cartao on pedidos_itens.id_cartao = dim_cartao.cartao_pk
left join dim_vendedores on pedidos_itens.id_vendedor = dim_vendedores.vendedor_pk