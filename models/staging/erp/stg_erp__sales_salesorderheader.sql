with 

source as (

    select * from {{ source('erp', 'sales_salesorderheader') }}

),

renamed as (

    select
          cast(salesorderid as int) as id_pedido    
        , cast(orderdate as date) as data_pedido
        , cast(duedate as date) as data_limite_entrega
        , cast(shipdate as date) as data_envio
        , cast(status as varchar) as status_pedido
        , cast(onlineorderflag as varchar) as venda_online_flag
        , cast(customerid as int) as id_cliente
        , cast(salespersonid as int) as id_vendedor
        , cast(territoryid as int) as id_territorio
        , cast(shiptoaddressid as int) as id_endereco_envio
        , cast(creditcardid as int) as id_cartao
        , cast(subtotal as numeric(18,2))as subtotal_pedido
        , cast(taxamt as numeric(18,2))as valor_taxa
        , cast(freight as numeric(18,2))as valor_frete
        , cast(totaldue as numeric(18,2))as total_pedido
        -- revisionnumber
        -- creditcardapprovalcode
        -- currencyrateid
        -- shipmethodid
        -- billtoaddressid
        -- purchaseordernumber
        -- accountnumber
        -- comment
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
