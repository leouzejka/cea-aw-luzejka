with 

source as (

    select * from {{ source('erp', 'sales_salesorderdetail') }}

),

renamed as (

    select
          cast(salesorderid as int) as id_pedido
        , cast(salesorderdetailid as int) as id_detalhepedido
        , cast(carriertrackingnumber as int) as id_transportadora
        , cast(orderqty as int) as quantidade_pedido
        , cast(productid as int) as id_produto
        , cast(unitprice as numeric(18,2))as preco_unitario
        , cast(unitpricediscount as numeric(18,2))as desconto_por_unidade
        -- specialofferid 
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
