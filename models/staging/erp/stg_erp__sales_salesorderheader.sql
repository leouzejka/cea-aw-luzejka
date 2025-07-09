with 

source as (

    select * from {{ source('erp', 'sales_salesorderheader') }}

),

renamed as (

    select
          salesorderid as id_pedido    
        , orderdate as data_pedido
        , duedate as data_limite_entrega
        , shipdate as data_envio
        , status as status_pedido
        , onlineorderflag as venda_online_flag
        , customerid as id_cliente
        , salespersonid as id_vendedor
        , territoryid as id_territorio
        , shiptoaddressid as id_endereco_envio
        , creditcardid as id_cartao
        , subtotal as subtotal_pedido
        , taxamt as valor_taxa
        , freight as valor_frete
        , totaldue as total_pedido
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
