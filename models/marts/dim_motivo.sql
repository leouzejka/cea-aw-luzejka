with 
    motivo_pedidos as (
        select 
              id_pedido
            , tipo_motivo
            , nome_motivo
        from {{ ref('int_motivo_venda') }}
    )
    select * from motivo_pedidos