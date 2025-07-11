with
    vendas_2011 as (
        select sum(faturamento_bruto_item) as total_calculado
        from {{ ref('int_pedidos_itens') }}
        where extract(year from data_pedido) = 2011
    )

select total_calculado
from vendas_2011

where total_calculado not between 12646112.14 and 12646112.18
