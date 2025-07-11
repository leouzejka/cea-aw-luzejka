with 

source as (

    select * from {{ source('erp', 'sales_salesorderdetail') }}

),

renamed as (

    select
          cast(salesorderid as int) as id_pedido
        , cast(salesorderdetailid as int) as id_detalhepedido
        , cast(orderqty as int) as quantidade_item
        , cast(productid as int) as id_produto
        , cast(unitprice as numeric(38, 6)) as preco_unitario
        , cast(unitpricediscount as numeric(18,2))as desconto_por_unidade
        -- carriertrackingnumber
        -- specialofferid 
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
