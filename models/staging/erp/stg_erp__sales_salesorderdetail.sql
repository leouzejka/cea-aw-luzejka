with 

source as (

    select * from {{ source('erp', 'sales_salesorderdetail') }}

),

renamed as (

    select
          salesorderid as id_pedido
        , salesorderdetailid as id_detalhepedido
        , carriertrackingnumber as id_transportadora
        , orderqty as quantidade_pedido
        , productid as id_produto
        , unitprice as preco_unitario
        , unitpricediscount as desconto_por_unidade
        -- specialofferid 
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
