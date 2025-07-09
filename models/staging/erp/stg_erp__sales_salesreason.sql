with 

source as (

    select * from {{ source('erp', 'sales_salesreason') }}

),

renamed as (

    select
          salesreasonid as id_razao_pedido
        , name as nome_razao
        , reasontype as tipo_razao
        -- modifieddate

    from source

)

select * from renamed
